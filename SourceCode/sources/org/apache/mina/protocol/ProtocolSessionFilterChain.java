package org.apache.mina.protocol;
/* loaded from: classes5.dex */
public class ProtocolSessionFilterChain extends AbstractProtocolFilterChain {
    private final ProtocolSessionManagerFilterChain managerChain;

    public ProtocolSessionFilterChain(ProtocolSessionManagerFilterChain protocolSessionManagerFilterChain) {
        this.managerChain = protocolSessionManagerFilterChain;
    }

    @Override // org.apache.mina.protocol.AbstractProtocolFilterChain
    protected void doWrite(ProtocolSession protocolSession, Object obj) {
        this.managerChain.filterWrite(protocolSession, obj);
    }
}
