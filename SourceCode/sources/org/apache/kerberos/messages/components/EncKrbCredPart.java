package org.apache.kerberos.messages.components;

import org.apache.kerberos.messages.value.HostAddress;
import org.apache.kerberos.messages.value.HostAddresses;
import org.apache.kerberos.messages.value.KerberosTime;
import org.apache.kerberos.messages.value.KrbCredInfo;
/* loaded from: classes5.dex */
public class EncKrbCredPart {
    public Integer _nonce;
    public HostAddresses _rAddress;
    public HostAddress _sAddress;
    public KrbCredInfo[] _ticketInfo;
    public KerberosTime _timeStamp;
    public Integer _usec;

    public EncKrbCredPart(KrbCredInfo[] krbCredInfoArr, KerberosTime kerberosTime, Integer num, Integer num2, HostAddress hostAddress, HostAddresses hostAddresses) {
        this._ticketInfo = krbCredInfoArr;
        this._nonce = num2;
        this._timeStamp = kerberosTime;
        this._usec = num;
        this._sAddress = hostAddress;
        this._rAddress = hostAddresses;
    }
}
