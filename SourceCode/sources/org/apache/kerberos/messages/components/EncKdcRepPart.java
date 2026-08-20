package org.apache.kerberos.messages.components;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.HostAddresses;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.LastRequest;
import org.apache.kerberos.messages.value.TicketFlags;
/* loaded from: classes5.dex */
public class EncKdcRepPart {
    private KerberosTime _authTime;
    private HostAddresses _clientAddresses;
    private MessageComponentType _componentType;
    private KerberosTime _endTime;
    private TicketFlags _flags;
    private EncryptionKey _key;
    private KerberosTime _keyExpiration;
    private LastRequest _lastRequest;
    private int _nonce;
    private KerberosTime _renewTill;
    private KerberosPrincipal _serverPrincipal;
    private KerberosTime _startTime;

    public EncKdcRepPart() {
        this._flags = new TicketFlags();
    }

    public EncKdcRepPart(EncryptionKey encryptionKey, LastRequest lastRequest, int i, KerberosTime kerberosTime, TicketFlags ticketFlags, KerberosTime kerberosTime2, KerberosTime kerberosTime3, KerberosTime kerberosTime4, KerberosTime kerberosTime5, KerberosPrincipal kerberosPrincipal, HostAddresses hostAddresses, MessageComponentType messageComponentType) {
        new TicketFlags();
        this._key = encryptionKey;
        this._lastRequest = lastRequest;
        this._nonce = i;
        this._keyExpiration = kerberosTime;
        this._flags = ticketFlags;
        this._authTime = kerberosTime2;
        this._startTime = kerberosTime3;
        this._endTime = kerberosTime4;
        this._renewTill = kerberosTime5;
        this._serverPrincipal = kerberosPrincipal;
        this._clientAddresses = hostAddresses;
        this._componentType = messageComponentType;
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

    public KerberosTime getKeyExpiration() {
        return this._keyExpiration;
    }

    public LastRequest getLastRequest() {
        return this._lastRequest;
    }

    public int getNonce() {
        return this._nonce;
    }

    public KerberosTime getRenewTill() {
        return this._renewTill;
    }

    public KerberosPrincipal getServerPrincipal() {
        return this._serverPrincipal;
    }

    public String getServerRealm() {
        return this._serverPrincipal.getRealm();
    }

    public KerberosTime getStartTime() {
        return this._startTime;
    }

    public MessageComponentType getComponentType() {
        return this._componentType;
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

    public void setKey(EncryptionKey encryptionKey) {
        this._key = encryptionKey;
    }

    public void setKeyExpiration(KerberosTime kerberosTime) {
        this._keyExpiration = kerberosTime;
    }

    public void setLastRequest(LastRequest lastRequest) {
        this._lastRequest = lastRequest;
    }

    public void setNonce(int i) {
        this._nonce = i;
    }

    public void setRenewTill(KerberosTime kerberosTime) {
        this._renewTill = kerberosTime;
    }

    public void setServerPrincipal(KerberosPrincipal kerberosPrincipal) {
        this._serverPrincipal = kerberosPrincipal;
    }

    public void setStartTime(KerberosTime kerberosTime) {
        this._startTime = kerberosTime;
    }
}
