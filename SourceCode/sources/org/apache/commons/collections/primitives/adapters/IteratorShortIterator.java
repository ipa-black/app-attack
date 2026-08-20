package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.ShortIterator;
/* loaded from: classes5.dex */
public class IteratorShortIterator implements ShortIterator {
    private Iterator _iterator;

    public static ShortIterator wrap(Iterator it) {
        if (it == null) {
            return null;
        }
        return new IteratorShortIterator(it);
    }

    public IteratorShortIterator(Iterator it) {
        this._iterator = it;
    }

    @Override // org.apache.commons.collections.primitives.ShortIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.ShortIterator
    public short next() {
        return ((Number) this._iterator.next()).shortValue();
    }

    @Override // org.apache.commons.collections.primitives.ShortIterator
    public void remove() {
        this._iterator.remove();
    }
}
