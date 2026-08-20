package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.ShortList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableShortListList extends AbstractShortListList {
    private ShortList _list;

    public NonSerializableShortListList(ShortList shortList) {
        this._list = shortList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractShortListList
    protected ShortList getShortList() {
        return this._list;
    }
}
