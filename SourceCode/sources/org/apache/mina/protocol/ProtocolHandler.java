package org.apache.mina.protocol;

import org.apache.mina.common.IdleStatus;
/* loaded from: classes5.dex */
public interface ProtocolHandler {
    void exceptionCaught(ProtocolSession protocolSession, Throwable th) throws Exception;

    void messageReceived(ProtocolSession protocolSession, Object obj) throws Exception;

    void messageSent(ProtocolSession protocolSession, Object obj) throws Exception;

    void sessionClosed(ProtocolSession protocolSession) throws Exception;

    void sessionCreated(ProtocolSession protocolSession) throws Exception;

    void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) throws Exception;

    void sessionOpened(ProtocolSession protocolSession) throws Exception;
}
