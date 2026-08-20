package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.FloatList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableUnmodifiableFloatList extends BaseUnmodifiableFloatList {
    private FloatList proxied;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NonSerializableUnmodifiableFloatList(FloatList floatList) {
        this.proxied = floatList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList
    public FloatList getProxiedList() {
        return this.proxied;
    }
}
