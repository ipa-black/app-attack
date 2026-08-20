package org.apache.kerberos.messages.application;

import org.apache.kerberos.messages.KerberosMessage;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.value.EncryptedData;
/* loaded from: classes5.dex */
public class ApplicationReply extends KerberosMessage {
    private EncryptedData _encryptedPart;

    public ApplicationReply(EncryptedData encryptedData) {
        super(MessageType.KRB_AP_REP);
        this._encryptedPart = encryptedData;
    }

    public EncryptedData getEncPart() {
        return this._encryptedPart;
    }
}
