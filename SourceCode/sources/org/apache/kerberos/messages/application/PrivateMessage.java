package org.apache.kerberos.messages.application;

import org.apache.kerberos.messages.KerberosMessage;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.value.EncryptedData;
/* loaded from: classes5.dex */
public class PrivateMessage extends KerberosMessage {
    private EncryptedData _encryptedPart;

    public PrivateMessage() {
        super(MessageType.KRB_PRIV);
    }

    public PrivateMessage(EncryptedData encryptedData) {
        super(MessageType.KRB_PRIV);
        this._encryptedPart = encryptedData;
    }

    public EncryptedData getEncryptedPart() {
        return this._encryptedPart;
    }

    public void setEncryptedPart(EncryptedData encryptedData) {
        this._encryptedPart = encryptedData;
    }
}
