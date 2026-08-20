package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.IntCollection;
/* loaded from: classes5.dex */
public final class CollectionIntCollection extends AbstractCollectionIntCollection implements Serializable {
    private Collection _collection;

    public static IntCollection wrap(Collection collection) {
        if (collection == null) {
            return null;
        }
        if (collection instanceof Serializable) {
            return new CollectionIntCollection(collection);
        }
        return new NonSerializableCollectionIntCollection(collection);
    }

    public CollectionIntCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionIntCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
