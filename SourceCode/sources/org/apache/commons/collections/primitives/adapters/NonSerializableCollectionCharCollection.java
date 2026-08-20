package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
/* loaded from: classes5.dex */
final class NonSerializableCollectionCharCollection extends AbstractCollectionCharCollection {
    private Collection _collection;

    public NonSerializableCollectionCharCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionCharCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
