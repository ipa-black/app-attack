package org.apache.ldap.server.protocol;

import org.apache.ldap.common.NotImplementedException;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class ExtendedHandler implements MessageHandler {
    @Override // org.apache.mina.protocol.handler.MessageHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        throw new NotImplementedException("handle in org.apache.ldap.server.protocol.ExtendedHandler not implemented!");
    }
}
