package org.apache.mina.protocol.handler;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes5.dex */
public abstract class DemuxingProtocolHandler implements ProtocolHandler {
    private final Map type2handler = new HashMap();

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerMessageType(Class cls, MessageHandler messageHandler) {
        synchronized (this.type2handler) {
            this.type2handler.put(cls, messageHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void deregisterMessageType(Class cls) {
        synchronized (this.type2handler) {
            this.type2handler.remove(cls);
        }
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        MessageHandler findHandler = findHandler(obj.getClass());
        if (findHandler != null) {
            findHandler.messageReceived(protocolSession, obj);
            return;
        }
        throw new UnknownMessageTypeException(new StringBuffer("No message handler found for message: ").append(obj).toString());
    }

    private MessageHandler findHandler(Class cls) {
        MessageHandler messageHandler = (MessageHandler) this.type2handler.get(cls);
        return messageHandler == null ? findHandler(cls, new HashSet()) : messageHandler;
    }

    private MessageHandler findHandler(Class cls, Set set) {
        if (set.contains(cls)) {
            return null;
        }
        set.add(cls);
        MessageHandler messageHandler = (MessageHandler) this.type2handler.get(cls);
        if (messageHandler == null) {
            MessageHandler findHandler = findHandler(cls, set);
            if (findHandler != null) {
                return findHandler;
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                MessageHandler findHandler2 = findHandler(cls2, set);
                if (findHandler2 != null) {
                    return findHandler2;
                }
            }
            return null;
        }
        return messageHandler;
    }
}
