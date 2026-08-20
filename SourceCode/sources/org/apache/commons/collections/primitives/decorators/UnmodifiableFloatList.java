package org.apache.commons.collections.primitives.decorators;

import java.io.Serializable;
import org.apache.commons.collections.primitives.FloatList;
/* loaded from: classes5.dex */
public final class UnmodifiableFloatList extends BaseUnmodifiableFloatList implements Serializable {
    private FloatList proxied;

    UnmodifiableFloatList(FloatList floatList) {
        this.proxied = floatList;
    }

    public static final FloatList wrap(FloatList floatList) {
        if (floatList == null) {
            return null;
        }
        if (floatList instanceof UnmodifiableFloatList) {
            return floatList;
        }
        if (floatList instanceof Serializable) {
            return new UnmodifiableFloatList(floatList);
        }
        return new NonSerializableUnmodifiableFloatList(floatList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList
    public FloatList getProxiedList() {
        return this.proxied;
    }
}
