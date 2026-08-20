package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.BooleanIterator;
/* loaded from: classes5.dex */
public class BooleanIteratorIterator implements Iterator {
    private BooleanIterator _iterator;

    public static Iterator wrap(BooleanIterator booleanIterator) {
        if (booleanIterator == null) {
            return null;
        }
        return new BooleanIteratorIterator(booleanIterator);
    }

    public BooleanIteratorIterator(BooleanIterator booleanIterator) {
        this._iterator = booleanIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return new Boolean(this._iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
