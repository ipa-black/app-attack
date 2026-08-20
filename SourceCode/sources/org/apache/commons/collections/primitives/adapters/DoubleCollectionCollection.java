package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.DoubleCollection;
/* loaded from: classes5.dex */
public final class DoubleCollectionCollection extends AbstractDoubleCollectionCollection implements Serializable {
    private DoubleCollection _collection;

    public static Collection wrap(DoubleCollection doubleCollection) {
        if (doubleCollection == null) {
            return null;
        }
        if (doubleCollection instanceof Serializable) {
            return new DoubleCollectionCollection(doubleCollection);
        }
        return new NonSerializableDoubleCollectionCollection(doubleCollection);
    }

    public DoubleCollectionCollection(DoubleCollection doubleCollection) {
        this._collection = doubleCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractDoubleCollectionCollection
    protected DoubleCollection getDoubleCollection() {
        return this._collection;
    }
}
