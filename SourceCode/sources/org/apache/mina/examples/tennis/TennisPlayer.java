package org.apache.mina.examples.tennis;

import org.apache.mina.protocol.ProtocolCodecFactory;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolHandlerAdapter;
import org.apache.mina.protocol.ProtocolProvider;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes4.dex */
public class TennisPlayer implements ProtocolProvider {
    private final ProtocolHandler HANDLER = new TennisPlayerHandler();

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolCodecFactory getCodecFactory() {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolHandler getHandler() {
        return this.HANDLER;
    }

    /* loaded from: classes4.dex */
    private static class TennisPlayerHandler extends ProtocolHandlerAdapter {
        private static int nextId;
        private final int id;

        private TennisPlayerHandler() {
            int i = nextId;
            nextId = i + 1;
            this.id = i;
        }

        @Override // org.apache.mina.protocol.ProtocolHandlerAdapter, org.apache.mina.protocol.ProtocolHandler
        public void sessionOpened(ProtocolSession protocolSession) {
            System.out.println(new StringBuffer("Player-").append(this.id).append(": READY").toString());
        }

        @Override // org.apache.mina.protocol.ProtocolHandlerAdapter, org.apache.mina.protocol.ProtocolHandler
        public void sessionClosed(ProtocolSession protocolSession) {
            System.out.println(new StringBuffer("Player-").append(this.id).append(": QUIT").toString());
        }

        @Override // org.apache.mina.protocol.ProtocolHandlerAdapter, org.apache.mina.protocol.ProtocolHandler
        public void messageReceived(ProtocolSession protocolSession, Object obj) {
            System.out.println(new StringBuffer("Player-").append(this.id).append(": RCVD ").append(obj).toString());
            TennisBall stroke = ((TennisBall) obj).stroke();
            if (stroke.getTTL() > 0) {
                protocolSession.write(stroke);
                return;
            }
            System.out.println(new StringBuffer("Player-").append(this.id).append(": LOSE").toString());
            protocolSession.close();
        }

        @Override // org.apache.mina.protocol.ProtocolHandlerAdapter, org.apache.mina.protocol.ProtocolHandler
        public void messageSent(ProtocolSession protocolSession, Object obj) {
            System.out.println(new StringBuffer("Player-").append(this.id).append(": SENT ").append(obj).toString());
        }
    }
}
