package org.apache.kerberos.messages.value;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.crypto.encryption.EncryptionType;
import org.apache.kerberos.messages.components.Ticket;
/* loaded from: classes5.dex */
public class RequestBody {
    private Ticket[] _additionalTickets;
    private HostAddresses _addresses;
    private KerberosPrincipal _clientPrincipal;
    private EncryptionType[] _eType;
    private EncryptedData _encAuthorizationData;
    private KerberosTime _from;
    private KdcOptions _kdcOptions;
    private int _nonce;
    private KerberosTime _rtime;
    private KerberosPrincipal _serverPrincipal;
    private KerberosTime _till;

    public RequestBody(KdcOptions kdcOptions, KerberosPrincipal kerberosPrincipal, KerberosPrincipal kerberosPrincipal2, KerberosTime kerberosTime, KerberosTime kerberosTime2, KerberosTime kerberosTime3, int i, EncryptionType[] encryptionTypeArr, HostAddresses hostAddresses, EncryptedData encryptedData, Ticket[] ticketArr) {
        this._kdcOptions = kdcOptions;
        this._clientPrincipal = kerberosPrincipal;
        this._serverPrincipal = kerberosPrincipal2;
        this._from = kerberosTime;
        this._till = kerberosTime2;
        this._rtime = kerberosTime3;
        this._nonce = i;
        this._eType = encryptionTypeArr;
        this._addresses = hostAddresses;
        this._encAuthorizationData = encryptedData;
        this._additionalTickets = ticketArr;
    }

    public Ticket[] getAdditionalTickets() {
        return this._additionalTickets;
    }

    public HostAddresses getAddresses() {
        return this._addresses;
    }

    public KerberosPrincipal getClientPrincipal() {
        return this._clientPrincipal;
    }

    public KerberosPrincipal getServerPrincipal() {
        return this._serverPrincipal;
    }

    public EncryptedData getEncAuthorizationData() {
        return this._encAuthorizationData;
    }

    public EncryptionType[] getEType() {
        return this._eType;
    }

    public KerberosTime getFrom() {
        return this._from;
    }

    public KdcOptions getKdcOptions() {
        return this._kdcOptions;
    }

    public int getNonce() {
        return this._nonce;
    }

    public KerberosTime getRtime() {
        return this._rtime;
    }

    public KerberosTime getTill() {
        return this._till;
    }
}
