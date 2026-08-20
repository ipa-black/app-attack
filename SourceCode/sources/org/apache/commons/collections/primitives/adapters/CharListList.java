package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.collections.primitives.CharList;
/* loaded from: classes5.dex */
public final class CharListList extends AbstractCharListList implements Serializable {
    private CharList _list;

    public static List wrap(CharList charList) {
        if (charList == null) {
            return null;
        }
        if (charList instanceof Serializable) {
            return new CharListList(charList);
        }
        return new NonSerializableCharListList(charList);
    }

    public CharListList(CharList charList) {
        this._list = charList;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCharListList
    protected CharList getCharList() {
        return this._list;
    }
}
