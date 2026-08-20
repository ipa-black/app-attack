package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.LongList;
/* loaded from: classes5.dex */
public final class LongListList extends AbstractLongListList implements Serializable {
    private LongList _list;

    public static List wrap(LongList longList) {
        if (longList == null) {
            return null;
        }
        if (longList instanceof Serializable) {
            return new LongListList(longList);
        }
        return new NonSerializableLongListList(longList);
    }

    public LongListList(LongList longList) {
        this._list = longList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractLongListList
    protected LongList getLongList() {
        return this._list;
    }
}
