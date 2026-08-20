package org.apache.mina.util;

import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.mina.common.Session;
/* loaded from: classes5.dex */
public abstract class BaseThreadPool implements ThreadPool {
    public static final int DEFAULT_KEEP_ALIVE_TIME = 60000;
    public static final int DEFAULT_MAXIMUM_POOL_SIZE = Integer.MAX_VALUE;
    private static volatile int threadId;
    private Worker leader;
    private int poolSize;
    private boolean shuttingDown;
    private boolean started;
    private final Map buffers = new IdentityHashMap();
    private final Stack followers = new Stack();
    private final BlockingSet readySessionBuffers = new BlockingSet();
    private final Set busySessionBuffers = new HashSet();
    private int maximumPoolSize = Integer.MAX_VALUE;
    private int keepAliveTime = 60000;
    private final Object poolSizeLock = new Object();

    protected abstract void processEvent(Object obj, Session session, EventType eventType, Object obj2);

    static /* synthetic */ int access$408() {
        int i = threadId;
        threadId = i + 1;
        return i;
    }

    @Override // org.apache.mina.util.ThreadPool
    public int getPoolSize() {
        int i;
        synchronized (this.poolSizeLock) {
            i = this.poolSize;
        }
        return i;
    }

    @Override // org.apache.mina.util.ThreadPool
    public int getMaximumPoolSize() {
        return this.maximumPoolSize;
    }

    @Override // org.apache.mina.util.ThreadPool
    public int getKeepAliveTime() {
        return this.keepAliveTime;
    }

    @Override // org.apache.mina.util.ThreadPool
    public void setMaximumPoolSize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException();
        }
        this.maximumPoolSize = i;
    }

    @Override // org.apache.mina.util.ThreadPool
    public void setKeepAliveTime(int i) {
        this.keepAliveTime = i;
    }

    @Override // org.apache.mina.util.ThreadPool
    public synchronized void start() {
        if (this.started) {
            return;
        }
        this.shuttingDown = false;
        Worker worker = new Worker();
        this.leader = worker;
        worker.start();
        this.leader.lead();
        this.started = true;
    }

    @Override // org.apache.mina.util.ThreadPool
    public synchronized void stop() {
        if (!this.started) {
            return;
        }
        this.shuttingDown = true;
        Worker worker = null;
        while (true) {
            Worker worker2 = this.leader;
            if (worker != worker2) {
                while (worker2.isAlive()) {
                    worker2.interrupt();
                    try {
                        worker2.join();
                    } catch (InterruptedException unused) {
                    }
                }
                worker = worker2;
            } else {
                this.started = false;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void increasePoolSize() {
        synchronized (this.poolSizeLock) {
            this.poolSize++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decreasePoolSize() {
        synchronized (this.poolSizeLock) {
            this.poolSize--;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fireEvent(Object obj, Session session, EventType eventType, Object obj2) {
        BlockingSet blockingSet = this.readySessionBuffers;
        Set set = this.busySessionBuffers;
        SessionBuffer sessionBuffer = getSessionBuffer(session);
        Queue queue = sessionBuffer.eventQueue;
        Event event = new Event(eventType, obj, obj2);
        synchronized (sessionBuffer) {
            queue.push(event);
        }
        synchronized (blockingSet) {
            if (!set.contains(sessionBuffer)) {
                set.add(sessionBuffer);
                blockingSet.add(sessionBuffer);
            }
        }
    }

    private SessionBuffer getSessionBuffer(Session session) {
        Map map = this.buffers;
        SessionBuffer sessionBuffer = (SessionBuffer) map.get(session);
        if (sessionBuffer == null) {
            synchronized (map) {
                sessionBuffer = (SessionBuffer) map.get(session);
                if (sessionBuffer == null) {
                    sessionBuffer = new SessionBuffer(session);
                    map.put(session, sessionBuffer);
                }
            }
        }
        return sessionBuffer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSessionBuffer(SessionBuffer sessionBuffer) {
        Map map = this.buffers;
        Session session = sessionBuffer.session;
        synchronized (map) {
            map.remove(session);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class SessionBuffer {
        private final Queue eventQueue;
        private final Session session;

        private SessionBuffer(Session session) {
            this.eventQueue = new Queue();
            this.session = session;
        }
    }

    /* loaded from: classes5.dex */
    private class Worker extends Thread {
        private final Object promotionLock;

        private Worker() {
            super(new StringBuffer("IoThreadPool-").append(BaseThreadPool.access$408()).toString());
            this.promotionLock = new Object();
            BaseThreadPool.this.increasePoolSize();
        }

        public void lead() {
            Object obj = this.promotionLock;
            synchronized (obj) {
                BaseThreadPool.this.leader = this;
                obj.notify();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (waitForPromotion()) {
                SessionBuffer fetchBuffer = fetchBuffer();
                giveUpLead();
                if (fetchBuffer == null) {
                    break;
                }
                processEvents(fetchBuffer);
                follow();
                releaseBuffer(fetchBuffer);
            }
            BaseThreadPool.this.decreasePoolSize();
        }

        private SessionBuffer fetchBuffer() {
            SessionBuffer sessionBuffer;
            Iterator it;
            BlockingSet blockingSet = BaseThreadPool.this.readySessionBuffers;
            synchronized (blockingSet) {
                do {
                    try {
                        try {
                            blockingSet.waitForNewItem();
                            it = blockingSet.iterator();
                        } catch (InterruptedException unused) {
                        }
                        if (!it.hasNext()) {
                            sessionBuffer = null;
                            break;
                        }
                        do {
                            sessionBuffer = (SessionBuffer) it.next();
                            it.remove();
                            if (sessionBuffer == null || !sessionBuffer.eventQueue.isEmpty()) {
                                break;
                            }
                        } while (it.hasNext());
                        if (sessionBuffer == null) {
                            break;
                        }
                    } finally {
                    }
                } while (sessionBuffer.eventQueue.isEmpty());
            }
            return sessionBuffer;
        }

        private void processEvents(SessionBuffer sessionBuffer) {
            Event event;
            Session session = sessionBuffer.session;
            Queue queue = sessionBuffer.eventQueue;
            while (true) {
                synchronized (sessionBuffer) {
                    event = (Event) queue.pop();
                    if (event == null) {
                        return;
                    }
                }
                BaseThreadPool.this.processEvent(event.getNextFilter(), session, event.getType(), event.getData());
            }
        }

        private void follow() {
            Object obj = this.promotionLock;
            Stack stack = BaseThreadPool.this.followers;
            synchronized (obj) {
                if (this != BaseThreadPool.this.leader) {
                    synchronized (stack) {
                        stack.push(this);
                    }
                }
            }
        }

        private void releaseBuffer(SessionBuffer sessionBuffer) {
            BlockingSet blockingSet = BaseThreadPool.this.readySessionBuffers;
            Set set = BaseThreadPool.this.busySessionBuffers;
            Queue queue = sessionBuffer.eventQueue;
            synchronized (blockingSet) {
                set.remove(sessionBuffer);
                if (queue.isEmpty()) {
                    BaseThreadPool.this.removeSessionBuffer(sessionBuffer);
                } else {
                    blockingSet.add(sessionBuffer);
                }
            }
        }

        private boolean waitForPromotion() {
            boolean z;
            Object obj = this.promotionLock;
            synchronized (obj) {
                if (this != BaseThreadPool.this.leader) {
                    try {
                        int keepAliveTime = BaseThreadPool.this.getKeepAliveTime();
                        if (keepAliveTime > 0) {
                            obj.wait(keepAliveTime);
                        } else {
                            obj.wait();
                        }
                    } catch (InterruptedException unused) {
                    }
                }
                z = this == BaseThreadPool.this.leader;
                if (!z) {
                    synchronized (BaseThreadPool.this.followers) {
                        BaseThreadPool.this.followers.remove(this);
                    }
                }
            }
            return z;
        }

        private void giveUpLead() {
            Worker worker;
            Stack stack = BaseThreadPool.this.followers;
            synchronized (stack) {
                worker = (Worker) stack.pop();
            }
            if (worker == null) {
                if (BaseThreadPool.this.shuttingDown) {
                    return;
                }
                synchronized (BaseThreadPool.this) {
                    if (!BaseThreadPool.this.shuttingDown && BaseThreadPool.this.getPoolSize() < BaseThreadPool.this.getMaximumPoolSize()) {
                        Worker worker2 = new Worker();
                        worker2.start();
                        worker2.lead();
                    }
                }
                return;
            }
            worker.lead();
        }
    }
}
