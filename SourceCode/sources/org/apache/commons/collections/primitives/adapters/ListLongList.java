package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.LongList;
/* loaded from: classes5.dex */
public class ListLongList extends AbstractListLongList implements Serializable {
    private List _list;

    public static LongList wrap(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Serializable) {
            return new ListLongList(list);
        }
        return new NonSerializableListLongList(list);
    }

    public ListLongList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListLongList
    protected List getList() {
        return this._list;
    }
}
