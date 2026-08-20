package org.apache.commons.collections.primitives.adapters;

import org.apache.commons.collections.primitives.FloatCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class NonSerializableFloatCollectionCollection extends AbstractFloatCollectionCollection {
    private FloatCollection _collection;

    public NonSerializableFloatCollectionCollection(FloatCollection floatCollection) {
        this._collection = floatCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractFloatCollectionCollection
    protected FloatCollection getFloatCollection() {
        return this._collection;
    }
}
