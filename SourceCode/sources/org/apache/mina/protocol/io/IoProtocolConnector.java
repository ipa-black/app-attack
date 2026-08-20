package org.apache.mina.protocol.io;

import java.io.IOException;
import java.net.SocketAddress;
import org.apache.mina.common.ExceptionMonitor;
import org.apache.mina.io.IoConnector;
import org.apache.mina.protocol.ProtocolConnector;
import org.apache.mina.protocol.ProtocolFilterChain;
import org.apache.mina.protocol.ProtocolProvider;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes5.dex */
public class IoProtocolConnector implements ProtocolConnector {
    private final IoAdapter adapter = new IoAdapter(new IoProtocolSessionManagerFilterChain(this));
    private final IoConnector connector;

    public IoProtocolConnector(IoConnector ioConnector) {
        if (ioConnector == null) {
            throw new NullPointerException("connector");
        }
        this.connector = ioConnector;
    }

    public IoConnector getIoConnector() {
        return this.connector;
    }

    @Override // org.apache.mina.protocol.ProtocolConnector
    public ProtocolSession connect(SocketAddress socketAddress, ProtocolProvider protocolProvider) throws IOException {
        return this.adapter.toProtocolSession(this.connector.connect(socketAddress, this.adapter.adapt(protocolProvider)));
    }

    @Override // org.apache.mina.protocol.ProtocolConnector
    public ProtocolSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, ProtocolProvider protocolProvider) throws IOException {
        return this.adapter.toProtocolSession(this.connector.connect(socketAddress, socketAddress2, this.adapter.adapt(protocolProvider)));
    }

    @Override // org.apache.mina.protocol.ProtocolConnector
    public ProtocolSession connect(SocketAddress socketAddress, int i, ProtocolProvider protocolProvider) throws IOException {
        return this.adapter.toProtocolSession(this.connector.connect(socketAddress, i, this.adapter.adapt(protocolProvider)));
    }

    @Override // org.apache.mina.protocol.ProtocolConnector
    public ProtocolSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, int i, ProtocolProvider protocolProvider) throws IOException {
        return this.adapter.toProtocolSession(this.connector.connect(socketAddress, socketAddress2, i, this.adapter.adapt(protocolProvider)));
    }

    @Override // org.apache.mina.protocol.ProtocolSessionManager
    public ProtocolFilterChain getFilterChain() {
        return this.adapter.getFilterChain();
    }

    @Override // org.apache.mina.common.SessionManager
    public ExceptionMonitor getExceptionMonitor() {
        return this.connector.getExceptionMonitor();
    }

    @Override // org.apache.mina.common.SessionManager
    public void setExceptionMonitor(ExceptionMonitor exceptionMonitor) {
        this.connector.setExceptionMonitor(exceptionMonitor);
    }
}
