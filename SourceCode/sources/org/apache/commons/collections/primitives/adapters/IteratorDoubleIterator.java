package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.DoubleIterator;
/* loaded from: classes5.dex */
public class IteratorDoubleIterator implements DoubleIterator {
    private Iterator _iterator;

    public static DoubleIterator wrap(Iterator it) {
        if (it == null) {
            return null;
        }
        return new IteratorDoubleIterator(it);
    }

    public IteratorDoubleIterator(Iterator it) {
        this._iterator = it;
    }

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    public double next() {
        return ((Number) this._iterator.next()).doubleValue();
    }

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    public void remove() {
        this._iterator.remove();
    }
}
