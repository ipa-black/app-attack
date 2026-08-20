package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.IntList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableUnmodifiableIntList extends BaseUnmodifiableIntList {
    private IntList proxied;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NonSerializableUnmodifiableIntList(IntList intList) {
        this.proxied = intList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList
    public IntList getProxiedList() {
        return this.proxied;
    }
}
