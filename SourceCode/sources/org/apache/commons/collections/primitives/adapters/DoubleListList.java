package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.DoubleList;
/* loaded from: classes5.dex */
public final class DoubleListList extends AbstractDoubleListList implements Serializable {
    private DoubleList _list;

    public static List wrap(DoubleList doubleList) {
        if (doubleList == null) {
            return null;
        }
        if (doubleList instanceof Serializable) {
            return new DoubleListList(doubleList);
        }
        return new NonSerializableDoubleListList(doubleList);
    }

    public DoubleListList(DoubleList doubleList) {
        this._list = doubleList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractDoubleListList
    protected DoubleList getDoubleList() {
        return this._list;
    }
}
