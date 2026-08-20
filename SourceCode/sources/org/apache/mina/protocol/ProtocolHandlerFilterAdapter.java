package org.apache.mina.protocol;

import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolHandlerFilter;
/* loaded from: classes5.dex */
public class ProtocolHandlerFilterAdapter implements ProtocolHandlerFilter {
    @Override // org.apache.mina.protocol.ProtocolHandlerFilter
    public void sessionOpened(ProtocolHandlerFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
        nextFilter.sessionOpened(protocolSession);
    }

    @Override // org.apache.mina.protocol.ProtocolHandlerFilter
    public void sessionClosed(ProtocolHandlerFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
        nextFilter.sessionClosed(protocolSession);
    }

    @Override // org.apache.mina.protocol.ProtocolHandlerFilter
    public void sessionIdle(ProtocolHandlerFilter.NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus) {
        nextFilter.sessionIdle(protocolSession, idleStatus);
    }

    @Override // org.apache.mina.protocol.ProtocolHandlerFilter
    public void exceptionCaught(ProtocolHandlerFilter.NextFilter nextFilter, ProtocolSession protocolSession, Throwable th) {
        nextFilter.exceptionCaught(protocolSession, th);
    }

    @Override // org.apache.mina.protocol.ProtocolHandlerFilter
    public void messageReceived(ProtocolHandlerFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        nextFilter.messageReceived(protocolSession, obj);
    }

    @Override // org.apache.mina.protocol.ProtocolHandlerFilter
    public void messageSent(ProtocolHandlerFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        nextFilter.messageSent(protocolSession, obj);
    }

    @Override // org.apache.mina.protocol.ProtocolHandlerFilter
    public void filterWrite(ProtocolHandlerFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        nextFilter.filterWrite(protocolSession, obj);
    }
}
