package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
/* loaded from: classes5.dex */
final class NonSerializableCollectionShortCollection extends AbstractCollectionShortCollection {
    private Collection _collection;

    public NonSerializableCollectionShortCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionShortCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
