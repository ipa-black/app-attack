package org.apache.kerberos.messages;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.PreAuthenticationData;
/* loaded from: classes5.dex */
public class AuthenticationReply extends KdcReply {
    public AuthenticationReply() {
        super(MessageType.KRB_AS_REP);
    }

    public AuthenticationReply(PreAuthenticationData[] preAuthenticationDataArr, KerberosPrincipal kerberosPrincipal, Ticket ticket, EncryptedData encryptedData) {
        super(preAuthenticationDataArr, kerberosPrincipal, ticket, encryptedData, MessageType.KRB_AS_REP);
    }
}
