package org.apache.mina.examples.sumup;

import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes4.dex */
public class ClientSessionHandler implements ProtocolHandler {
    private boolean finished;
    private final int[] values;

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) {
    }

    public ClientSessionHandler(int[] iArr) {
        this.values = iArr;
    }

    public boolean isFinished() {
        return this.finished;
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionOpened(ProtocolSession protocolSession) {
        System.out.println("OPENED");
        for (int i = 0; i < this.values.length; i++) {
            AddMessage addMessage = new AddMessage();
            addMessage.setSequence(i);
            addMessage.setValue(this.values[i]);
            protocolSession.write(addMessage);
        }
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionClosed(ProtocolSession protocolSession) {
        System.out.println("CLOSED");
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        System.out.println(new StringBuffer("RCVD: ").append(obj).toString());
        ResultMessage resultMessage = (ResultMessage) obj;
        if (resultMessage.isOk()) {
            if (resultMessage.getSequence() == this.values.length - 1) {
                System.out.println(new StringBuffer("The sum: ").append(resultMessage.getValue()).toString());
                protocolSession.close();
                this.finished = true;
                return;
            }
            return;
        }
        System.err.println("Server error, disconnecting...");
        protocolSession.close();
        this.finished = true;
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageSent(ProtocolSession protocolSession, Object obj) {
        System.out.println(new StringBuffer("SENT: ").append(obj).toString());
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void exceptionCaught(ProtocolSession protocolSession, Throwable th) {
        th.printStackTrace();
        protocolSession.close();
    }
}
