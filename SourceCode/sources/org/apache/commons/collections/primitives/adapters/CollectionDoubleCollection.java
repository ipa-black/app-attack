package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.DoubleCollection;
/* loaded from: classes5.dex */
public final class CollectionDoubleCollection extends AbstractCollectionDoubleCollection implements Serializable {
    private Collection _collection;

    public static DoubleCollection wrap(Collection collection) {
        if (collection == null) {
            return null;
        }
        if (collection instanceof Serializable) {
            return new CollectionDoubleCollection(collection);
        }
        return new NonSerializableCollectionDoubleCollection(collection);
    }

    public CollectionDoubleCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionDoubleCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
