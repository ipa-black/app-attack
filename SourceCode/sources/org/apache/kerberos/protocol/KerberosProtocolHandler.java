package org.apache.kerberos.protocol;

import java.io.IOException;
import org.apache.kerberos.exceptions.ErrorType;
import org.apache.kerberos.exceptions.KerberosException;
import org.apache.kerberos.kdc.AuthenticationService;
import org.apache.kerberos.kdc.ErrorService;
import org.apache.kerberos.kdc.TicketGrantingService;
import org.apache.kerberos.messages.KdcRequest;
import org.apache.kerberos.service.KdcConfiguration;
import org.apache.kerberos.store.PrincipalStore;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes5.dex */
public class KerberosProtocolHandler implements ProtocolHandler {
    private AuthenticationService authService;
    private ErrorService errorService;
    private TicketGrantingService tgsService;

    public KerberosProtocolHandler(KdcConfiguration kdcConfiguration, PrincipalStore principalStore) {
        this.errorService = new ErrorService(kdcConfiguration);
        this.authService = new AuthenticationService(kdcConfiguration, principalStore);
        this.tgsService = new TicketGrantingService(kdcConfiguration, principalStore);
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionOpened(ProtocolSession protocolSession) {
        System.out.println(new StringBuffer().append(protocolSession.getRemoteAddress()).append(" OPENED").toString());
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionClosed(ProtocolSession protocolSession) {
        System.out.println(new StringBuffer().append(protocolSession.getRemoteAddress()).append(" CLOSED").toString());
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) {
        System.out.println(new StringBuffer().append(protocolSession.getRemoteAddress()).append(" IDLE(").append(idleStatus).append(")").toString());
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void exceptionCaught(ProtocolSession protocolSession, Throwable th) {
        System.out.println(new StringBuffer().append(protocolSession.getRemoteAddress()).append(" EXCEPTION").toString());
        th.printStackTrace(System.out);
        protocolSession.close();
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        System.out.println(new StringBuffer().append(protocolSession.getRemoteAddress()).append(" RCVD: ").append(obj).toString());
        try {
            KdcRequest kdcRequest = (KdcRequest) obj;
            switch (kdcRequest.getMessageType().getOrdinal()) {
                case 10:
                    protocolSession.write(this.authService.getReplyFor(kdcRequest));
                    return;
                case 11:
                case 13:
                    throw new KerberosException(ErrorType.KRB_AP_ERR_BADDIRECTION);
                case 12:
                    protocolSession.write(this.tgsService.getReplyFor(kdcRequest));
                    return;
                default:
                    throw new KerberosException(ErrorType.KRB_AP_ERR_MSG_TYPE);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (KerberosException e3) {
            System.out.println(new StringBuffer("Returning error message:  ").append(e3.getMessage()).toString());
            protocolSession.write(this.errorService.getReplyFor(e3));
        }
    }

    @Override // org.apache.mina.protocol.ProtocolHandler
    public void messageSent(ProtocolSession protocolSession, Object obj) {
        System.out.println(new StringBuffer().append(protocolSession.getRemoteAddress()).append(" SENT: ").append(obj).toString());
    }
}
