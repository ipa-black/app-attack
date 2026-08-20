package org.apache.kerberos.messages.value;

import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.messages.components.Ticket;
/* loaded from: classes5.dex */
public class RequestBodyModifier {
    private Ticket[] _additionalTickets;
    private HostAddresses _addresses;
    private EncryptionType[] _eType;
    private EncryptedData _encAuthorizationData;
    private KerberosTime _from;
    private KdcOptions _kdcOptions;
    private int _nonce;
    private KerberosTime _rtime;
    private KerberosTime _till;
    private KerberosPrincipalModifier _clientModifier = new KerberosPrincipalModifier();
    private KerberosPrincipalModifier _serverModifier = new KerberosPrincipalModifier();

    public RequestBody getRequestBody() {
        return new RequestBody(this._kdcOptions, this._clientModifier.getKerberosPrincipal(), this._serverModifier.getKerberosPrincipal(), this._from, this._till, this._rtime, this._nonce, this._eType, this._addresses, this._encAuthorizationData, this._additionalTickets);
    }

    public void setClientName(PrincipalName principalName) {
        this._clientModifier.setPrincipalName(principalName);
    }

    public void setServerName(PrincipalName principalName) {
        this._serverModifier.setPrincipalName(principalName);
    }

    public void setRealm(String str) {
        this._clientModifier.setRealm(str);
        this._serverModifier.setRealm(str);
    }

    public void setAdditionalTickets(Ticket[] ticketArr) {
        this._additionalTickets = ticketArr;
    }

    public void setAddresses(HostAddresses hostAddresses) {
        this._addresses = hostAddresses;
    }

    public void setEncAuthorizationData(EncryptedData encryptedData) {
        this._encAuthorizationData = encryptedData;
    }

    public void setEType(EncryptionType[] encryptionTypeArr) {
        this._eType = encryptionTypeArr;
    }

    public void setFrom(KerberosTime kerberosTime) {
        this._from = kerberosTime;
    }

    public void setKdcOptions(KdcOptions kdcOptions) {
        this._kdcOptions = kdcOptions;
    }

    public void setNonce(int i) {
        this._nonce = i;
    }

    public void setRtime(KerberosTime kerberosTime) {
        this._rtime = kerberosTime;
    }

    public void setTill(KerberosTime kerberosTime) {
        this._till = kerberosTime;
    }
}
