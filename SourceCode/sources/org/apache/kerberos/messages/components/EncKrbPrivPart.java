package org.apache.kerberos.messages.components;

import org.apache.kerberos.messages.KerberosMessage;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.value.HostAddress;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class EncKrbPrivPart extends KerberosMessage {
    private HostAddress _recipientAddress;
    private HostAddress _senderAddress;
    private Integer _sequenceNumber;
    private KerberosTime _timestamp;
    private Integer _usec;
    private byte[] _userData;

    public EncKrbPrivPart(byte[] bArr, KerberosTime kerberosTime, Integer num, Integer num2, HostAddress hostAddress, HostAddress hostAddress2) {
        super(MessageType.ENC_PRIV_PART);
        this._userData = bArr;
        this._timestamp = kerberosTime;
        this._usec = num;
        this._sequenceNumber = num2;
        this._senderAddress = hostAddress;
        this._recipientAddress = hostAddress2;
    }

    public HostAddress getRecipientAddress() {
        return this._recipientAddress;
    }

    public HostAddress getSenderAddress() {
        return this._senderAddress;
    }

    public Integer getSequenceNumber() {
        return this._sequenceNumber;
    }

    public KerberosTime getTimestamp() {
        return this._timestamp;
    }

    public Integer getMicroSecond() {
        return this._usec;
    }

    public byte[] getUserData() {
        return this._userData;
    }
}
