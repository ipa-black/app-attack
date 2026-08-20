package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.FloatList;
/* loaded from: classes5.dex */
public final class FloatListList extends AbstractFloatListList implements Serializable {
    private FloatList _list;

    public static List wrap(FloatList floatList) {
        if (floatList == null) {
            return null;
        }
        if (floatList instanceof Serializable) {
            return new FloatListList(floatList);
        }
        return new NonSerializableFloatListList(floatList);
    }

    public FloatListList(FloatList floatList) {
        this._list = floatList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractFloatListList
    protected FloatList getFloatList() {
        return this._list;
    }
}
