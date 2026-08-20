package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.BooleanCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableBooleanCollectionCollection extends AbstractBooleanCollectionCollection {
    private BooleanCollection _collection;

    public NonSerializableBooleanCollectionCollection(BooleanCollection booleanCollection) {
        this._collection = booleanCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractBooleanCollectionCollection
    protected BooleanCollection getBooleanCollection() {
        return this._collection;
    }
}
