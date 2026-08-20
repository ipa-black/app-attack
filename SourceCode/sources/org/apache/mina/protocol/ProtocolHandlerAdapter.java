package org.apache.mina.protocol;

import org.apache.mina.common.IdleStatus;
import org.apache.mina.util.SessionUtil;
/* loaded from: classes5.dex */
public class ProtocolHandlerAdapter implements ProtocolHandler {
    @Override // org.apache.mina.protocol.ProtocolHandler
    public void exceptionCaught(ProtocolSession protocolSession, Throwable th) throws Exception {
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) throws Exception {
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageSent(ProtocolSession protocolSession, Object obj) throws Exception {
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionClosed(ProtocolSession protocolSession) throws Exception {
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) throws Exception {
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionOpened(ProtocolSession protocolSession) throws Exception {
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionCreated(ProtocolSession protocolSession) throws Exception {
        SessionUtil.initialize(protocolSession);
    }
}
