package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.LongCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableLongCollectionCollection extends AbstractLongCollectionCollection {
    private LongCollection _collection;

    public NonSerializableLongCollectionCollection(LongCollection longCollection) {
        this._collection = longCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractLongCollectionCollection
    protected LongCollection getLongCollection() {
        return this._collection;
    }
}
