package org.apache.mina.io.datagram;

import java.net.SocketAddress;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import org.apache.mina.common.BaseSession;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.SessionConfig;
import org.apache.mina.common.TransportType;
import org.apache.mina.io.IoFilterChain;
import org.apache.mina.io.IoHandler;
import org.apache.mina.io.IoSession;
import org.apache.mina.io.IoSessionFilterChain;
import org.apache.mina.io.IoSessionManager;
import org.apache.mina.io.IoSessionManagerFilterChain;
import org.apache.mina.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class DatagramSession extends BaseSession implements IoSession {
    private final DatagramChannel ch;
    private final DatagramSessionConfig config;
    private boolean disposed;
    private final IoSessionFilterChain filterChain;
    private final IoHandler handler;
    private SelectionKey key;
    private final SocketAddress localAddress;
    private final IoSessionManagerFilterChain managerFilterChain;
    private SocketAddress remoteAddress;
    private final Queue writeBufferQueue = new Queue();
    private final Queue writeMarkerQueue = new Queue();

    /* JADX INFO: Access modifiers changed from: package-private */
    public DatagramSession(IoSessionManagerFilterChain ioSessionManagerFilterChain, DatagramChannel datagramChannel, IoHandler ioHandler) {
        this.managerFilterChain = ioSessionManagerFilterChain;
        this.filterChain = new IoSessionFilterChain(ioSessionManagerFilterChain);
        this.ch = datagramChannel;
        this.config = new DatagramSessionConfig(datagramChannel);
        this.handler = ioHandler;
        this.remoteAddress = datagramChannel.socket().getRemoteSocketAddress();
        this.localAddress = datagramChannel.socket().getLocalSocketAddress();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IoSessionManagerFilterChain getManagerFilterChain() {
        return this.managerFilterChain;
    }

    @Override // org.apache.mina.io.IoSession
    public IoFilterChain getFilterChain() {
        return this.filterChain;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DatagramChannel getChannel() {
        return this.ch;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SelectionKey getSelectionKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSelectionKey(SelectionKey selectionKey) {
        this.key = selectionKey;
    }

    @Override // org.apache.mina.io.IoSession
    public IoHandler getHandler() {
        return this.handler;
    }

    synchronized void notifyClose() {
        if (!this.disposed) {
            this.disposed = true;
            notify();
        }
    }

    @Override // org.apache.mina.common.Session
    public synchronized void close(boolean z) {
        if (this.disposed) {
            return;
        }
        IoSessionManager manager = this.managerFilterChain.getManager();
        if (manager instanceof DatagramConnector) {
            ((DatagramConnector) manager).closeSession(this);
            if (z) {
                while (this.disposed) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Queue getWriteBufferQueue() {
        return this.writeBufferQueue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Queue getWriteMarkerQueue() {
        return this.writeMarkerQueue;
    }

    @Override // org.apache.mina.io.IoSession
    public void write(ByteBuffer byteBuffer, Object obj) {
        this.filterChain.filterWrite(this, byteBuffer, obj);
    }

    @Override // org.apache.mina.common.Session
    public TransportType getTransportType() {
        return TransportType.DATAGRAM;
    }

    @Override // org.apache.mina.common.Session
    public boolean isConnected() {
        return this.ch.isConnected();
    }

    @Override // org.apache.mina.common.Session
    public SessionConfig getConfig() {
        return this.config;
    }

    @Override // org.apache.mina.common.Session
    public SocketAddress getRemoteAddress() {
        return this.remoteAddress;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRemoteAddress(SocketAddress socketAddress) {
        this.remoteAddress = socketAddress;
    }

    @Override // org.apache.mina.common.Session
    public SocketAddress getLocalAddress() {
        return this.localAddress;
    }
}
