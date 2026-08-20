package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
/* loaded from: classes5.dex */
final class NonSerializableCollectionLongCollection extends AbstractCollectionLongCollection {
    private Collection _collection;

    public NonSerializableCollectionLongCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionLongCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
