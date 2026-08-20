package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class LastRequestEntry {
    private LastRequestType _lastRequestType;
    private KerberosTime _lastRequestValue;

    public LastRequestEntry(LastRequestType lastRequestType, KerberosTime kerberosTime) {
        this._lastRequestType = lastRequestType;
        this._lastRequestValue = kerberosTime;
    }

    public LastRequestType getLastRequestType() {
        return this._lastRequestType;
    }

    public KerberosTime getLastRequestValue() {
        return this._lastRequestValue;
    }
}
