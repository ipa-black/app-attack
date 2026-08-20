package org.apache.mina.protocol.vmpipe;

import java.io.IOException;
import java.net.SocketAddress;
import org.apache.mina.common.BaseSessionManager;
import org.apache.mina.protocol.ProtocolConnector;
import org.apache.mina.protocol.ProtocolFilterChain;
import org.apache.mina.protocol.ProtocolProvider;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.vmpipe.VmPipeAcceptor;
/* loaded from: classes5.dex */
public class VmPipeConnector extends BaseSessionManager implements ProtocolConnector {
    private final VmPipeSessionManagerFilterChain filterChain;

    public VmPipeConnector() {
        VmPipeSessionManagerFilterChain vmPipeSessionManagerFilterChain = new VmPipeSessionManagerFilterChain(this);
        this.filterChain = vmPipeSessionManagerFilterChain;
        vmPipeSessionManagerFilterChain.addFirst("VMPipe", new VmPipeFilter());
    }

    @Override // org.apache.mina.protocol.ProtocolSessionManager
    public ProtocolFilterChain getFilterChain() {
        return this.filterChain;
    }

    @Override // org.apache.mina.protocol.ProtocolConnector
    public ProtocolSession connect(SocketAddress socketAddress, ProtocolProvider protocolProvider) throws IOException {
        return connect(socketAddress, null, Integer.MAX_VALUE, protocolProvider);
    }

    @Override // org.apache.mina.protocol.ProtocolConnector
    public ProtocolSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, ProtocolProvider protocolProvider) throws IOException {
        return connect(socketAddress, socketAddress2, Integer.MAX_VALUE, protocolProvider);
    }

    @Override // org.apache.mina.protocol.ProtocolConnector
    public ProtocolSession connect(SocketAddress socketAddress, int i, ProtocolProvider protocolProvider) throws IOException {
        return connect(socketAddress, null, i, protocolProvider);
    }

    @Override // org.apache.mina.protocol.ProtocolConnector
    public ProtocolSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, int i, ProtocolProvider protocolProvider) throws IOException {
        if (socketAddress != null) {
            if (protocolProvider == null) {
                throw new NullPointerException("protocolProvider");
            }
            if (!(socketAddress instanceof VmPipeAddress)) {
                throw new IllegalArgumentException("address must be VmPipeAddress.");
            }
            VmPipeAcceptor.Entry entry = (VmPipeAcceptor.Entry) VmPipeAcceptor.boundHandlers.get(socketAddress);
            if (entry == null) {
                throw new IOException(new StringBuffer("Endpoint unavailable: ").append(socketAddress).toString());
            }
            VmPipeSession vmPipeSession = new VmPipeSession(new Object(), AnonymousVmPipeAddress.INSTANCE, this.filterChain, protocolProvider.getHandler(), entry);
            VmPipeIdleStatusChecker.INSTANCE.addSession(vmPipeSession);
            return vmPipeSession;
        }
        throw new NullPointerException("address");
    }
}
