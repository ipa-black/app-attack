package org.apache.kerberos.messages;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.components.EncKdcRepPart;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.HostAddresses;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.LastRequest;
import org.apache.kerberos.messages.value.PreAuthenticationData;
import org.apache.kerberos.messages.value.TicketFlags;
/* loaded from: classes5.dex */
public class KdcReply extends KerberosMessage {
    private KerberosPrincipal _clientPrincipal;
    private EncKdcRepPart _encKDCRepPart;
    private EncryptedData _encPart;
    private PreAuthenticationData[] _paData;
    private Ticket _ticket;

    public KdcReply(MessageType messageType) {
        super(messageType);
        this._encKDCRepPart = new EncKdcRepPart();
    }

    public KdcReply(PreAuthenticationData[] preAuthenticationDataArr, KerberosPrincipal kerberosPrincipal, Ticket ticket, EncryptedData encryptedData, MessageType messageType) {
        this(messageType);
        this._paData = preAuthenticationDataArr;
        this._clientPrincipal = kerberosPrincipal;
        this._ticket = ticket;
        this._encPart = encryptedData;
    }

    public KerberosPrincipal getClientPrincipal() {
        return this._clientPrincipal;
    }

    public String getClientRealm() {
        return this._clientPrincipal.getRealm();
    }

    public EncryptedData getEncPart() {
        return this._encPart;
    }

    public PreAuthenticationData[] getPaData() {
        return this._paData;
    }

    public Ticket getTicket() {
        return this._ticket;
    }

    public void setClientPrincipal(KerberosPrincipal kerberosPrincipal) {
        this._clientPrincipal = kerberosPrincipal;
    }

    public void setEncKDCRepPart(EncKdcRepPart encKdcRepPart) {
        this._encKDCRepPart = encKdcRepPart;
    }

    public void setEncPart(EncryptedData encryptedData) {
        this._encPart = encryptedData;
    }

    public void setPaData(PreAuthenticationData[] preAuthenticationDataArr) {
        this._paData = preAuthenticationDataArr;
    }

    public void setTicket(Ticket ticket) {
        this._ticket = ticket;
    }

    public KerberosTime getAuthTime() {
        return this._encKDCRepPart.getAuthTime();
    }

    public HostAddresses getClientAddresses() {
        return this._encKDCRepPart.getClientAddresses();
    }

    public KerberosTime getEndTime() {
        return this._encKDCRepPart.getEndTime();
    }

    public TicketFlags getFlags() {
        return this._encKDCRepPart.getFlags();
    }

    public EncryptionKey getKey() {
        return this._encKDCRepPart.getKey();
    }

    public KerberosTime getKeyExpiration() {
        return this._encKDCRepPart.getKeyExpiration();
    }

    public LastRequest getLastRequest() {
        return this._encKDCRepPart.getLastRequest();
    }

    public int getNonce() {
        return this._encKDCRepPart.getNonce();
    }

    public KerberosTime getRenewTill() {
        return this._encKDCRepPart.getRenewTill();
    }

    public KerberosPrincipal getServerPrincipal() {
        return this._encKDCRepPart.getServerPrincipal();
    }

    public String getServerRealm() {
        return this._encKDCRepPart.getServerRealm();
    }

    public KerberosTime getStartTime() {
        return this._encKDCRepPart.getStartTime();
    }

    public void setAuthTime(KerberosTime kerberosTime) {
        this._encKDCRepPart.setAuthTime(kerberosTime);
    }

    public void setClientAddresses(HostAddresses hostAddresses) {
        this._encKDCRepPart.setClientAddresses(hostAddresses);
    }

    public void setEndTime(KerberosTime kerberosTime) {
        this._encKDCRepPart.setEndTime(kerberosTime);
    }

    public void setFlags(TicketFlags ticketFlags) {
        this._encKDCRepPart.setFlags(ticketFlags);
    }

    public void setKey(EncryptionKey encryptionKey) {
        this._encKDCRepPart.setKey(encryptionKey);
    }

    public void setKeyExpiration(KerberosTime kerberosTime) {
        this._encKDCRepPart.setKeyExpiration(kerberosTime);
    }

    public void setLastRequest(LastRequest lastRequest) {
        this._encKDCRepPart.setLastRequest(lastRequest);
    }

    public void setNonce(int i) {
        this._encKDCRepPart.setNonce(i);
    }

    public void setRenewTill(KerberosTime kerberosTime) {
        this._encKDCRepPart.setRenewTill(kerberosTime);
    }

    public void setServerPrincipal(KerberosPrincipal kerberosPrincipal) {
        this._encKDCRepPart.setServerPrincipal(kerberosPrincipal);
    }

    public void setStartTime(KerberosTime kerberosTime) {
        this._encKDCRepPart.setStartTime(kerberosTime);
    }
}
