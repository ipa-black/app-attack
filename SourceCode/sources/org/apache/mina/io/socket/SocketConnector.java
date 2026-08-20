package org.apache.mina.io.socket;

import java.io.IOException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;
import org.apache.mina.common.BaseSessionManager;
import org.apache.mina.io.IoConnector;
import org.apache.mina.io.IoFilterChain;
import org.apache.mina.io.IoHandler;
import org.apache.mina.io.IoSession;
import org.apache.mina.io.IoSessionManagerFilterChain;
import org.apache.mina.util.ExceptionUtil;
import org.apache.mina.util.Queue;
/* loaded from: classes4.dex */
public class SocketConnector extends BaseSessionManager implements IoConnector {
    private static volatile int nextId;
    private final Queue connectQueue;
    private final IoSessionManagerFilterChain filters;
    private final int id;
    private final Selector selector;
    private Worker worker;

    public SocketConnector() throws IOException {
        int i = nextId;
        nextId = i + 1;
        this.id = i;
        this.filters = new SocketSessionManagerFilterChain(this);
        this.connectQueue = new Queue();
        this.selector = Selector.open();
    }

    @Override // org.apache.mina.io.IoConnector
    public IoSession connect(SocketAddress socketAddress, IoHandler ioHandler) throws IOException {
        return connect(socketAddress, null, Integer.MAX_VALUE, ioHandler);
    }

    @Override // org.apache.mina.io.IoConnector
    public IoSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, IoHandler ioHandler) throws IOException {
        return connect(socketAddress, socketAddress2, Integer.MAX_VALUE, ioHandler);
    }

    @Override // org.apache.mina.io.IoConnector
    public IoSession connect(SocketAddress socketAddress, int i, IoHandler ioHandler) throws IOException {
        return connect(socketAddress, null, i, ioHandler);
    }

    @Override // org.apache.mina.io.IoConnector
    public IoSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, int i, IoHandler ioHandler) throws IOException {
        if (socketAddress != null) {
            if (ioHandler != null) {
                if (i <= 0) {
                    throw new IllegalArgumentException(new StringBuffer("Illegal timeout: ").append(i).toString());
                }
                if (!(socketAddress instanceof InetSocketAddress)) {
                    throw new IllegalArgumentException(new StringBuffer("Unexpected address type: ").append(socketAddress.getClass()).toString());
                }
                if (socketAddress2 != null && !(socketAddress2 instanceof InetSocketAddress)) {
                    throw new IllegalArgumentException(new StringBuffer("Unexpected local address type: ").append(socketAddress2.getClass()).toString());
                }
                SocketChannel open = SocketChannel.open();
                try {
                    open.socket().setReuseAddress(true);
                    if (socketAddress2 != null) {
                        open.socket().bind(socketAddress2);
                    }
                    open.configureBlocking(false);
                    if (open.connect(socketAddress)) {
                        return newSession(open, ioHandler);
                    }
                    ConnectionRequest connectionRequest = new ConnectionRequest(open, i, ioHandler);
                    synchronized (this) {
                        synchronized (this.connectQueue) {
                            this.connectQueue.push(connectionRequest);
                        }
                        startupWorker();
                    }
                    this.selector.wakeup();
                    synchronized (connectionRequest) {
                        while (!connectionRequest.done) {
                            try {
                                connectionRequest.wait();
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                    if (connectionRequest.exception != null) {
                        ExceptionUtil.throwException(connectionRequest.exception);
                    }
                    return connectionRequest.session;
                } catch (Throwable th) {
                    open.close();
                    throw th;
                }
            }
            throw new NullPointerException("handler");
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

    /* JADX INFO: Access modifiers changed from: private */
    public void registerNew() {
        ConnectionRequest connectionRequest;
        if (this.connectQueue.isEmpty()) {
            return;
        }
        while (true) {
            synchronized (this.connectQueue) {
                connectionRequest = (ConnectionRequest) this.connectQueue.pop();
            }
            if (connectionRequest == null) {
                return;
            }
            try {
                connectionRequest.channel.register(this.selector, 8, connectionRequest);
            } catch (IOException e2) {
                connectionRequest.exception = e2;
                synchronized (connectionRequest) {
                    connectionRequest.done = true;
                    connectionRequest.notify();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processSessions(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            SelectionKey selectionKey = (SelectionKey) it.next();
            if (selectionKey.isConnectable()) {
                SocketChannel socketChannel = (SocketChannel) selectionKey.channel();
                ConnectionRequest connectionRequest = (ConnectionRequest) selectionKey.attachment();
                try {
                    socketChannel.finishConnect();
                    connectionRequest.session = newSession(socketChannel, connectionRequest.handler);
                    selectionKey.cancel();
                    if (connectionRequest.session == null) {
                        try {
                            socketChannel.close();
                        } catch (IOException e2) {
                            this.exceptionMonitor.exceptionCaught(this, e2);
                        }
                    }
                    synchronized (connectionRequest) {
                        connectionRequest.done = true;
                        connectionRequest.notify();
                    }
                } catch (Throwable th) {
                    try {
                        connectionRequest.exception = th;
                        selectionKey.cancel();
                        if (connectionRequest.session == null) {
                            try {
                                socketChannel.close();
                            } catch (IOException e3) {
                                this.exceptionMonitor.exceptionCaught(this, e3);
                            }
                        }
                        synchronized (connectionRequest) {
                            connectionRequest.done = true;
                            connectionRequest.notify();
                        }
                    } catch (Throwable th2) {
                        selectionKey.cancel();
                        if (connectionRequest.session == null) {
                            try {
                                socketChannel.close();
                            } catch (IOException e4) {
                                this.exceptionMonitor.exceptionCaught(this, e4);
                            }
                        }
                        synchronized (connectionRequest) {
                            connectionRequest.done = true;
                            connectionRequest.notify();
                            throw th2;
                        }
                    }
                }
            }
        }
        set.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processTimedOutSessions(Set set) {
        long currentTimeMillis = System.currentTimeMillis();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            SelectionKey selectionKey = (SelectionKey) it.next();
            if (selectionKey.isValid()) {
                ConnectionRequest connectionRequest = (ConnectionRequest) selectionKey.attachment();
                if (currentTimeMillis >= connectionRequest.deadline) {
                    connectionRequest.exception = new ConnectException();
                    connectionRequest.done = true;
                    synchronized (connectionRequest) {
                        connectionRequest.notify();
                    }
                    selectionKey.cancel();
                } else {
                    continue;
                }
            }
        }
    }

    private SocketSession newSession(SocketChannel socketChannel, IoHandler ioHandler) throws IOException {
        SocketSession socketSession = new SocketSession(this.filters, socketChannel, ioHandler);
        try {
            ioHandler.sessionCreated(socketSession);
        } catch (Throwable th) {
            ExceptionUtil.throwException(th);
        }
        SocketIoProcessor.getInstance().addSession(socketSession);
        return socketSession;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class Worker extends Thread {
        public Worker() {
            super(new StringBuffer("SocketConnector-").append(SocketConnector.this.id).toString());
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    int select = SocketConnector.this.selector.select(1000L);
                    SocketConnector.this.registerNew();
                    if (select > 0) {
                        SocketConnector socketConnector = SocketConnector.this;
                        socketConnector.processSessions(socketConnector.selector.selectedKeys());
                    }
                    SocketConnector socketConnector2 = SocketConnector.this;
                    socketConnector2.processTimedOutSessions(socketConnector2.selector.keys());
                    if (SocketConnector.this.selector.keys().isEmpty()) {
                        synchronized (SocketConnector.this) {
                            if (SocketConnector.this.selector.keys().isEmpty() && SocketConnector.this.connectQueue.isEmpty()) {
                                SocketConnector.this.worker = null;
                                return;
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (IOException e2) {
                    SocketConnector.this.exceptionMonitor.exceptionCaught(SocketConnector.this, e2);
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class ConnectionRequest {
        private final SocketChannel channel;
        private final long deadline;
        private boolean done;
        private Throwable exception;
        private final IoHandler handler;
        private SocketSession session;

        private ConnectionRequest(SocketChannel socketChannel, int i, IoHandler ioHandler) {
            this.channel = socketChannel;
            this.deadline = System.currentTimeMillis() + (i * 1000);
            this.handler = ioHandler;
        }
    }

    @Override // org.apache.mina.io.IoSessionManager
    public IoFilterChain getFilterChain() {
        return this.filters;
    }
}
