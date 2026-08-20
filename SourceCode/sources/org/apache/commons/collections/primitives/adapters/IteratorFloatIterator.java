package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.FloatIterator;
/* loaded from: classes5.dex */
public class IteratorFloatIterator implements FloatIterator {
    private Iterator _iterator;

    public static FloatIterator wrap(Iterator it) {
        if (it == null) {
            return null;
        }
        return new IteratorFloatIterator(it);
    }

    public IteratorFloatIterator(Iterator it) {
        this._iterator = it;
    }

    @Override // org.apache.commons.collections.primitives.FloatIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.FloatIterator
    public float next() {
        return ((Number) this._iterator.next()).floatValue();
    }

    @Override // org.apache.commons.collections.primitives.FloatIterator
    public void remove() {
        this._iterator.remove();
    }
}
