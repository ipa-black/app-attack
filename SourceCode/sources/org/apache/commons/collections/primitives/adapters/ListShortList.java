package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.ShortList;
/* loaded from: classes5.dex */
public class ListShortList extends AbstractListShortList implements Serializable {
    private List _list;

    public static ShortList wrap(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Serializable) {
            return new ListShortList(list);
        }
        return new NonSerializableListShortList(list);
    }

    public ListShortList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListShortList
    protected List getList() {
        return this._list;
    }
}
