package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.LongList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableLongListList extends AbstractLongListList {
    private LongList _list;

    public NonSerializableLongListList(LongList longList) {
        this._list = longList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractLongListList
    protected LongList getLongList() {
        return this._list;
    }
}
