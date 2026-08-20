package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.CharList;
/* loaded from: classes5.dex */
public class ListCharList extends AbstractListCharList implements Serializable {
    private List _list;

    public static CharList wrap(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Serializable) {
            return new ListCharList(list);
        }
        return new NonSerializableListCharList(list);
    }

    public ListCharList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionCharCollection
    public String toString() {
        return new String(toArray());
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListCharList
    protected List getList() {
        return this._list;
    }
}
