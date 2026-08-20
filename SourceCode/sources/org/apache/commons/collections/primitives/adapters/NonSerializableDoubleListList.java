package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.DoubleList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableDoubleListList extends AbstractDoubleListList {
    private DoubleList _list;

    public NonSerializableDoubleListList(DoubleList doubleList) {
        this._list = doubleList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractDoubleListList
    protected DoubleList getDoubleList() {
        return this._list;
    }
}
