package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.FloatList;
/* loaded from: classes5.dex */
public class ListFloatList extends AbstractListFloatList implements Serializable {
    private List _list;

    public static FloatList wrap(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Serializable) {
            return new ListFloatList(list);
        }
        return new NonSerializableListFloatList(list);
    }

    public ListFloatList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListFloatList
    protected List getList() {
        return this._list;
    }
}
