package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.ShortIterator;
/* loaded from: classes5.dex */
public class ShortIteratorIterator implements Iterator {
    private ShortIterator _iterator;

    public static Iterator wrap(ShortIterator shortIterator) {
        if (shortIterator == null) {
            return null;
        }
        return new ShortIteratorIterator(shortIterator);
    }

    public ShortIteratorIterator(ShortIterator shortIterator) {
        this._iterator = shortIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return new Short(this._iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
