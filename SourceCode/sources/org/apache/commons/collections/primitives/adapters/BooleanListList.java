package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.BooleanList;
/* loaded from: classes5.dex */
public final class BooleanListList extends AbstractBooleanListList implements Serializable {
    private BooleanList _list;

    public static List wrap(BooleanList booleanList) {
        if (booleanList == null) {
            return null;
        }
        if (booleanList instanceof Serializable) {
            return new BooleanListList(booleanList);
        }
        return new NonSerializableBooleanListList(booleanList);
    }

    public BooleanListList(BooleanList booleanList) {
        this._list = booleanList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractBooleanListList
    protected BooleanList getBooleanList() {
        return this._list;
    }
}
