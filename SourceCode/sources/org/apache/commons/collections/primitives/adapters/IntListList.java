package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.IntList;
/* loaded from: classes5.dex */
public final class IntListList extends AbstractIntListList implements Serializable {
    private IntList _list;

    public static List wrap(IntList intList) {
        if (intList == null) {
            return null;
        }
        if (intList instanceof Serializable) {
            return new IntListList(intList);
        }
        return new NonSerializableIntListList(intList);
    }

    public IntListList(IntList intList) {
        this._list = intList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractIntListList
    protected IntList getIntList() {
        return this._list;
    }
}
