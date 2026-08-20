package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.LongCollection;
/* loaded from: classes5.dex */
public final class LongCollectionCollection extends AbstractLongCollectionCollection implements Serializable {
    private LongCollection _collection;

    public static Collection wrap(LongCollection longCollection) {
        if (longCollection == null) {
            return null;
        }
        if (longCollection instanceof Serializable) {
            return new LongCollectionCollection(longCollection);
        }
        return new NonSerializableLongCollectionCollection(longCollection);
    }

    public LongCollectionCollection(LongCollection longCollection) {
        this._collection = longCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractLongCollectionCollection
    protected LongCollection getLongCollection() {
        return this._collection;
    }
}
