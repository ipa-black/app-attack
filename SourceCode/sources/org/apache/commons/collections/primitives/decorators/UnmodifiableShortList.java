package org.apache.commons.collections.primitives.decorators;

import java.io.Serializable;
import org.apache.commons.collections.primitives.ShortList;
/* loaded from: classes5.dex */
public final class UnmodifiableShortList extends BaseUnmodifiableShortList implements Serializable {
    private ShortList proxied;

    UnmodifiableShortList(ShortList shortList) {
        this.proxied = shortList;
    }

    public static final ShortList wrap(ShortList shortList) {
        if (shortList == null) {
            return null;
        }
        if (shortList instanceof UnmodifiableShortList) {
            return shortList;
        }
        if (shortList instanceof Serializable) {
            return new UnmodifiableShortList(shortList);
        }
        return new NonSerializableUnmodifiableShortList(shortList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList
    public ShortList getProxiedList() {
        return this.proxied;
    }
}
