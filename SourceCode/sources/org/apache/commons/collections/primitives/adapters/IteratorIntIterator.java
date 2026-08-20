package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.IntIterator;
/* loaded from: classes5.dex */
public class IteratorIntIterator implements IntIterator {
    private Iterator _iterator;

    public static IntIterator wrap(Iterator it) {
        if (it == null) {
            return null;
        }
        return new IteratorIntIterator(it);
    }

    public IteratorIntIterator(Iterator it) {
        this._iterator = it;
    }

    @Override // org.apache.commons.collections.primitives.IntIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.IntIterator
    public int next() {
        return ((Number) this._iterator.next()).intValue();
    }

    @Override // org.apache.commons.collections.primitives.IntIterator
    public void remove() {
        this._iterator.remove();
    }
}
