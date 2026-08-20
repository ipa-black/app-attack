package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.BooleanCollection;
/* loaded from: classes5.dex */
public final class BooleanCollectionCollection extends AbstractBooleanCollectionCollection implements Serializable {
    private BooleanCollection _collection;

    public static Collection wrap(BooleanCollection booleanCollection) {
        if (booleanCollection == null) {
            return null;
        }
        if (booleanCollection instanceof Serializable) {
            return new BooleanCollectionCollection(booleanCollection);
        }
        return new NonSerializableBooleanCollectionCollection(booleanCollection);
    }

    public BooleanCollectionCollection(BooleanCollection booleanCollection) {
        this._collection = booleanCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractBooleanCollectionCollection
    protected BooleanCollection getBooleanCollection() {
        return this._collection;
    }
}
