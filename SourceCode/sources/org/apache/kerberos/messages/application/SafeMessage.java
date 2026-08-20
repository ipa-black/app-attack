package org.apache.kerberos.messages.application;

import org.apache.kerberos.messages.KerberosMessage;
import org.apache.kerberos.messages.MessageType;
import org.apache.kerberos.messages.value.Checksum;
import org.apache.kerberos.messages.value.HostAddress;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class SafeMessage extends KerberosMessage {
    private Checksum _cksum;
    private SafeBody _safeBody;

    public SafeMessage(SafeBody safeBody, Checksum checksum) {
        super(MessageType.KRB_SAFE);
        this._safeBody = safeBody;
        this._cksum = checksum;
    }

    public Checksum getCksum() {
        return this._cksum;
    }

    public HostAddress getRAddress() {
        return this._safeBody.getRAddress();
    }

    public HostAddress getSAddress() {
        return this._safeBody.getSAddress();
    }

    public Integer getSeqNumber() {
        return this._safeBody.getSeqNumber();
    }

    public KerberosTime getTimestamp() {
        return this._safeBody.getTimestamp();
    }

    public Integer getUsec() {
        return this._safeBody.getUsec();
    }

    public byte[] getUserData() {
        return this._safeBody.getUserData();
    }
}
