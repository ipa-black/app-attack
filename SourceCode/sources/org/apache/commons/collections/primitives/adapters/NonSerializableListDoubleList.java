package org.apache.commons.collections.primitives.adapters;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableListDoubleList extends AbstractListDoubleList {
    private List _list;

    /* JADX INFO: Access modifiers changed from: protected */
    public NonSerializableListDoubleList(List list) {
        this._list = list;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractListDoubleList
    protected List getList() {
        return this._list;
    }
}
