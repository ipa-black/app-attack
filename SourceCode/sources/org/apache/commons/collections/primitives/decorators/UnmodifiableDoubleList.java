package org.apache.commons.collections.primitives.decorators;

import java.io.Serializable;
import org.apache.commons.collections.primitives.DoubleList;
/* loaded from: classes5.dex */
public final class UnmodifiableDoubleList extends BaseUnmodifiableDoubleList implements Serializable {
    private DoubleList proxied;

    UnmodifiableDoubleList(DoubleList doubleList) {
        this.proxied = doubleList;
    }

    public static final DoubleList wrap(DoubleList doubleList) {
        if (doubleList == null) {
            return null;
        }
        if (doubleList instanceof UnmodifiableDoubleList) {
            return doubleList;
        }
        if (doubleList instanceof Serializable) {
            return new UnmodifiableDoubleList(doubleList);
        }
        return new NonSerializableUnmodifiableDoubleList(doubleList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList
    public DoubleList getProxiedList() {
        return this.proxied;
    }
}
