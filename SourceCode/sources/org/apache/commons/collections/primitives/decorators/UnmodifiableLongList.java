package org.apache.commons.collections.primitives.decorators;

import java.io.Serializable;
import org.apache.commons.collections.primitives.LongList;
/* loaded from: classes5.dex */
public final class UnmodifiableLongList extends BaseUnmodifiableLongList implements Serializable {
    private LongList proxied;

    UnmodifiableLongList(LongList longList) {
        this.proxied = longList;
    }

    public static final LongList wrap(LongList longList) {
        if (longList == null) {
            return null;
        }
        if (longList instanceof UnmodifiableLongList) {
            return longList;
        }
        if (longList instanceof Serializable) {
            return new UnmodifiableLongList(longList);
        }
        return new NonSerializableUnmodifiableLongList(longList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList
    public LongList getProxiedList() {
        return this.proxied;
    }
}
