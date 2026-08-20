package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.FloatList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableFloatListList extends AbstractFloatListList {
    private FloatList _list;

    public NonSerializableFloatListList(FloatList floatList) {
        this._list = floatList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractFloatListList
    protected FloatList getFloatList() {
        return this._list;
    }
}
