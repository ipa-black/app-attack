package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.ByteList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableByteListList extends AbstractByteListList {
    private ByteList _list;

    public NonSerializableByteListList(ByteList byteList) {
        this._list = byteList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractByteListList
    protected ByteList getByteList() {
        return this._list;
    }
}
