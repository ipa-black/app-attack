package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.FloatCollection;
/* loaded from: classes5.dex */
public final class FloatCollectionCollection extends AbstractFloatCollectionCollection implements Serializable {
    private FloatCollection _collection;

    public static Collection wrap(FloatCollection floatCollection) {
        if (floatCollection == null) {
            return null;
        }
        if (floatCollection instanceof Serializable) {
            return new FloatCollectionCollection(floatCollection);
        }
        return new NonSerializableFloatCollectionCollection(floatCollection);
    }

    public FloatCollectionCollection(FloatCollection floatCollection) {
        this._collection = floatCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractFloatCollectionCollection
    protected FloatCollection getFloatCollection() {
        return this._collection;
    }
}
