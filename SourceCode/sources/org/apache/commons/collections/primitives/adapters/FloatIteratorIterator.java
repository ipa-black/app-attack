package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.FloatIterator;
/* loaded from: classes5.dex */
public class FloatIteratorIterator implements Iterator {
    private FloatIterator _iterator;

    public static Iterator wrap(FloatIterator floatIterator) {
        if (floatIterator == null) {
            return null;
        }
        return new FloatIteratorIterator(floatIterator);
    }

    public FloatIteratorIterator(FloatIterator floatIterator) {
        this._iterator = floatIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return new Float(this._iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
