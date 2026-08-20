package org.apache.kerberos.messages.application;

import org.apache.kerberos.messages.KerberosMessage;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.EncryptedData;
/* loaded from: classes5.dex */
public class CredentialMessage extends KerberosMessage {
    private EncryptedData _encPart;
    private Ticket[] _tickets;

    public CredentialMessage(EncryptedData encryptedData, Ticket[] ticketArr) {
        super(MessageType.KRB_CRED);
        this._encPart = encryptedData;
        this._tickets = ticketArr;
    }

    public EncryptedData getEncPart() {
        return this._encPart;
    }

    public Ticket[] getTickets() {
        return this._tickets;
    }
}
