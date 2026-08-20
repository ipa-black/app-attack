package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.CharList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableUnmodifiableCharList extends BaseUnmodifiableCharList {
    private CharList proxied;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NonSerializableUnmodifiableCharList(CharList charList) {
        this.proxied = charList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList
    public CharList getProxiedList() {
        return this.proxied;
    }
}
