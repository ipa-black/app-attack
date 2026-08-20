package org.apache.kerberos.messages.components;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.HostAddresses;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.LastRequest;
import org.apache.kerberos.messages.value.TicketFlags;
/* loaded from: classes5.dex */
public class EncTgsRepPart extends EncKdcRepPart {
    public EncTgsRepPart(EncryptionKey encryptionKey, LastRequest lastRequest, int i, KerberosTime kerberosTime, TicketFlags ticketFlags, KerberosTime kerberosTime2, KerberosTime kerberosTime3, KerberosTime kerberosTime4, KerberosTime kerberosTime5, KerberosPrincipal kerberosPrincipal, HostAddresses hostAddresses) {
        super(encryptionKey, lastRequest, i, kerberosTime, ticketFlags, kerberosTime2, kerberosTime3, kerberosTime4, kerberosTime5, kerberosPrincipal, hostAddresses, MessageComponentType.KRB_ENC_TGS_REP_PART);
    }
}
