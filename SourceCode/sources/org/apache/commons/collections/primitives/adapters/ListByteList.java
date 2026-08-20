package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.ByteList;
/* loaded from: classes5.dex */
public class ListByteList extends AbstractListByteList implements Serializable {
    private List _list;

    public static ByteList wrap(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Serializable) {
            return new ListByteList(list);
        }
        return new NonSerializableListByteList(list);
    }

    public ListByteList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListByteList
    protected List getList() {
        return this._list;
    }
}
