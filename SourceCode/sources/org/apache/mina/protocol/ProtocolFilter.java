package org.apache.mina.protocol;

import org.apache.mina.common.IdleStatus;
/* loaded from: classes5.dex */
public interface ProtocolFilter {

    /* loaded from: classes5.dex */
    public interface NextFilter {
        void exceptionCaught(ProtocolSession protocolSession, Throwable th);

        void filterWrite(ProtocolSession protocolSession, Object obj);

        void messageReceived(ProtocolSession protocolSession, Object obj);

        void messageSent(ProtocolSession protocolSession, Object obj);

        void sessionClosed(ProtocolSession protocolSession);

        void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus);

        void sessionOpened(ProtocolSession protocolSession);
    }

    void exceptionCaught(NextFilter nextFilter, ProtocolSession protocolSession, Throwable th) throws Exception;

    void filterWrite(NextFilter nextFilter, ProtocolSession protocolSession, Object obj) throws Exception;

    void messageReceived(NextFilter nextFilter, ProtocolSession protocolSession, Object obj) throws Exception;

    void messageSent(NextFilter nextFilter, ProtocolSession protocolSession, Object obj) throws Exception;

    void sessionClosed(NextFilter nextFilter, ProtocolSession protocolSession) throws Exception;

    void sessionIdle(NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus) throws Exception;

    void sessionOpened(NextFilter nextFilter, ProtocolSession protocolSession) throws Exception;
}
