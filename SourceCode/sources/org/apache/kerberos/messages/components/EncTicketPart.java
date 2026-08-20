package org.apache.kerberos.messages.components;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.AuthorizationData;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.HostAddresses;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.TicketFlags;
import org.apache.kerberos.messages.value.TransitedEncoding;
/* loaded from: classes5.dex */
public class EncTicketPart {
    private AuthorizationData _authorizationData;
    private KerberosTime _authtime;
    private HostAddresses _clientAddresses;
    private KerberosPrincipal _clientPrincipal;
    private KerberosTime _endTime;
    private TicketFlags _flags;
    private KerberosTime _renewTill;
    private EncryptionKey _sessionKey;
    private KerberosTime _startTime;
    private TransitedEncoding _transitedEncoding;

    public EncTicketPart(TicketFlags ticketFlags, EncryptionKey encryptionKey, KerberosPrincipal kerberosPrincipal, TransitedEncoding transitedEncoding, KerberosTime kerberosTime, KerberosTime kerberosTime2, KerberosTime kerberosTime3, KerberosTime kerberosTime4, HostAddresses hostAddresses, AuthorizationData authorizationData) {
        this._flags = ticketFlags;
        this._sessionKey = encryptionKey;
        this._clientPrincipal = kerberosPrincipal;
        this._transitedEncoding = transitedEncoding;
        this._authtime = kerberosTime;
        this._startTime = kerberosTime2;
        this._endTime = kerberosTime3;
        this._renewTill = kerberosTime4;
        this._clientAddresses = hostAddresses;
        this._authorizationData = authorizationData;
    }

    public AuthorizationData getAuthorizationData() {
        return this._authorizationData;
    }

    public KerberosTime getAuthTime() {
        return this._authtime;
    }

    public HostAddresses getClientAddresses() {
        return this._clientAddresses;
    }

    public KerberosPrincipal getClientPrincipal() {
        return this._clientPrincipal;
    }

    public String getClientRealm() {
        return this._clientPrincipal.getRealm();
    }

    public KerberosTime getEndTime() {
        return this._endTime;
    }

    public TicketFlags getFlags() {
        return this._flags;
    }

    public EncryptionKey getSessionKey() {
        return this._sessionKey;
    }

    public KerberosTime getRenewTill() {
        return this._renewTill;
    }

    public KerberosTime getStartTime() {
        return this._startTime;
    }

    public TransitedEncoding getTransitedEncoding() {
        return this._transitedEncoding;
    }
}
