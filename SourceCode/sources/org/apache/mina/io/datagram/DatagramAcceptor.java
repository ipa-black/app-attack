package org.apache.mina.io.datagram;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.io.IoAcceptor;
import org.apache.mina.io.IoFilterChain;
import org.apache.mina.io.IoHandler;
import org.apache.mina.io.IoSessionManagerFilterChain;
import org.apache.mina.util.ExceptionUtil;
import org.apache.mina.util.Queue;
/* loaded from: classes4.dex */
public class DatagramAcceptor extends DatagramSessionManager implements IoAcceptor {
    private static volatile int nextId;
    private final Queue cancelQueue;
    private final Map channels;
    private final IoSessionManagerFilterChain filters = new DatagramSessionManagerFilterChain(this);
    private final Queue flushingSessions;
    private final int id;
    private final Queue registerQueue;
    private final Selector selector;
    private Worker worker;

    @Override // org.apache.mina.io.datagram.DatagramSessionManager
    void closeSession(DatagramSession datagramSession) {
    }

    public DatagramAcceptor() throws IOException {
        int i = nextId;
        nextId = i + 1;
        this.id = i;
        this.channels = new HashMap();
        this.registerQueue = new Queue();
        this.cancelQueue = new Queue();
        this.flushingSessions = new Queue();
        this.selector = Selector.open();
    }

    @Override // org.apache.mina.io.IoAcceptor
    public void bind(SocketAddress socketAddress, IoHandler ioHandler) throws IOException {
        if (socketAddress == null) {
            throw new NullPointerException("address");
        }
        if (ioHandler == null) {
            throw new NullPointerException("handler");
        }
        if (!(socketAddress instanceof InetSocketAddress)) {
            throw new IllegalArgumentException(new StringBuffer("Unexpected address type: ").append(socketAddress.getClass()).toString());
        }
        if (((InetSocketAddress) socketAddress).getPort() == 0) {
            throw new IllegalArgumentException("Unsupported port number: 0");
        }
        RegistrationRequest registrationRequest = new RegistrationRequest(socketAddress, ioHandler);
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
    }

    @Override // org.apache.mina.io.IoAcceptor
    public void unbind(SocketAddress socketAddress) {
        if (socketAddress == null) {
            throw new NullPointerException("address");
        }
        CancellationRequest cancellationRequest = new CancellationRequest(socketAddress);
        synchronized (this) {
            synchronized (this.cancelQueue) {
                this.cancelQueue.push(cancellationRequest);
            }
            startupWorker();
        }
        this.selector.wakeup();
        synchronized (cancellationRequest) {
            while (!cancellationRequest.done) {
                try {
                    cancellationRequest.wait();
                } catch (InterruptedException unused) {
                }
            }
        }
        if (cancellationRequest.exception == null) {
            return;
        }
        cancellationRequest.exception.fillInStackTrace();
        throw cancellationRequest.exception;
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
    public void flushSession(DatagramSession datagramSession) {
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
            super(new StringBuffer("DatagramAcceptor-").append(DatagramAcceptor.this.id).toString());
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    int select = DatagramAcceptor.this.selector.select();
                    DatagramAcceptor.this.registerNew();
                    if (select > 0) {
                        DatagramAcceptor datagramAcceptor = DatagramAcceptor.this;
                        datagramAcceptor.processReadySessions(datagramAcceptor.selector.selectedKeys());
                    }
                    DatagramAcceptor.this.flushSessions();
                    DatagramAcceptor.this.cancelKeys();
                    if (DatagramAcceptor.this.selector.keys().isEmpty()) {
                        synchronized (DatagramAcceptor.this) {
                            if (DatagramAcceptor.this.selector.keys().isEmpty() && DatagramAcceptor.this.registerQueue.isEmpty() && DatagramAcceptor.this.cancelQueue.isEmpty()) {
                                DatagramAcceptor.this.worker = null;
                                return;
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (IOException e2) {
                    DatagramAcceptor.this.exceptionMonitor.exceptionCaught(DatagramAcceptor.this, e2);
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
            RegistrationRequest registrationRequest = (RegistrationRequest) selectionKey.attachment();
            DatagramSession datagramSession = new DatagramSession(this.filters, (DatagramChannel) selectionKey.channel(), registrationRequest.handler);
            datagramSession.setSelectionKey(selectionKey);
            try {
                registrationRequest.handler.sessionCreated(datagramSession);
                if (selectionKey.isReadable()) {
                    readSession(datagramSession);
                }
                if (selectionKey.isWritable()) {
                    scheduleFlush(datagramSession);
                }
            } catch (Throwable th) {
                this.exceptionMonitor.exceptionCaught(this, th);
            }
        }
    }

    private void readSession(DatagramSession datagramSession) {
        ByteBuffer allocate = ByteBuffer.allocate(2048);
        try {
            try {
                SocketAddress receive = datagramSession.getChannel().receive(allocate.buf());
                if (receive != null) {
                    allocate.flip();
                    datagramSession.setRemoteAddress(receive);
                    ByteBuffer allocate2 = ByteBuffer.allocate(allocate.limit());
                    allocate2.put(allocate);
                    allocate2.flip();
                    datagramSession.increaseReadBytes(allocate2.remaining());
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
                int send = channel.send(byteBuffer.buf(), datagramSession.getRemoteAddress());
                SelectionKey selectionKey = datagramSession.getSelectionKey();
                if (send == 0) {
                    selectionKey.interestOps(selectionKey.interestOps() | 4);
                } else if (send > 0) {
                    selectionKey.interestOps(selectionKey.interestOps() & (-5));
                    synchronized (writeBufferQueue) {
                        writeBufferQueue.pop();
                        writeMarkerQueue.pop();
                    }
                    datagramSession.increaseWrittenBytes(send);
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
        DatagramChannel datagramChannel;
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
            try {
                datagramChannel = DatagramChannel.open();
                try {
                    datagramChannel.configureBlocking(false);
                    datagramChannel.socket().bind(registrationRequest.address);
                    datagramChannel.register(this.selector, 1, registrationRequest);
                    this.channels.put(registrationRequest.address, datagramChannel);
                    synchronized (registrationRequest) {
                        registrationRequest.done = true;
                        registrationRequest.notify();
                    }
                    if (datagramChannel != null && registrationRequest.exception != null) {
                        try {
                            datagramChannel.close();
                        } catch (Throwable th) {
                            this.exceptionMonitor.exceptionCaught(this, th);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        registrationRequest.exception = th;
                        synchronized (registrationRequest) {
                            registrationRequest.done = true;
                            registrationRequest.notify();
                        }
                        if (datagramChannel != null && registrationRequest.exception != null) {
                            datagramChannel.close();
                        }
                    } catch (Throwable th3) {
                        synchronized (registrationRequest) {
                            registrationRequest.done = true;
                            registrationRequest.notify();
                            if (datagramChannel != null && registrationRequest.exception != null) {
                                try {
                                    datagramChannel.close();
                                } catch (Throwable th4) {
                                    this.exceptionMonitor.exceptionCaught(this, th4);
                                }
                            }
                            throw th3;
                        }
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                datagramChannel = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelKeys() {
        CancellationRequest cancellationRequest;
        if (this.cancelQueue.isEmpty()) {
            return;
        }
        while (true) {
            synchronized (this.cancelQueue) {
                cancellationRequest = (CancellationRequest) this.cancelQueue.pop();
            }
            if (cancellationRequest == null) {
                return;
            }
            DatagramChannel datagramChannel = (DatagramChannel) this.channels.remove(cancellationRequest.address);
            if (datagramChannel == null) {
                try {
                    cancellationRequest.exception = new IllegalArgumentException(new StringBuffer().append("Address not bound: ").append(cancellationRequest.address).toString());
                } catch (Throwable th) {
                    try {
                        this.exceptionMonitor.exceptionCaught(this, th);
                        synchronized (cancellationRequest) {
                            cancellationRequest.done = true;
                            cancellationRequest.notify();
                        }
                    } catch (Throwable th2) {
                        synchronized (cancellationRequest) {
                            cancellationRequest.done = true;
                            cancellationRequest.notify();
                            throw th2;
                        }
                    }
                }
            } else {
                datagramChannel.keyFor(this.selector).cancel();
                this.selector.wakeup();
                datagramChannel.close();
            }
            synchronized (cancellationRequest) {
                cancellationRequest.done = true;
                cancellationRequest.notify();
            }
        }
    }

    @Override // org.apache.mina.io.IoSessionManager
    public IoFilterChain getFilterChain() {
        return this.filters;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class RegistrationRequest {
        private final SocketAddress address;
        private boolean done;
        private Throwable exception;
        private final IoHandler handler;

        private RegistrationRequest(SocketAddress socketAddress, IoHandler ioHandler) {
            this.address = socketAddress;
            this.handler = ioHandler;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class CancellationRequest {
        private final SocketAddress address;
        private boolean done;
        private RuntimeException exception;

        private CancellationRequest(SocketAddress socketAddress) {
            this.address = socketAddress;
        }
    }
}
