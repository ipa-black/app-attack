package org.apache.mina.protocol.handler;

import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes5.dex */
public interface MessageHandler {
    public static final MessageHandler NOOP = new MessageHandler() { // from class: org.apache.mina.protocol.handler.MessageHandler.1
        @Override // org.apache.mina.protocol.handler.MessageHandler
        public void messageReceived(ProtocolSession protocolSession, Object obj) {
        }
    };

    void messageReceived(ProtocolSession protocolSession, Object obj);
}
