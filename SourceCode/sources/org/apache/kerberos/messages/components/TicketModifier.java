package org.apache.kerberos.messages.components;

import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.KerberosPrincipalModifier;
import org.apache.kerberos.messages.value.PrincipalName;
/* loaded from: classes5.dex */
public class TicketModifier {
    private EncryptedData _encPart;
    private KerberosPrincipalModifier _serverModifier = new KerberosPrincipalModifier();
    private int _ticketVersionNumber;

    public Ticket getTicket() {
        return new Ticket(this._ticketVersionNumber, this._serverModifier.getKerberosPrincipal(), this._encPart);
    }

    public void setTicketVersionNumber(int i) {
        this._ticketVersionNumber = i;
    }

    public void setEncPart(EncryptedData encryptedData) {
        this._encPart = encryptedData;
    }

    public void setServerName(PrincipalName principalName) {
        this._serverModifier.setPrincipalName(principalName);
    }

    public void setServerRealm(String str) {
        this._serverModifier.setRealm(str);
    }
}
