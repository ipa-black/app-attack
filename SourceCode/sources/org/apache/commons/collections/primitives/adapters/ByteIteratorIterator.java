package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.ByteIterator;
/* loaded from: classes5.dex */
public class ByteIteratorIterator implements Iterator {
    private ByteIterator _iterator;

    public static Iterator wrap(ByteIterator byteIterator) {
        if (byteIterator == null) {
            return null;
        }
        return new ByteIteratorIterator(byteIterator);
    }

    public ByteIteratorIterator(ByteIterator byteIterator) {
        this._iterator = byteIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return new Byte(this._iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
