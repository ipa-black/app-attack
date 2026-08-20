package org.apache.ldap.server.protocol;

import org.apache.ldap.common.NotImplementedException;
import org.apache.ldap.common.message.AbandonRequest;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class AbandonHandler implements MessageHandler {
    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        if (((AbandonRequest) obj).getAbandoned() >= 0) {
            throw new NotImplementedException("don't know how to do this just yet");
        }
    }
}
