package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.BooleanList;
/* loaded from: classes5.dex */
public class ListBooleanList extends AbstractListBooleanList implements Serializable {
    private List _list;

    public static BooleanList wrap(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Serializable) {
            return new ListBooleanList(list);
        }
        return new NonSerializableListBooleanList(list);
    }

    public ListBooleanList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListBooleanList
    protected List getList() {
        return this._list;
    }
}
