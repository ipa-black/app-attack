package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.ShortList;
/* loaded from: classes5.dex */
public final class ShortListList extends AbstractShortListList implements Serializable {
    private ShortList _list;

    public static List wrap(ShortList shortList) {
        if (shortList == null) {
            return null;
        }
        if (shortList instanceof Serializable) {
            return new ShortListList(shortList);
        }
        return new NonSerializableShortListList(shortList);
    }

    public ShortListList(ShortList shortList) {
        this._list = shortList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractShortListList
    protected ShortList getShortList() {
        return this._list;
    }
}
