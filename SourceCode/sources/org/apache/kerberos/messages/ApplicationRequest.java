package org.apache.kerberos.messages;

import org.apache.kerberos.messages.components.Authenticator;
import org.apache.kerberos.messages.components.Ticket;
import org.apache.kerberos.messages.value.ApOptions;
import org.apache.kerberos.messages.value.EncryptedData;
/* loaded from: classes5.dex */
public class ApplicationRequest extends KerberosMessage {
    private ApOptions _apOptions;
    private Authenticator _authenticator;
    private EncryptedData _encPart;
    private Ticket _ticket;

    public ApplicationRequest() {
        super(MessageType.KRB_AP_REQ);
    }

    public ApplicationRequest(ApOptions apOptions, Ticket ticket, EncryptedData encryptedData) {
        super(MessageType.KRB_AP_REQ);
        this._apOptions = apOptions;
        this._ticket = ticket;
        this._encPart = encryptedData;
    }

    public ApOptions getApOptions() {
        return this._apOptions;
    }

    public Authenticator getAuthenticator() {
        return this._authenticator;
    }

    public Ticket getTicket() {
        return this._ticket;
    }

    public boolean getOption(int i) {
        return this._apOptions.get(i);
    }

    public void setOption(int i) {
        this._apOptions.set(i);
    }

    public void clearOption(int i) {
        this._apOptions.clear(i);
    }

    public EncryptedData getEncPart() {
        return this._encPart;
    }

    public void setEncPart(EncryptedData encryptedData) {
        this._encPart = encryptedData;
    }

    public void setApOptions(ApOptions apOptions) {
        this._apOptions = apOptions;
    }

    public void setAuthenticator(Authenticator authenticator) {
        this._authenticator = authenticator;
    }

    public void setTicket(Ticket ticket) {
        this._ticket = ticket;
    }
}
