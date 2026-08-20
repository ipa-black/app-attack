package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.LongIterator;
/* loaded from: classes5.dex */
public class IteratorLongIterator implements LongIterator {
    private Iterator _iterator;

    public static LongIterator wrap(Iterator it) {
        if (it == null) {
            return null;
        }
        return new IteratorLongIterator(it);
    }

    public IteratorLongIterator(Iterator it) {
        this._iterator = it;
    }

    @Override // org.apache.commons.collections.primitives.LongIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.LongIterator
    public long next() {
        return ((Number) this._iterator.next()).longValue();
    }

    @Override // org.apache.commons.collections.primitives.LongIterator
    public void remove() {
        this._iterator.remove();
    }
}
