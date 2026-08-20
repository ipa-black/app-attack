package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.DoubleList;
/* loaded from: classes5.dex */
public class ListDoubleList extends AbstractListDoubleList implements Serializable {
    private List _list;

    public static DoubleList wrap(List list) {
        if (list == null) {
            return null;
        }
        if (list instanceof Serializable) {
            return new ListDoubleList(list);
        }
        return new NonSerializableListDoubleList(list);
    }

    public ListDoubleList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListDoubleList
    protected List getList() {
        return this._list;
    }
}
