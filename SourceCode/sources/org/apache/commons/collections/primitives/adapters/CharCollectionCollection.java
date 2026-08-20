package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.CharCollection;
/* loaded from: classes5.dex */
public final class CharCollectionCollection extends AbstractCharCollectionCollection implements Serializable {
    private CharCollection _collection;

    public static Collection wrap(CharCollection charCollection) {
        if (charCollection == null) {
            return null;
        }
        if (charCollection instanceof Serializable) {
            return new CharCollectionCollection(charCollection);
        }
        return new NonSerializableCharCollectionCollection(charCollection);
    }

    public CharCollectionCollection(CharCollection charCollection) {
        this._collection = charCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCharCollectionCollection
    protected CharCollection getCharCollection() {
        return this._collection;
    }
}
