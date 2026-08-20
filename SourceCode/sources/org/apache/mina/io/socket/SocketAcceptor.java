package org.apache.mina.io.socket;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.mina.common.BaseSessionManager;
import org.apache.mina.io.IoAcceptor;
import org.apache.mina.io.IoFilterChain;
import org.apache.mina.io.IoHandler;
import org.apache.mina.io.IoSessionManagerFilterChain;
import org.apache.mina.util.Queue;
/* loaded from: classes4.dex */
public class SocketAcceptor extends BaseSessionManager implements IoAcceptor {
    private static volatile int nextId;
    private int backlog;
    private final Queue cancelQueue;
    private final Map channels;
    private final IoSessionManagerFilterChain filters = new SocketSessionManagerFilterChain(this);
    private final int id;
    private final Queue registerQueue;
    private final Selector selector;
    private Worker worker;

    public SocketAcceptor() throws IOException {
        int i = nextId;
        nextId = i + 1;
        this.id = i;
        this.channels = new HashMap();
        this.registerQueue = new Queue();
        this.cancelQueue = new Queue();
        this.backlog = 50;
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
        RegistrationRequest registrationRequest = new RegistrationRequest(socketAddress, this.backlog, ioHandler);
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
            throw registrationRequest.exception;
        }
    }

    private synchronized void startupWorker() {
        if (this.worker == null) {
            Worker worker = new Worker();
            this.worker = worker;
            worker.start();
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

    public int getBacklog() {
        return this.backlog;
    }

    public void setBacklog(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuffer("defaultBacklog: ").append(i).toString());
        }
        this.backlog = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class Worker extends Thread {
        public Worker() {
            super(new StringBuffer("SocketAcceptor-").append(SocketAcceptor.this.id).toString());
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    int select = SocketAcceptor.this.selector.select();
                    SocketAcceptor.this.registerNew();
                    SocketAcceptor.this.cancelKeys();
                    if (select > 0) {
                        processSessions(SocketAcceptor.this.selector.selectedKeys());
                    }
                    if (SocketAcceptor.this.selector.keys().isEmpty()) {
                        synchronized (SocketAcceptor.this) {
                            if (SocketAcceptor.this.selector.keys().isEmpty() && SocketAcceptor.this.registerQueue.isEmpty() && SocketAcceptor.this.cancelQueue.isEmpty()) {
                                SocketAcceptor.this.worker = null;
                                return;
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (IOException e2) {
                    SocketAcceptor.this.exceptionMonitor.exceptionCaught(SocketAcceptor.this, e2);
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        private void processSessions(Set set) throws IOException {
            SocketChannel accept;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                SelectionKey selectionKey = (SelectionKey) it.next();
                it.remove();
                if (selectionKey.isAcceptable() && (accept = ((ServerSocketChannel) selectionKey.channel()).accept()) != null) {
                    try {
                        RegistrationRequest registrationRequest = (RegistrationRequest) selectionKey.attachment();
                        SocketSession socketSession = new SocketSession(SocketAcceptor.this.filters, accept, registrationRequest.handler);
                        registrationRequest.handler.sessionCreated(socketSession);
                        SocketIoProcessor.getInstance().addSession(socketSession);
                    } finally {
                        try {
                        } finally {
                        }
                    }
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
            ServerSocketChannel serverSocketChannel = null;
            try {
                try {
                    serverSocketChannel = ServerSocketChannel.open();
                    serverSocketChannel.configureBlocking(false);
                    serverSocketChannel.socket().bind(registrationRequest.address, registrationRequest.backlog);
                    serverSocketChannel.register(this.selector, 16, registrationRequest);
                    this.channels.put(registrationRequest.address, serverSocketChannel);
                    synchronized (registrationRequest) {
                        registrationRequest.done = true;
                        registrationRequest.notify();
                    }
                    if (serverSocketChannel != null && registrationRequest.exception != null) {
                        try {
                            serverSocketChannel.close();
                        } catch (IOException e2) {
                            this.exceptionMonitor.exceptionCaught(this, e2);
                        }
                    }
                } catch (IOException e3) {
                    registrationRequest.exception = e3;
                    synchronized (registrationRequest) {
                        registrationRequest.done = true;
                        registrationRequest.notify();
                        if (serverSocketChannel != null && registrationRequest.exception != null) {
                            serverSocketChannel.close();
                        }
                    }
                }
            } catch (Throwable th) {
                synchronized (registrationRequest) {
                    registrationRequest.done = true;
                    registrationRequest.notify();
                    if (serverSocketChannel != null && registrationRequest.exception != null) {
                        try {
                            serverSocketChannel.close();
                        } catch (IOException e4) {
                            this.exceptionMonitor.exceptionCaught(this, e4);
                        }
                    }
                    throw th;
                }
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
            ServerSocketChannel serverSocketChannel = (ServerSocketChannel) this.channels.remove(cancellationRequest.address);
            if (serverSocketChannel == null) {
                try {
                    try {
                        cancellationRequest.exception = new IllegalArgumentException(new StringBuffer().append("Address not bound: ").append(cancellationRequest.address).toString());
                    } catch (IOException e2) {
                        this.exceptionMonitor.exceptionCaught(this, e2);
                        synchronized (cancellationRequest) {
                            cancellationRequest.done = true;
                            cancellationRequest.notify();
                        }
                    }
                } catch (Throwable th) {
                    synchronized (cancellationRequest) {
                        cancellationRequest.done = true;
                        cancellationRequest.notify();
                        throw th;
                    }
                }
            } else {
                serverSocketChannel.keyFor(this.selector).cancel();
                this.selector.wakeup();
                serverSocketChannel.close();
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
        private final int backlog;
        private boolean done;
        private IOException exception;
        private final IoHandler handler;

        private RegistrationRequest(SocketAddress socketAddress, int i, IoHandler ioHandler) {
            this.address = socketAddress;
            this.backlog = i;
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
