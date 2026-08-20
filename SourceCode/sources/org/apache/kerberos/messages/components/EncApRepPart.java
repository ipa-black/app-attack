package org.apache.kerberos.messages.components;

import org.apache.kerberos.messages.KerberosMessage;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class EncApRepPart extends KerberosMessage {
    private KerberosTime _clientTime;
    private int _cusec;
    private Integer _sequenceNumber;
    private EncryptionKey _subSessionKey;

    public EncApRepPart(KerberosTime kerberosTime, int i, EncryptionKey encryptionKey, Integer num) {
        super(MessageType.ENC_AP_REP_PART);
        this._clientTime = kerberosTime;
        this._cusec = i;
        this._subSessionKey = encryptionKey;
        this._sequenceNumber = num;
    }

    public KerberosTime getClientTime() {
        return this._clientTime;
    }

    public int getClientMicroSecond() {
        return this._cusec;
    }

    public Integer getSequenceNumber() {
        return this._sequenceNumber;
    }

    public EncryptionKey getSubSessionKey() {
        return this._subSessionKey;
    }
}
