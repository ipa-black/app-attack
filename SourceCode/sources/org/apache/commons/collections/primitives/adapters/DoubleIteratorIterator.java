package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.DoubleIterator;
/* loaded from: classes5.dex */
public class DoubleIteratorIterator implements Iterator {
    private DoubleIterator _iterator;

    public static Iterator wrap(DoubleIterator doubleIterator) {
        if (doubleIterator == null) {
            return null;
        }
        return new DoubleIteratorIterator(doubleIterator);
    }

    public DoubleIteratorIterator(DoubleIterator doubleIterator) {
        this._iterator = doubleIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return new Double(this._iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
