package org.apache.mina.protocol.vmpipe;

import java.io.IOException;
import java.net.SocketAddress;
import java.util.HashMap;
import java.util.Map;
import org.apache.mina.common.BaseSessionManager;
import org.apache.mina.protocol.ProtocolAcceptor;
import org.apache.mina.protocol.ProtocolFilterChain;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolProvider;
/* loaded from: classes5.dex */
public class VmPipeAcceptor extends BaseSessionManager implements ProtocolAcceptor {
    static final Map boundHandlers = new HashMap();
    private final VmPipeSessionManagerFilterChain filterChain;

    public VmPipeAcceptor() {
        VmPipeSessionManagerFilterChain vmPipeSessionManagerFilterChain = new VmPipeSessionManagerFilterChain(this);
        this.filterChain = vmPipeSessionManagerFilterChain;
        vmPipeSessionManagerFilterChain.addFirst("VMPipe", new VmPipeFilter());
    }

    @Override // org.apache.mina.protocol.ProtocolAcceptor
    public void bind(SocketAddress socketAddress, ProtocolProvider protocolProvider) throws IOException {
        if (socketAddress == null) {
            throw new NullPointerException("address");
        }
        if (protocolProvider == null) {
            throw new NullPointerException("protocolProvider");
        }
        if (!(socketAddress instanceof VmPipeAddress)) {
            throw new IllegalArgumentException("address must be VmPipeAddress.");
        }
        Map map = boundHandlers;
        synchronized (map) {
            if (map.containsKey(socketAddress)) {
                throw new IOException(new StringBuffer("Address already bound: ").append(socketAddress).toString());
            }
            map.put(socketAddress, new Entry((VmPipeAddress) socketAddress, this.filterChain, protocolProvider.getHandler()));
        }
    }

    @Override // org.apache.mina.protocol.ProtocolAcceptor
    public void unbind(SocketAddress socketAddress) {
        if (socketAddress == null) {
            throw new NullPointerException("address");
        }
        Map map = boundHandlers;
        synchronized (map) {
            map.remove(socketAddress);
        }
    }

    @Override // org.apache.mina.protocol.ProtocolSessionManager
    public ProtocolFilterChain getFilterChain() {
        return this.filterChain;
    }

    /* loaded from: classes5.dex */
    static class Entry {
        final VmPipeAcceptor acceptor;
        final VmPipeAddress address;
        final ProtocolHandler handler;
        final VmPipeSessionManagerFilterChain managerFilterChain;

        private Entry(VmPipeAcceptor vmPipeAcceptor, VmPipeAddress vmPipeAddress, VmPipeSessionManagerFilterChain vmPipeSessionManagerFilterChain, ProtocolHandler protocolHandler) {
            this.acceptor = vmPipeAcceptor;
            this.address = vmPipeAddress;
            this.managerFilterChain = vmPipeSessionManagerFilterChain;
            this.handler = protocolHandler;
        }
    }
}
