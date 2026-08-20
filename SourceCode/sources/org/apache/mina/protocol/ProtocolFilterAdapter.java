package org.apache.mina.protocol;

import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolFilter;
/* loaded from: classes5.dex */
public class ProtocolFilterAdapter implements ProtocolFilter {
    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionOpened(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
        nextFilter.sessionOpened(protocolSession);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionClosed(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
        nextFilter.sessionClosed(protocolSession);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionIdle(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus) {
        nextFilter.sessionIdle(protocolSession, idleStatus);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void exceptionCaught(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Throwable th) {
        nextFilter.exceptionCaught(protocolSession, th);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void messageReceived(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        nextFilter.messageReceived(protocolSession, obj);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void messageSent(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        nextFilter.messageSent(protocolSession, obj);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void filterWrite(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        nextFilter.filterWrite(protocolSession, obj);
    }
}
