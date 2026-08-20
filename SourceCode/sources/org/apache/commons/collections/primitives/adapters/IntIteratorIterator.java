package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.IntIterator;
/* loaded from: classes5.dex */
public class IntIteratorIterator implements Iterator {
    private IntIterator _iterator;

    public static Iterator wrap(IntIterator intIterator) {
        if (intIterator == null) {
            return null;
        }
        return new IntIteratorIterator(intIterator);
    }

    public IntIteratorIterator(IntIterator intIterator) {
        this._iterator = intIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return new Integer(this._iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
