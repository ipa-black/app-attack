package org.apache.kerberos.messages.components;

import javax.security.auth.kerberos.KerberosPrincipal;
import org.apache.kerberos.messages.value.AuthorizationData;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.HostAddresses;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.TicketFlags;
import org.apache.kerberos.messages.value.TransitedEncoding;
/* loaded from: classes5.dex */
public class Ticket {
    public static final int TICKET_VNO = 5;
    private EncryptedData _encPart;
    private EncTicketPart _encTicketPart;
    private KerberosPrincipal _serverPrincipal;
    private int _ticketVersionNumber;

    public Ticket(KerberosPrincipal kerberosPrincipal, EncryptedData encryptedData) {
        this(5, kerberosPrincipal, encryptedData);
    }

    public Ticket(int i, KerberosPrincipal kerberosPrincipal, EncryptedData encryptedData) {
        this._ticketVersionNumber = i;
        this._serverPrincipal = kerberosPrincipal;
        this._encPart = encryptedData;
    }

    public void setEncTicketPart(EncTicketPart encTicketPart) {
        this._encTicketPart = encTicketPart;
    }

    public int getTicketVersionNumber() {
        return this._ticketVersionNumber;
    }

    public KerberosPrincipal getServerPrincipal() {
        return this._serverPrincipal;
    }

    public String getRealm() {
        return this._serverPrincipal.getRealm();
    }

    public EncryptedData getEncPart() {
        return this._encPart;
    }

    public EncTicketPart getEncTicketPart() {
        return this._encTicketPart;
    }

    public AuthorizationData getAuthorizationData() {
        return this._encTicketPart.getAuthorizationData();
    }

    public KerberosTime getAuthTime() {
        return this._encTicketPart.getAuthTime();
    }

    public HostAddresses getClientAddresses() {
        return this._encTicketPart.getClientAddresses();
    }

    public KerberosPrincipal getClientPrincipal() {
        return this._encTicketPart.getClientPrincipal();
    }

    public String getClientRealm() {
        return this._encTicketPart.getClientPrincipal().getRealm();
    }

    public KerberosTime getEndTime() {
        return this._encTicketPart.getEndTime();
    }

    public TicketFlags getFlags() {
        return this._encTicketPart.getFlags();
    }

    public KerberosTime getRenewTill() {
        return this._encTicketPart.getRenewTill();
    }

    public EncryptionKey getSessionKey() {
        return this._encTicketPart.getSessionKey();
    }

    public KerberosTime getStartTime() {
        return this._encTicketPart.getStartTime();
    }

    public TransitedEncoding getTransitedEncoding() {
        return this._encTicketPart.getTransitedEncoding();
    }

    public boolean getFlag(int i) {
        return this._encTicketPart.getFlags().get(i);
    }
}
