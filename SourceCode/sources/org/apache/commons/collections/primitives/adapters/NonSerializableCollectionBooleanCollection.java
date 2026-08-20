package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
/* loaded from: classes5.dex */
final class NonSerializableCollectionBooleanCollection extends AbstractCollectionBooleanCollection {
    private Collection _collection;

    public NonSerializableCollectionBooleanCollection(Collection collection) {
        this._collection = collection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionBooleanCollection
    protected Collection getCollection() {
        return this._collection;
    }
}
