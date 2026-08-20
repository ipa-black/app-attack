package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.DoubleCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableDoubleCollectionCollection extends AbstractDoubleCollectionCollection {
    private DoubleCollection _collection;

    public NonSerializableDoubleCollectionCollection(DoubleCollection doubleCollection) {
        this._collection = doubleCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractDoubleCollectionCollection
    protected DoubleCollection getDoubleCollection() {
        return this._collection;
    }
}
