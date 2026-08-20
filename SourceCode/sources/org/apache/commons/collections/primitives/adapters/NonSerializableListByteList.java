package org.apache.commons.collections.primitives.adapters;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableListByteList extends AbstractListByteList {
    private List _list;

    /* JADX INFO: Access modifiers changed from: protected */
    public NonSerializableListByteList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListByteList
    protected List getList() {
        return this._list;
    }
}
