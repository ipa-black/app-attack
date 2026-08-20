package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
/* loaded from: classes5.dex */
final class NonSerializableCollectionByteCollection extends AbstractCollectionByteCollection {
    private Collection _collection;

    public NonSerializableCollectionByteCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionByteCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
