package org.apache.kerberos.messages.application;

import org.apache.kerberos.messages.value.HostAddress;
import org.apache.kerberos.messages.value.KerberosTime;
/* loaded from: classes5.dex */
public class SafeBody {
    private HostAddress _rAddress;
    private HostAddress _sAddress;
    private Integer _seqNumber;
    private KerberosTime _timestamp;
    private Integer _usec;
    private byte[] _userData;

    public SafeBody(byte[] bArr, KerberosTime kerberosTime, Integer num, Integer num2, HostAddress hostAddress, HostAddress hostAddress2) {
        this._userData = bArr;
        this._timestamp = kerberosTime;
        this._usec = num;
        this._seqNumber = num2;
        this._sAddress = hostAddress;
        this._rAddress = hostAddress2;
    }

    public HostAddress getRAddress() {
        return this._rAddress;
    }

    public HostAddress getSAddress() {
        return this._sAddress;
    }

    public Integer getSeqNumber() {
        return this._seqNumber;
    }

    public KerberosTime getTimestamp() {
        return this._timestamp;
    }

    public Integer getUsec() {
        return this._usec;
    }

    public byte[] getUserData() {
        return this._userData;
    }
}
