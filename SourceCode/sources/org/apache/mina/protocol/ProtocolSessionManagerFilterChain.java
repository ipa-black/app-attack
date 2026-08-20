package org.apache.mina.protocol;

import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolFilter;
/* loaded from: classes5.dex */
public abstract class ProtocolSessionManagerFilterChain extends AbstractProtocolFilterChain {
    private final ProtocolSessionManager manager;

    /* JADX INFO: Access modifiers changed from: protected */
    public ProtocolSessionManagerFilterChain(ProtocolSessionManager protocolSessionManager) {
        this.manager = protocolSessionManager;
    }

    public ProtocolSessionManager getManager() {
        return this.manager;
    }

    @Override // org.apache.mina.protocol.AbstractProtocolFilterChain
    protected ProtocolFilter createTailFilter() {
        return new ProtocolFilter() { // from class: org.apache.mina.protocol.ProtocolSessionManagerFilterChain.1
            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionOpened(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
                ((ProtocolSessionFilterChain) protocolSession.getFilterChain()).sessionOpened(protocolSession);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionClosed(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
                ((ProtocolSessionFilterChain) protocolSession.getFilterChain()).sessionClosed(protocolSession);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionIdle(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus) {
                ((ProtocolSessionFilterChain) protocolSession.getFilterChain()).sessionIdle(protocolSession, idleStatus);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void exceptionCaught(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Throwable th) {
                ((ProtocolSessionFilterChain) protocolSession.getFilterChain()).exceptionCaught(protocolSession, th);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void messageReceived(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
                ((ProtocolSessionFilterChain) protocolSession.getFilterChain()).messageReceived(protocolSession, obj);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void messageSent(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
                ((ProtocolSessionFilterChain) protocolSession.getFilterChain()).messageSent(protocolSession, obj);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void filterWrite(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
                nextFilter.filterWrite(protocolSession, obj);
            }
        };
    }
}
