package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.ByteList;
/* loaded from: classes5.dex */
public final class ByteListList extends AbstractByteListList implements Serializable {
    private ByteList _list;

    public static List wrap(ByteList byteList) {
        if (byteList == null) {
            return null;
        }
        if (byteList instanceof Serializable) {
            return new ByteListList(byteList);
        }
        return new NonSerializableByteListList(byteList);
    }

    public ByteListList(ByteList byteList) {
        this._list = byteList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractByteListList
    protected ByteList getByteList() {
        return this._list;
    }
}
