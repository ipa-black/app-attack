package org.apache.commons.collections.primitives.decorators;

import java.io.Serializable;
import org.apache.commons.collections.primitives.ByteList;
/* loaded from: classes5.dex */
public final class UnmodifiableByteList extends BaseUnmodifiableByteList implements Serializable {
    private ByteList proxied;

    UnmodifiableByteList(ByteList byteList) {
        this.proxied = byteList;
    }

    public static final ByteList wrap(ByteList byteList) {
        if (byteList == null) {
            return null;
        }
        if (byteList instanceof UnmodifiableByteList) {
            return byteList;
        }
        if (byteList instanceof Serializable) {
            return new UnmodifiableByteList(byteList);
        }
        return new NonSerializableUnmodifiableByteList(byteList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList
    public ByteList getProxiedList() {
        return this.proxied;
    }
}
