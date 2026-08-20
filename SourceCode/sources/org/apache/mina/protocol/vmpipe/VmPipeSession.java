package org.apache.mina.protocol.vmpipe;

import java.io.IOException;
import java.net.SocketAddress;
import org.apache.mina.common.BaseSession;
import org.apache.mina.common.SessionConfig;
import org.apache.mina.common.TransportType;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolFilterChain;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolSessionFilterChain;
import org.apache.mina.protocol.vmpipe.VmPipeAcceptor;
import org.apache.mina.util.ExceptionUtil;
/* loaded from: classes5.dex */
class VmPipeSession extends BaseSession implements ProtocolSession {
    boolean closed;
    private final VmPipeSessionConfig config = new VmPipeSessionConfig();
    private final ProtocolSessionFilterChain filterChain;
    private final ProtocolHandler handler;
    private final SocketAddress localAddress;
    final Object lock;
    private final VmPipeSessionManagerFilterChain managerFilterChain;
    private final SocketAddress remoteAddress;
    final VmPipeSession remoteSession;

    @Override // org.apache.mina.protocol.ProtocolSession
    public ProtocolDecoder getDecoder() {
        return null;
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public ProtocolEncoder getEncoder() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VmPipeSession(Object obj, SocketAddress socketAddress, VmPipeSessionManagerFilterChain vmPipeSessionManagerFilterChain, ProtocolHandler protocolHandler, VmPipeAcceptor.Entry entry) throws IOException {
        this.lock = obj;
        this.localAddress = socketAddress;
        this.remoteAddress = entry.address;
        this.handler = protocolHandler;
        this.filterChain = new ProtocolSessionFilterChain(vmPipeSessionManagerFilterChain);
        this.managerFilterChain = vmPipeSessionManagerFilterChain;
        VmPipeSession vmPipeSession = new VmPipeSession(this, entry);
        this.remoteSession = vmPipeSession;
        try {
            entry.handler.sessionCreated(vmPipeSession);
            try {
                protocolHandler.sessionCreated(this);
            } catch (Throwable th) {
                ExceptionUtil.throwException(th);
            }
            entry.managerFilterChain.sessionOpened(this.remoteSession);
            vmPipeSessionManagerFilterChain.sessionOpened(this);
        } catch (Throwable th2) {
            entry.acceptor.getExceptionMonitor().exceptionCaught(entry.acceptor, th2);
            IOException iOException = new IOException("Failed to initialize remote session.");
            iOException.initCause(th2);
            throw iOException;
        }
    }

    VmPipeSession(VmPipeSession vmPipeSession, VmPipeAcceptor.Entry entry) {
        this.lock = vmPipeSession.lock;
        this.localAddress = vmPipeSession.remoteAddress;
        this.remoteAddress = vmPipeSession.localAddress;
        this.handler = entry.handler;
        this.managerFilterChain = entry.managerFilterChain;
        this.filterChain = new ProtocolSessionFilterChain(entry.managerFilterChain);
        this.remoteSession = vmPipeSession;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VmPipeSessionManagerFilterChain getManagerFilterChain() {
        return this.managerFilterChain;
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public ProtocolFilterChain getFilterChain() {
        return this.filterChain;
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public ProtocolHandler getHandler() {
        return this.handler;
    }

    @Override // org.apache.mina.common.Session
    public void close(boolean z) {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.remoteSession.closed = true;
            this.closed = true;
            this.managerFilterChain.sessionClosed(this);
            this.remoteSession.getManagerFilterChain().sessionClosed(this.remoteSession);
        }
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public void write(Object obj) {
        this.filterChain.filterWrite(this, obj);
    }

    @Override // org.apache.mina.common.Session
    public TransportType getTransportType() {
        return TransportType.VM_PIPE;
    }

    @Override // org.apache.mina.common.Session
    public boolean isConnected() {
        return !this.closed;
    }

    @Override // org.apache.mina.common.Session
    public SessionConfig getConfig() {
        return this.config;
    }

    @Override // org.apache.mina.common.Session
    public SocketAddress getRemoteAddress() {
        return this.remoteAddress;
    }

    @Override // org.apache.mina.common.Session
    public SocketAddress getLocalAddress() {
        return this.localAddress;
    }
}
