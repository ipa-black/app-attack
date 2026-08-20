package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.IntCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableIntCollectionCollection extends AbstractIntCollectionCollection {
    private IntCollection _collection;

    public NonSerializableIntCollectionCollection(IntCollection intCollection) {
        this._collection = intCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractIntCollectionCollection
    protected IntCollection getIntCollection() {
        return this._collection;
    }
}
