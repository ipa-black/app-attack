package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.FloatCollection;
/* loaded from: classes5.dex */
public final class CollectionFloatCollection extends AbstractCollectionFloatCollection implements Serializable {
    private Collection _collection;

    public static FloatCollection wrap(Collection collection) {
        if (collection == null) {
            return null;
        }
        if (collection instanceof Serializable) {
            return new CollectionFloatCollection(collection);
        }
        return new NonSerializableCollectionFloatCollection(collection);
    }

    public CollectionFloatCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionFloatCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
