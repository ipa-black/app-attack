package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.IntList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableIntListList extends AbstractIntListList {
    private IntList _list;

    public NonSerializableIntListList(IntList intList) {
        this._list = intList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractIntListList
    protected IntList getIntList() {
        return this._list;
    }
}
