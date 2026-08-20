package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
/* loaded from: classes5.dex */
final class NonSerializableCollectionFloatCollection extends AbstractCollectionFloatCollection {
    private Collection _collection;

    public NonSerializableCollectionFloatCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionFloatCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
