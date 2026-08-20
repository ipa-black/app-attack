package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class LastRequest {
    private LastRequestEntry[] _entries;

    public LastRequest() {
        this._entries = r0;
        LastRequestEntry[] lastRequestEntryArr = {new LastRequestEntry(LastRequestType.NONE, new KerberosTime())};
    }

    public LastRequest(LastRequestEntry[] lastRequestEntryArr) {
        LastRequestEntry[] lastRequestEntryArr2 = new LastRequestEntry[1];
        this._entries = lastRequestEntryArr;
    }

    public LastRequestEntry[] getEntries() {
        return this._entries;
    }
}
