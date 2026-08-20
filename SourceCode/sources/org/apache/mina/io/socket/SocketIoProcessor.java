package org.apache.mina.io.socket;

import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.common.SessionConfig;
import org.apache.mina.io.WriteTimeoutException;
import org.apache.mina.util.Queue;
/* loaded from: classes4.dex */
class SocketIoProcessor {
    private static final SocketIoProcessor instance;
    private Worker worker;
    private final Queue newSessions = new Queue();
    private final Queue removingSessions = new Queue();
    private final Queue flushingSessions = new Queue();
    private final Queue readableSessions = new Queue();
    private long lastIdleCheckTime = System.currentTimeMillis();
    private final Selector selector = Selector.open();

    static {
        try {
            instance = new SocketIoProcessor();
        } catch (IOException e2) {
            InternalError internalError = new InternalError("Failed to open selector.");
            internalError.initCause(e2);
            throw internalError;
        }
    }

    private SocketIoProcessor() throws IOException {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SocketIoProcessor getInstance() {
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addSession(SocketSession socketSession) {
        synchronized (this) {
            synchronized (this.newSessions) {
                this.newSessions.push(socketSession);
            }
            startupWorker();
        }
        this.selector.wakeup();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeSession(SocketSession socketSession) {
        scheduleRemove(socketSession);
        startupWorker();
        this.selector.wakeup();
    }

    private synchronized void startupWorker() {
        if (this.worker == null) {
            Worker worker = new Worker();
            this.worker = worker;
            worker.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void flushSession(SocketSession socketSession) {
        scheduleFlush(socketSession);
        this.selector.wakeup();
    }

    void addReadableSession(SocketSession socketSession) {
        synchronized (this.readableSessions) {
            this.readableSessions.push(socketSession);
        }
        this.selector.wakeup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSessions() {
        SocketSession socketSession;
        if (this.newSessions.isEmpty()) {
            return;
        }
        while (true) {
            synchronized (this.newSessions) {
                socketSession = (SocketSession) this.newSessions.pop();
            }
            if (socketSession == null) {
                return;
            }
            SocketChannel channel = socketSession.getChannel();
            try {
                channel.configureBlocking(false);
                socketSession.setSelectionKey(channel.register(this.selector, 1, socketSession));
                socketSession.getManagerFilterChain().sessionOpened(socketSession);
            } catch (IOException e2) {
                socketSession.getManagerFilterChain().exceptionCaught(socketSession, e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSessions() {
        SocketSession socketSession;
        if (this.removingSessions.isEmpty()) {
            return;
        }
        while (true) {
            synchronized (this.removingSessions) {
                socketSession = (SocketSession) this.removingSessions.pop();
            }
            if (socketSession == null) {
                return;
            }
            SocketChannel channel = socketSession.getChannel();
            SelectionKey selectionKey = socketSession.getSelectionKey();
            if (selectionKey.isValid()) {
                try {
                    try {
                        selectionKey.cancel();
                        channel.close();
                    } catch (IOException e2) {
                        socketSession.getManagerFilterChain().exceptionCaught(socketSession, e2);
                    }
                } finally {
                    releaseWriteBuffers(socketSession);
                    socketSession.getManagerFilterChain().sessionClosed(socketSession);
                    socketSession.notifyClose();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processSessions(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            SelectionKey selectionKey = (SelectionKey) it.next();
            SocketSession socketSession = (SocketSession) selectionKey.attachment();
            if (selectionKey.isReadable()) {
                read(socketSession);
            }
            if (selectionKey.isWritable()) {
                scheduleFlush(socketSession);
            }
        }
        set.clear();
    }

    private void read(SocketSession socketSession) {
        int read;
        ByteBuffer allocate = ByteBuffer.allocate(((SocketSessionConfig) socketSession.getConfig()).getSessionReceiveBufferSize());
        SocketChannel channel = socketSession.getChannel();
        try {
            allocate.clear();
            int i = 0;
            while (true) {
                read = channel.read(allocate.buf());
                if (read <= 0) {
                    break;
                }
                i += read;
            }
            allocate.flip();
            socketSession.increaseReadBytes(i);
            socketSession.setIdle(IdleStatus.BOTH_IDLE, false);
            socketSession.setIdle(IdleStatus.READER_IDLE, false);
            if (i > 0) {
                ByteBuffer allocate2 = ByteBuffer.allocate(i);
                allocate2.put(allocate);
                allocate2.flip();
                socketSession.getManagerFilterChain().dataRead(socketSession, allocate2);
            }
            if (read < 0) {
                scheduleRemove(socketSession);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    private void scheduleRemove(SocketSession socketSession) {
        synchronized (this.removingSessions) {
            this.removingSessions.push(socketSession);
        }
    }

    private void scheduleFlush(SocketSession socketSession) {
        synchronized (this.flushingSessions) {
            this.flushingSessions.push(socketSession);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyIdleSessions() {
        Set<SelectionKey> keys = this.selector.keys();
        long currentTimeMillis = System.currentTimeMillis();
        if (keys == null || currentTimeMillis - this.lastIdleCheckTime < 1000) {
            return;
        }
        this.lastIdleCheckTime = currentTimeMillis;
        for (SelectionKey selectionKey : keys) {
            notifyIdleSession((SocketSession) selectionKey.attachment(), currentTimeMillis);
        }
    }

    private void notifyIdleSession(SocketSession socketSession, long j) {
        SessionConfig config = socketSession.getConfig();
        notifyIdleSession0(socketSession, j, config.getIdleTimeInMillis(IdleStatus.BOTH_IDLE), IdleStatus.BOTH_IDLE, socketSession.getLastIoTime());
        notifyIdleSession0(socketSession, j, config.getIdleTimeInMillis(IdleStatus.READER_IDLE), IdleStatus.READER_IDLE, socketSession.getLastReadTime());
        notifyIdleSession0(socketSession, j, config.getIdleTimeInMillis(IdleStatus.WRITER_IDLE), IdleStatus.WRITER_IDLE, socketSession.getLastWriteTime());
        notifyWriteTimeoutSession(socketSession, j, config.getWriteTimeoutInMillis(), socketSession.getLastWriteTime());
    }

    private void notifyIdleSession0(SocketSession socketSession, long j, long j2, IdleStatus idleStatus, long j3) {
        if (j2 <= 0 || socketSession.isIdle(idleStatus) || j3 == 0 || j - j3 < j2) {
            return;
        }
        socketSession.setIdle(idleStatus, true);
        socketSession.getManagerFilterChain().sessionIdle(socketSession, idleStatus);
    }

    private void notifyWriteTimeoutSession(SocketSession socketSession, long j, long j2, long j3) {
        if (j2 <= 0 || j - j3 < j2 || (socketSession.getSelectionKey().interestOps() & 4) == 0) {
            return;
        }
        socketSession.getManagerFilterChain().exceptionCaught(socketSession, new WriteTimeoutException());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushSessions() {
        SocketSession socketSession;
        if (this.flushingSessions.size() == 0) {
            return;
        }
        while (true) {
            synchronized (this.flushingSessions) {
                socketSession = (SocketSession) this.flushingSessions.pop();
            }
            if (socketSession == null) {
                return;
            }
            if (!socketSession.isConnected()) {
                releaseWriteBuffers(socketSession);
            } else {
                try {
                    flush(socketSession);
                } catch (IOException e2) {
                    scheduleRemove(socketSession);
                    socketSession.getManagerFilterChain().exceptionCaught(socketSession, e2);
                }
            }
        }
    }

    private void releaseWriteBuffers(SocketSession socketSession) {
        Queue writeBufferQueue = socketSession.getWriteBufferQueue();
        socketSession.getWriteMarkerQueue().clear();
        while (true) {
            ByteBuffer byteBuffer = (ByteBuffer) writeBufferQueue.pop();
            if (byteBuffer == null) {
                return;
            }
            try {
                byteBuffer.release();
            } catch (IllegalStateException e2) {
                socketSession.getManagerFilterChain().exceptionCaught(socketSession, e2);
            }
        }
    }

    private void flush(SocketSession socketSession) throws IOException {
        ByteBuffer byteBuffer;
        Object first;
        SocketChannel channel = socketSession.getChannel();
        Queue writeBufferQueue = socketSession.getWriteBufferQueue();
        Queue writeMarkerQueue = socketSession.getWriteMarkerQueue();
        while (true) {
            synchronized (writeBufferQueue) {
                byteBuffer = (ByteBuffer) writeBufferQueue.first();
                first = writeMarkerQueue.first();
            }
            if (byteBuffer == null) {
                return;
            }
            if (byteBuffer.remaining() == 0) {
                synchronized (writeBufferQueue) {
                    writeBufferQueue.pop();
                    writeMarkerQueue.pop();
                }
                try {
                    byteBuffer.release();
                } catch (IllegalStateException e2) {
                    socketSession.getManagerFilterChain().exceptionCaught(socketSession, e2);
                }
                socketSession.getManagerFilterChain().dataWritten(socketSession, first);
            } else {
                try {
                    int write = channel.write(byteBuffer.buf());
                    if (write > 0) {
                        socketSession.increaseWrittenBytes(write);
                        socketSession.setIdle(IdleStatus.BOTH_IDLE, false);
                        socketSession.setIdle(IdleStatus.WRITER_IDLE, false);
                    }
                    SelectionKey selectionKey = socketSession.getSelectionKey();
                    if (byteBuffer.hasRemaining()) {
                        selectionKey.interestOps(selectionKey.interestOps() | 4);
                        return;
                    }
                    selectionKey.interestOps(selectionKey.interestOps() & (-5));
                } catch (Throwable th) {
                    SelectionKey selectionKey2 = socketSession.getSelectionKey();
                    if (byteBuffer.hasRemaining()) {
                        selectionKey2.interestOps(selectionKey2.interestOps() | 4);
                        return;
                    } else {
                        selectionKey2.interestOps(selectionKey2.interestOps() & (-5));
                        throw th;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class Worker extends Thread {
        public Worker() {
            super("SocketIoProcessor");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    int select = SocketIoProcessor.this.selector.select(1000L);
                    SocketIoProcessor.this.addSessions();
                    if (select > 0) {
                        SocketIoProcessor socketIoProcessor = SocketIoProcessor.this;
                        socketIoProcessor.processSessions(socketIoProcessor.selector.selectedKeys());
                    }
                    SocketIoProcessor.this.flushSessions();
                    SocketIoProcessor.this.removeSessions();
                    SocketIoProcessor.this.notifyIdleSessions();
                    if (SocketIoProcessor.this.selector.keys().isEmpty()) {
                        synchronized (SocketIoProcessor.this) {
                            if (SocketIoProcessor.this.selector.keys().isEmpty() && SocketIoProcessor.this.newSessions.isEmpty()) {
                                SocketIoProcessor.this.worker = null;
                                return;
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }
}
