package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.ShortCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableShortCollectionCollection extends AbstractShortCollectionCollection {
    private ShortCollection _collection;

    public NonSerializableShortCollectionCollection(ShortCollection shortCollection) {
        this._collection = shortCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractShortCollectionCollection
    protected ShortCollection getShortCollection() {
        return this._collection;
    }
}
