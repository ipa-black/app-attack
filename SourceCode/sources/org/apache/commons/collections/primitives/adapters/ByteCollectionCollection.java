package org.apache.commons.collections.primitives.adapters;

import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections.primitives.ByteCollection;
/* loaded from: classes5.dex */
public final class ByteCollectionCollection extends AbstractByteCollectionCollection implements Serializable {
    private ByteCollection _collection;

    public static Collection wrap(ByteCollection byteCollection) {
        if (byteCollection == null) {
            return null;
        }
        if (byteCollection instanceof Serializable) {
            return new ByteCollectionCollection(byteCollection);
        }
        return new NonSerializableByteCollectionCollection(byteCollection);
    }

    public ByteCollectionCollection(ByteCollection byteCollection) {
        this._collection = byteCollection;
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractByteCollectionCollection
    protected ByteCollection getByteCollection() {
        return this._collection;
    }
}
