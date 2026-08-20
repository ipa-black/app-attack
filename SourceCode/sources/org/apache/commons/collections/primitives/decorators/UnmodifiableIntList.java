package org.apache.commons.collections.primitives.decorators;

import java.io.Serializable;
import org.apache.commons.collections.primitives.IntList;
/* loaded from: classes5.dex */
public final class UnmodifiableIntList extends BaseUnmodifiableIntList implements Serializable {
    private IntList proxied;

    UnmodifiableIntList(IntList intList) {
        this.proxied = intList;
    }

    public static final IntList wrap(IntList intList) {
        if (intList == null) {
            return null;
        }
        if (intList instanceof UnmodifiableIntList) {
            return intList;
        }
        if (intList instanceof Serializable) {
            return new UnmodifiableIntList(intList);
        }
        return new NonSerializableUnmodifiableIntList(intList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList
    public IntList getProxiedList() {
        return this.proxied;
    }
}
