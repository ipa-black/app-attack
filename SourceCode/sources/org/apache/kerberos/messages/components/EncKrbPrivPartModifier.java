package org.apache.kerberos.messages.components;

import org.apache.kerberos.messages.value.HostAddress;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class EncKrbPrivPartModifier {
    private HostAddress _recipientAddress;
    private HostAddress _senderAddress;
    private Integer _sequenceNumber;
    private KerberosTime _timestamp;
    private Integer _usec;
    private byte[] _userData;

    public EncKrbPrivPart getEncKrbPrivPart() {
        return new EncKrbPrivPart(this._userData, this._timestamp, this._usec, this._sequenceNumber, this._senderAddress, this._recipientAddress);
    }

    public void setRecipientAddress(HostAddress hostAddress) {
        this._recipientAddress = hostAddress;
    }

    public void setSenderAddress(HostAddress hostAddress) {
        this._senderAddress = hostAddress;
    }

    public void setSequenceNumber(Integer num) {
        this._sequenceNumber = num;
    }

    public void setTimestamp(KerberosTime kerberosTime) {
        this._timestamp = kerberosTime;
    }

    public void setMicroSecond(Integer num) {
        this._usec = num;
    }

    public void setUserData(byte[] bArr) {
        this._userData = bArr;
    }
}
