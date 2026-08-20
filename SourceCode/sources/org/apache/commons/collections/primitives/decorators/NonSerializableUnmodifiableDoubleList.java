package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.DoubleList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableUnmodifiableDoubleList extends BaseUnmodifiableDoubleList {
    private DoubleList proxied;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NonSerializableUnmodifiableDoubleList(DoubleList doubleList) {
        this.proxied = doubleList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList
    public DoubleList getProxiedList() {
        return this.proxied;
    }
}
