package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.ByteCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableByteCollectionCollection extends AbstractByteCollectionCollection {
    private ByteCollection _collection;

    public NonSerializableByteCollectionCollection(ByteCollection byteCollection) {
        this._collection = byteCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractByteCollectionCollection
    protected ByteCollection getByteCollection() {
        return this._collection;
    }
}
