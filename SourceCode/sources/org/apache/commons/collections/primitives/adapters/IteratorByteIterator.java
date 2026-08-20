package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.ByteIterator;
/* loaded from: classes5.dex */
public class IteratorByteIterator implements ByteIterator {
    private Iterator _iterator;

    public static ByteIterator wrap(Iterator it) {
        if (it == null) {
            return null;
        }
        return new IteratorByteIterator(it);
    }

    public IteratorByteIterator(Iterator it) {
        this._iterator = it;
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public byte next() {
        return ((Number) this._iterator.next()).byteValue();
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public void remove() {
        this._iterator.remove();
    }
}
