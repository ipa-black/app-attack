package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.LongListIterator;
/* loaded from: classes5.dex */
public class LongListIteratorListIterator implements ListIterator {
    private LongListIterator _iterator;

    public static ListIterator wrap(LongListIterator longListIterator) {
        if (longListIterator == null) {
            return null;
        }
        return new LongListIteratorListIterator(longListIterator);
    }

    public LongListIteratorListIterator(LongListIterator longListIterator) {
        this._iterator = longListIterator;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Object next() {
        return new Long(this._iterator.next());
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return new Long(this._iterator.previous());
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        this._iterator.add(((Number) obj).longValue());
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        this._iterator.set(((Number) obj).longValue());
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
