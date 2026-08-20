package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.BooleanCollection;
/* loaded from: classes5.dex */
public final class CollectionBooleanCollection extends AbstractCollectionBooleanCollection implements Serializable {
    private Collection _collection;

    public static BooleanCollection wrap(Collection collection) {
        if (collection == null) {
            return null;
        }
        if (collection instanceof Serializable) {
            return new CollectionBooleanCollection(collection);
        }
        return new NonSerializableCollectionBooleanCollection(collection);
    }

    public CollectionBooleanCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionBooleanCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
