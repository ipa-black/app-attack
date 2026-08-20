package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.CharCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableCharCollectionCollection extends AbstractCharCollectionCollection {
    private CharCollection _collection;

    public NonSerializableCharCollectionCollection(CharCollection charCollection) {
        this._collection = charCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCharCollectionCollection
    protected CharCollection getCharCollection() {
        return this._collection;
    }
}
