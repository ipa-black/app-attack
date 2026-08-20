package org.apache.kerberos.messages.value;

import javax.security.auth.kerberos.KerberosPrincipal;
/* loaded from: classes5.dex */
public class KrbCredInfo {
    private KerberosTime _authTime;
    private HostAddresses _clientAddresses;
    private KerberosPrincipal _clientPrincipal;
    private KerberosTime _endTime;
    private TicketFlags _flags;
    private EncryptionKey _key;
    private KerberosTime _renewTill;
    private KerberosPrincipal _serverPrincipal;
    private KerberosTime _startTime;

    public KrbCredInfo(EncryptionKey encryptionKey, KerberosPrincipal kerberosPrincipal, TicketFlags ticketFlags, KerberosTime kerberosTime, KerberosTime kerberosTime2, KerberosTime kerberosTime3, KerberosTime kerberosTime4, KerberosPrincipal kerberosPrincipal2, HostAddresses hostAddresses) {
        this._key = encryptionKey;
        this._clientPrincipal = kerberosPrincipal;
        this._flags = ticketFlags;
        this._authTime = kerberosTime;
        this._startTime = kerberosTime2;
        this._endTime = kerberosTime3;
        this._renewTill = kerberosTime4;
        this._serverPrincipal = kerberosPrincipal2;
        this._clientAddresses = hostAddresses;
    }

    public KerberosTime getAuthTime() {
        return this._authTime;
    }

    public HostAddresses getClientAddresses() {
        return this._clientAddresses;
    }

    public KerberosTime getEndTime() {
        return this._endTime;
    }

    public TicketFlags getFlags() {
        return this._flags;
    }

    public EncryptionKey getKey() {
        return this._key;
    }

    public KerberosPrincipal getClientPrincipal() {
        return this._clientPrincipal;
    }

    public KerberosTime getRenewTill() {
        return this._renewTill;
    }

    public KerberosPrincipal getServerPrincipal() {
        return this._serverPrincipal;
    }

    public KerberosTime getStartTime() {
        return this._startTime;
    }
}
