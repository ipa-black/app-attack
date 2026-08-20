package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ByteList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableUnmodifiableByteList extends BaseUnmodifiableByteList {
    private ByteList proxied;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NonSerializableUnmodifiableByteList(ByteList byteList) {
        this.proxied = byteList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList
    public ByteList getProxiedList() {
        return this.proxied;
    }
}
