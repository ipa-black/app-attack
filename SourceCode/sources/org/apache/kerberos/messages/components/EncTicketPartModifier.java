package org.apache.kerberos.messages.components;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.AuthorizationData;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.HostAddresses;
import org.apache.kerberos.messages.value.KerberosPrincipalModifier;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.PrincipalName;
import org.apache.kerberos.messages.value.TicketFlags;
import org.apache.kerberos.messages.value.TransitedEncoding;
/* loaded from: classes5.dex */
public class EncTicketPartModifier {
    private KerberosTime _authTime;
    private AuthorizationData _authorizationData;
    private HostAddresses _clientAddresses;
    private KerberosPrincipal _clientPrincipal;
    private KerberosTime _endTime;
    private TicketFlags _flags = new TicketFlags();
    private KerberosPrincipalModifier _modifier = new KerberosPrincipalModifier();
    private KerberosTime _renewTill;
    private EncryptionKey _sessionKey;
    private KerberosTime _startTime;
    private TransitedEncoding _transitedEncoding;

    public EncTicketPart getEncTicketPart() {
        if (this._clientPrincipal == null) {
            this._clientPrincipal = this._modifier.getKerberosPrincipal();
        }
        return new EncTicketPart(this._flags, this._sessionKey, this._clientPrincipal, this._transitedEncoding, this._authTime, this._startTime, this._endTime, this._renewTill, this._clientAddresses, this._authorizationData);
    }

    public void setClientName(PrincipalName principalName) {
        this._modifier.setPrincipalName(principalName);
    }

    public void setClientRealm(String str) {
        this._modifier.setRealm(str);
    }

    public void setClientPrincipal(KerberosPrincipal kerberosPrincipal) {
        this._clientPrincipal = kerberosPrincipal;
    }

    public void setAuthorizationData(AuthorizationData authorizationData) {
        this._authorizationData = authorizationData;
    }

    public void setAuthTime(KerberosTime kerberosTime) {
        this._authTime = kerberosTime;
    }

    public void setClientAddresses(HostAddresses hostAddresses) {
        this._clientAddresses = hostAddresses;
    }

    public void setEndTime(KerberosTime kerberosTime) {
        this._endTime = kerberosTime;
    }

    public void setFlags(TicketFlags ticketFlags) {
        this._flags = ticketFlags;
    }

    public void setFlag(int i) {
        this._flags.set(i);
    }

    public void clearFlag(int i) {
        this._flags.clear(i);
    }

    public void setRenewTill(KerberosTime kerberosTime) {
        this._renewTill = kerberosTime;
    }

    public void setSessionKey(EncryptionKey encryptionKey) {
        this._sessionKey = encryptionKey;
    }

    public void setStartTime(KerberosTime kerberosTime) {
        this._startTime = kerberosTime;
    }

    public void setTransitedEncoding(TransitedEncoding transitedEncoding) {
        this._transitedEncoding = transitedEncoding;
    }
}
