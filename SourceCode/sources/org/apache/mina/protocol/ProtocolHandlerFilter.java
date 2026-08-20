package org.apache.mina.protocol;

import org.apache.mina.common.IdleStatus;
/* loaded from: classes5.dex */
public interface ProtocolHandlerFilter {

    /* loaded from: classes5.dex */
    public interface NextFilter extends ProtocolHandler {
        void filterWrite(ProtocolSession protocolSession, Object obj);
    }

    void exceptionCaught(NextFilter nextFilter, ProtocolSession protocolSession, Throwable th);

    void filterWrite(NextFilter nextFilter, ProtocolSession protocolSession, Object obj);

    void messageReceived(NextFilter nextFilter, ProtocolSession protocolSession, Object obj);

    void messageSent(NextFilter nextFilter, ProtocolSession protocolSession, Object obj);

    void sessionClosed(NextFilter nextFilter, ProtocolSession protocolSession);

    void sessionIdle(NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus);

    void sessionOpened(NextFilter nextFilter, ProtocolSession protocolSession);
}
