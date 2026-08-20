package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.ShortCollection;
/* loaded from: classes5.dex */
public final class CollectionShortCollection extends AbstractCollectionShortCollection implements Serializable {
    private Collection _collection;

    public static ShortCollection wrap(Collection collection) {
        if (collection == null) {
            return null;
        }
        if (collection instanceof Serializable) {
            return new CollectionShortCollection(collection);
        }
        return new NonSerializableCollectionShortCollection(collection);
    }

    public CollectionShortCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionShortCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
