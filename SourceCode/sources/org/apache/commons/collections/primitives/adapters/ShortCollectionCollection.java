package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.ShortCollection;
/* loaded from: classes5.dex */
public final class ShortCollectionCollection extends AbstractShortCollectionCollection implements Serializable {
    private ShortCollection _collection;

    public static Collection wrap(ShortCollection shortCollection) {
        if (shortCollection == null) {
            return null;
        }
        if (shortCollection instanceof Serializable) {
            return new ShortCollectionCollection(shortCollection);
        }
        return new NonSerializableShortCollectionCollection(shortCollection);
    }

    public ShortCollectionCollection(ShortCollection shortCollection) {
        this._collection = shortCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractShortCollectionCollection
    protected ShortCollection getShortCollection() {
        return this._collection;
    }
}
