package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.IntCollection;
/* loaded from: classes5.dex */
public final class IntCollectionCollection extends AbstractIntCollectionCollection implements Serializable {
    private IntCollection _collection;

    public static Collection wrap(IntCollection intCollection) {
        if (intCollection == null) {
            return null;
        }
        if (intCollection instanceof Serializable) {
            return new IntCollectionCollection(intCollection);
        }
        return new NonSerializableIntCollectionCollection(intCollection);
    }

    public IntCollectionCollection(IntCollection intCollection) {
        this._collection = intCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractIntCollectionCollection
    protected IntCollection getIntCollection() {
        return this._collection;
    }
}
