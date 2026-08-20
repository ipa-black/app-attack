package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.CharList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableCharListList extends AbstractCharListList {
    private CharList _list;

    public NonSerializableCharListList(CharList charList) {
        this._list = charList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCharListList
    protected CharList getCharList() {
        return this._list;
    }
}
