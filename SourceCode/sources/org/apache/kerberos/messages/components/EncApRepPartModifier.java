package org.apache.kerberos.messages.components;

import org.apache.kerberos.messages.value.EncryptionKey;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class EncApRepPartModifier {
    private KerberosTime _clientTime;
    private int _cusec;
    private Integer _sequenceNumber;
    private EncryptionKey _subSessionKey;

    public EncApRepPart getEncApRepPart() {
        return new EncApRepPart(this._clientTime, this._cusec, this._subSessionKey, this._sequenceNumber);
    }

    public void setClientTime(KerberosTime kerberosTime) {
        this._clientTime = kerberosTime;
    }

    public void setClientMicroSecond(int i) {
        this._cusec = i;
    }

    public void setSubSessionKey(EncryptionKey encryptionKey) {
        this._subSessionKey = encryptionKey;
    }

    public void setSequenceNumber(Integer num) {
        this._sequenceNumber = num;
    }
}
