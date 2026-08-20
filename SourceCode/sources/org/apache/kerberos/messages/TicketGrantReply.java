package org.apache.kerberos.messages;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.PreAuthenticationData;
/* loaded from: classes5.dex */
public class TicketGrantReply extends KdcReply {
    public TicketGrantReply() {
        super(MessageType.KRB_TGS_REP);
    }

    public TicketGrantReply(PreAuthenticationData[] preAuthenticationDataArr, KerberosPrincipal kerberosPrincipal, Ticket ticket, EncryptedData encryptedData) {
        super(preAuthenticationDataArr, kerberosPrincipal, ticket, encryptedData, MessageType.KRB_TGS_REP);
    }
}
