package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.IntList;
/* loaded from: classes5.dex */
public class ListIntList extends AbstractListIntList implements Serializable {
    private List _list;

    public static IntList wrap(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Serializable) {
            return new ListIntList(list);
        }
        return new NonSerializableListIntList(list);
    }

    public ListIntList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListIntList
    protected List getList() {
        return this._list;
    }
}
