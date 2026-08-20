package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.LongIterator;
/* loaded from: classes5.dex */
public class LongIteratorIterator implements Iterator {
    private LongIterator _iterator;

    public static Iterator wrap(LongIterator longIterator) {
        if (longIterator == null) {
            return null;
        }
        return new LongIteratorIterator(longIterator);
    }

    public LongIteratorIterator(LongIterator longIterator) {
        this._iterator = longIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return new Long(this._iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
