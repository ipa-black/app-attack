package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
/* loaded from: classes5.dex */
final class NonSerializableCollectionIntCollection extends AbstractCollectionIntCollection {
    private Collection _collection;

    public NonSerializableCollectionIntCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionIntCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
