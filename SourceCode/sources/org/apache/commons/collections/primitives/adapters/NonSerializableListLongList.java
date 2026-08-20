package org.apache.commons.collections.primitives.adapters;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableListLongList extends AbstractListLongList {
    private List _list;

    /* JADX INFO: Access modifiers changed from: protected */
    public NonSerializableListLongList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListLongList
    protected List getList() {
        return this._list;
    }
}
