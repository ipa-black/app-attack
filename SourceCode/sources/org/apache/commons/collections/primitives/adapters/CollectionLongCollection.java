package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.LongCollection;
/* loaded from: classes5.dex */
public final class CollectionLongCollection extends AbstractCollectionLongCollection implements Serializable {
    private Collection _collection;

    public static LongCollection wrap(Collection collection) {
        if (collection == null) {
            return null;
        }
        if (collection instanceof Serializable) {
            return new CollectionLongCollection(collection);
        }
        return new NonSerializableCollectionLongCollection(collection);
    }

    public CollectionLongCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionLongCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
