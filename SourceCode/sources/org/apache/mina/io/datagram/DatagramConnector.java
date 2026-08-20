package org.apache.mina.io.datagram;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Iterator;
import java.util.Set;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.io.IoConnector;
import org.apache.mina.io.IoFilterChain;
import org.apache.mina.io.IoHandler;
import org.apache.mina.io.IoSession;
import org.apache.mina.io.IoSessionManagerFilterChain;
import org.apache.mina.util.ExceptionUtil;
import org.apache.mina.util.Queue;
/* loaded from: classes4.dex */
public class DatagramConnector extends DatagramSessionManager implements IoConnector {
    private static volatile int nextId;
    private final Queue cancelQueue;
    private final IoSessionManagerFilterChain filters = new DatagramSessionManagerFilterChain(this);
    private final Queue flushingSessions;
    private final int id;
    private final Queue registerQueue;
    private final Selector selector;
    private Worker worker;

    public DatagramConnector() throws IOException {
        int i = nextId;
        nextId = i + 1;
        this.id = i;
        this.registerQueue = new Queue();
        this.cancelQueue = new Queue();
        this.flushingSessions = new Queue();
        this.selector = Selector.open();
    }

    @Override // org.apache.mina.io.IoConnector
    public IoSession connect(SocketAddress socketAddress, IoHandler ioHandler) throws IOException {
        return connect(socketAddress, (SocketAddress) null, ioHandler);
    }

    @Override // org.apache.mina.io.IoConnector
    public IoSession connect(SocketAddress socketAddress, int i, IoHandler ioHandler) throws IOException {
        return connect(socketAddress, (SocketAddress) null, ioHandler);
    }

    @Override // org.apache.mina.io.IoConnector
    public IoSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, int i, IoHandler ioHandler) throws IOException {
        return connect(socketAddress, socketAddress2, ioHandler);
    }

    @Override // org.apache.mina.io.IoConnector
    public IoSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, IoHandler ioHandler) throws IOException {
        if (socketAddress != null) {
            if (ioHandler == null) {
                throw new NullPointerException("handler");
            }
            if (!(socketAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException(new StringBuffer("Unexpected address type: ").append(socketAddress.getClass()).toString());
            }
            if (socketAddress2 != null && !(socketAddress2 instanceof InetSocketAddress)) {
                throw new IllegalArgumentException(new StringBuffer("Unexpected local address type: ").append(socketAddress2.getClass()).toString());
            }
            DatagramChannel open = DatagramChannel.open();
            try {
                open.socket().setReuseAddress(true);
                if (socketAddress2 != null) {
                    open.socket().bind(socketAddress2);
                }
                open.connect(socketAddress);
                open.configureBlocking(false);
                RegistrationRequest registrationRequest = new RegistrationRequest(open, ioHandler);
                synchronized (this) {
                    synchronized (this.registerQueue) {
                        this.registerQueue.push(registrationRequest);
                    }
                    startupWorker();
                }
                this.selector.wakeup();
                synchronized (registrationRequest) {
                    while (!registrationRequest.done) {
                        try {
                            registrationRequest.wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                }
                if (registrationRequest.exception != null) {
                    ExceptionUtil.throwException(registrationRequest.exception);
                }
                return registrationRequest.session;
            } catch (Throwable th) {
                open.close();
                throw th;
            }
        }
        throw new NullPointerException("address");
    }

    private synchronized void startupWorker() {
        if (this.worker == null) {
            Worker worker = new Worker();
            this.worker = worker;
            worker.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.apache.mina.io.datagram.DatagramSessionManager
    public void closeSession(DatagramSession datagramSession) {
        synchronized (this) {
            SelectionKey selectionKey = datagramSession.getSelectionKey();
            synchronized (this.cancelQueue) {
                this.cancelQueue.push(selectionKey);
            }
            startupWorker();
        }
        this.selector.wakeup();
    }

    @Override // org.apache.mina.io.datagram.DatagramSessionManager
    void flushSession(DatagramSession datagramSession) {
        scheduleFlush(datagramSession);
        this.selector.wakeup();
    }

    private void scheduleFlush(DatagramSession datagramSession) {
        synchronized (this.flushingSessions) {
            this.flushingSessions.push(datagramSession);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class Worker extends Thread {
        public Worker() {
            super(new StringBuffer("DatagramAcceptor-").append(DatagramConnector.this.id).toString());
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    int select = DatagramConnector.this.selector.select();
                    DatagramConnector.this.registerNew();
                    if (select > 0) {
                        DatagramConnector datagramConnector = DatagramConnector.this;
                        datagramConnector.processReadySessions(datagramConnector.selector.selectedKeys());
                    }
                    DatagramConnector.this.flushSessions();
                    DatagramConnector.this.cancelKeys();
                    if (DatagramConnector.this.selector.keys().isEmpty()) {
                        synchronized (DatagramConnector.this) {
                            if (DatagramConnector.this.selector.keys().isEmpty() && DatagramConnector.this.registerQueue.isEmpty() && DatagramConnector.this.cancelQueue.isEmpty()) {
                                DatagramConnector.this.worker = null;
                                return;
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (IOException e2) {
                    DatagramConnector.this.exceptionMonitor.exceptionCaught(DatagramConnector.this, e2);
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processReadySessions(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            SelectionKey selectionKey = (SelectionKey) it.next();
            it.remove();
            DatagramSession datagramSession = (DatagramSession) selectionKey.attachment();
            if (selectionKey.isReadable()) {
                readSession(datagramSession);
            }
            if (selectionKey.isWritable()) {
                scheduleFlush(datagramSession);
            }
        }
    }

    private void readSession(DatagramSession datagramSession) {
        ByteBuffer allocate = ByteBuffer.allocate(2048);
        try {
            try {
                int read = datagramSession.getChannel().read(allocate.buf());
                if (read > 0) {
                    allocate.flip();
                    ByteBuffer allocate2 = ByteBuffer.allocate(allocate.limit());
                    allocate2.put(allocate);
                    allocate2.flip();
                    datagramSession.increaseReadBytes(read);
                    this.filters.dataRead(datagramSession, allocate2);
                }
            } catch (IOException e2) {
                this.filters.exceptionCaught(datagramSession, e2);
            }
        } finally {
            allocate.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushSessions() {
        DatagramSession datagramSession;
        if (this.flushingSessions.size() == 0) {
            return;
        }
        while (true) {
            synchronized (this.flushingSessions) {
                datagramSession = (DatagramSession) this.flushingSessions.pop();
            }
            if (datagramSession == null) {
                return;
            }
            try {
                flush(datagramSession);
            } catch (IOException e2) {
                datagramSession.getManagerFilterChain().exceptionCaught(datagramSession, e2);
            }
        }
    }

    private void flush(DatagramSession datagramSession) throws IOException {
        ByteBuffer byteBuffer;
        Object first;
        DatagramChannel channel = datagramSession.getChannel();
        Queue writeBufferQueue = datagramSession.getWriteBufferQueue();
        Queue writeMarkerQueue = datagramSession.getWriteMarkerQueue();
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
                    datagramSession.getManagerFilterChain().exceptionCaught(datagramSession, e2);
                }
                datagramSession.getManagerFilterChain().dataWritten(datagramSession, first);
            } else {
                int write = channel.write(byteBuffer.buf());
                SelectionKey selectionKey = datagramSession.getSelectionKey();
                if (write == 0) {
                    selectionKey.interestOps(selectionKey.interestOps() | 4);
                } else if (write > 0) {
                    selectionKey.interestOps(selectionKey.interestOps() & (-5));
                    synchronized (writeBufferQueue) {
                        writeBufferQueue.pop();
                        writeMarkerQueue.pop();
                    }
                    datagramSession.increaseWrittenBytes(write);
                    datagramSession.getManagerFilterChain().dataWritten(datagramSession, first);
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerNew() {
        RegistrationRequest registrationRequest;
        if (this.registerQueue.isEmpty()) {
            return;
        }
        while (true) {
            synchronized (this.registerQueue) {
                registrationRequest = (RegistrationRequest) this.registerQueue.pop();
            }
            if (registrationRequest == null) {
                return;
            }
            DatagramSession datagramSession = new DatagramSession(this.filters, registrationRequest.channel, registrationRequest.handler);
            registrationRequest.handler.sessionCreated(datagramSession);
            datagramSession.setSelectionKey(registrationRequest.channel.register(this.selector, 1, datagramSession));
            synchronized (registrationRequest) {
                registrationRequest.done = true;
                registrationRequest.session = datagramSession;
                registrationRequest.notify();
            }
            if (registrationRequest.exception != null) {
                try {
                    registrationRequest.channel.close();
                } catch (IOException e2) {
                    this.exceptionMonitor.exceptionCaught(this, e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelKeys() {
        SelectionKey selectionKey;
        if (this.cancelQueue.isEmpty()) {
            return;
        }
        while (true) {
            synchronized (this.cancelQueue) {
                selectionKey = (SelectionKey) this.cancelQueue.pop();
            }
            if (selectionKey == null) {
                return;
            }
            try {
                ((DatagramChannel) selectionKey.channel()).close();
            } catch (IOException e2) {
                this.exceptionMonitor.exceptionCaught(this, e2);
            }
            selectionKey.cancel();
            this.selector.wakeup();
        }
    }

    @Override // org.apache.mina.io.IoSessionManager
    public IoFilterChain getFilterChain() {
        return this.filters;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class RegistrationRequest {
        private final DatagramChannel channel;
        private boolean done;
        private Throwable exception;
        private final IoHandler handler;
        private DatagramSession session;

        static /* synthetic */ Throwable access$202(RegistrationRequest registrationRequest, Throwable th) {
            registrationRequest.exception = th;
            return th;
        }

        private RegistrationRequest(DatagramChannel datagramChannel, IoHandler ioHandler) {
            this.channel = datagramChannel;
            this.handler = ioHandler;
        }
    }
}
