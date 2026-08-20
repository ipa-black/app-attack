package org.apache.commons.collections.primitives.adapters;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableListBooleanList extends AbstractListBooleanList {
    private List _list;

    /* JADX INFO: Access modifiers changed from: protected */
    public NonSerializableListBooleanList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListBooleanList
    protected List getList() {
        return this._list;
    }
}
