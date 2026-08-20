package org.apache.mina.protocol.io;

import java.io.IOException;
import java.net.SocketAddress;
import org.apache.mina.common.ExceptionMonitor;
import org.apache.mina.io.IoAcceptor;
import org.apache.mina.protocol.ProtocolAcceptor;
import org.apache.mina.protocol.ProtocolFilterChain;
import org.apache.mina.protocol.ProtocolProvider;
/* loaded from: classes5.dex */
public class IoProtocolAcceptor implements ProtocolAcceptor {
    private final IoAcceptor acceptor;
    private final IoAdapter adapter = new IoAdapter(new IoProtocolSessionManagerFilterChain(this));

    public IoProtocolAcceptor(IoAcceptor ioAcceptor) {
        if (ioAcceptor == null) {
            throw new NullPointerException("acceptor");
        }
        this.acceptor = ioAcceptor;
    }

    public IoAcceptor getIoAcceptor() {
        return this.acceptor;
    }

    @Override // org.apache.mina.protocol.ProtocolAcceptor
    public void bind(SocketAddress socketAddress, ProtocolProvider protocolProvider) throws IOException {
        this.acceptor.bind(socketAddress, this.adapter.adapt(protocolProvider));
    }

    @Override // org.apache.mina.protocol.ProtocolAcceptor
    public void unbind(SocketAddress socketAddress) {
        this.acceptor.unbind(socketAddress);
    }

    @Override // org.apache.mina.protocol.ProtocolSessionManager
    public ProtocolFilterChain getFilterChain() {
        return this.adapter.getFilterChain();
    }

    @Override // org.apache.mina.common.SessionManager
    public ExceptionMonitor getExceptionMonitor() {
        return this.acceptor.getExceptionMonitor();
    }

    @Override // org.apache.mina.common.SessionManager
    public void setExceptionMonitor(ExceptionMonitor exceptionMonitor) {
        this.acceptor.setExceptionMonitor(exceptionMonitor);
    }
}
