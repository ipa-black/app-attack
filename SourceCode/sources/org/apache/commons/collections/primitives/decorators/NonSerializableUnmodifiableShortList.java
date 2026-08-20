package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ShortList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableUnmodifiableShortList extends BaseUnmodifiableShortList {
    private ShortList proxied;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NonSerializableUnmodifiableShortList(ShortList shortList) {
        this.proxied = shortList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList
    public ShortList getProxiedList() {
        return this.proxied;
    }
}
