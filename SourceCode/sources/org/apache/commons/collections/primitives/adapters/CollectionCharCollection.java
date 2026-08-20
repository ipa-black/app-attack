package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.CharCollection;
/* loaded from: classes5.dex */
public final class CollectionCharCollection extends AbstractCollectionCharCollection implements Serializable {
    private Collection _collection;

    public static CharCollection wrap(Collection collection) {
        if (collection == null) {
            return null;
        }
        if (collection instanceof Serializable) {
            return new CollectionCharCollection(collection);
        }
        return new NonSerializableCollectionCharCollection(collection);
    }

    public CollectionCharCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionCharCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
