package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.BooleanList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableBooleanListList extends AbstractBooleanListList {
    private BooleanList _list;

    public NonSerializableBooleanListList(BooleanList booleanList) {
        this._list = booleanList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractBooleanListList
    protected BooleanList getBooleanList() {
        return this._list;
    }
}
