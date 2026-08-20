package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.LongList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableUnmodifiableLongList extends BaseUnmodifiableLongList {
    private LongList proxied;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NonSerializableUnmodifiableLongList(LongList longList) {
        this.proxied = longList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList
    public LongList getProxiedList() {
        return this.proxied;
    }
}
