package org.apache.mina.examples.sumup;

import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes4.dex */
public class ServerSessionHandler implements ProtocolHandler {
    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionOpened(ProtocolSession protocolSession) {
        System.out.println("OPENED");
        protocolSession.getConfig().setIdleTime(IdleStatus.BOTH_IDLE, 60);
        protocolSession.setAttachment((Object) new Integer(0));
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionClosed(ProtocolSession protocolSession) {
        System.out.println("CLOSED");
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        System.out.println(new StringBuffer("RCVD: ").append(obj).toString());
        AddMessage addMessage = (AddMessage) obj;
        long intValue = ((Integer) protocolSession.getAttachment()).intValue() + addMessage.getValue();
        if (intValue > 2147483647L || intValue < -2147483648L) {
            ResultMessage resultMessage = new ResultMessage();
            resultMessage.setSequence(addMessage.getSequence());
            resultMessage.setOk(false);
            protocolSession.write(resultMessage);
            return;
        }
        int i = (int) intValue;
        protocolSession.setAttachment(new Integer(i));
        ResultMessage resultMessage2 = new ResultMessage();
        resultMessage2.setSequence(addMessage.getSequence());
        resultMessage2.setOk(true);
        resultMessage2.setValue(i);
        protocolSession.write(resultMessage2);
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageSent(ProtocolSession protocolSession, Object obj) {
        System.out.println(new StringBuffer("SENT: ").append(obj).toString());
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) {
        System.out.println("Disconnecting the idle.");
        protocolSession.close();
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void exceptionCaught(ProtocolSession protocolSession, Throwable th) {
        th.printStackTrace();
        protocolSession.close();
    }
}
