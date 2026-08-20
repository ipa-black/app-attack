package org.apache.kerberos.messages.value;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class AuthorizationData {
    private List _entries = new ArrayList();

    public void add(AuthorizationData authorizationData) {
        this._entries.addAll(authorizationData._entries);
    }

    public void add(AuthorizationDataEntry authorizationDataEntry) {
        this._entries.add(authorizationDataEntry);
    }

    public Iterator iterator() {
        return this._entries.iterator();
    }
}
