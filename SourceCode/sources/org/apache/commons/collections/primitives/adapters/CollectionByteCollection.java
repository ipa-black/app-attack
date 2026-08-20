package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.ByteCollection;
/* loaded from: classes5.dex */
public final class CollectionByteCollection extends AbstractCollectionByteCollection implements Serializable {
    private Collection _collection;

    public static ByteCollection wrap(Collection collection) {
        if (collection == null) {
            return null;
        }
        if (collection instanceof Serializable) {
            return new CollectionByteCollection(collection);
        }
        return new NonSerializableCollectionByteCollection(collection);
    }

    public CollectionByteCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionByteCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
