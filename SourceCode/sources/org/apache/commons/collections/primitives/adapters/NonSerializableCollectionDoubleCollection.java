package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
/* loaded from: classes5.dex */
final class NonSerializableCollectionDoubleCollection extends AbstractCollectionDoubleCollection {
    private Collection _collection;

    public NonSerializableCollectionDoubleCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionDoubleCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
