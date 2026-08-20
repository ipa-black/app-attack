package org.apache.mina.examples.reverser;

import org.apache.mina.protocol.ProtocolHandlerAdapter;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes4.dex */
public class ReverseProtocolHandler extends ProtocolHandlerAdapter {
    @Override // org.apache.mina.protocol.ProtocolHandlerAdapter, org.apache.mina.protocol.ProtocolHandler
    public void exceptionCaught(ProtocolSession protocolSession, Throwable th) {
        protocolSession.close();
    }

    @Override // org.apache.mina.protocol.ProtocolHandlerAdapter, org.apache.mina.protocol.ProtocolHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        String obj2 = obj.toString();
        StringBuffer stringBuffer = new StringBuffer(obj2.length());
        for (int length = obj2.length() - 1; length >= 0; length--) {
            stringBuffer.append(obj2.charAt(length));
        }
        protocolSession.write(stringBuffer.toString());
    }
}
