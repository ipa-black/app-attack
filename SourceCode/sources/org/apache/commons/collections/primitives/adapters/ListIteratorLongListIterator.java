package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.LongListIterator;
/* loaded from: classes5.dex */
public class ListIteratorLongListIterator implements LongListIterator {
    private ListIterator _iterator;

    public static LongListIterator wrap(ListIterator listIterator) {
        if (listIterator == null) {
            return null;
        }
        return new ListIteratorLongListIterator(listIterator);
    }

    public ListIteratorLongListIterator(ListIterator listIterator) {
        this._iterator = listIterator;
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator, org.apache.commons.collections.primitives.LongIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator, org.apache.commons.collections.primitives.LongIterator
    public long next() {
        return ((Number) this._iterator.next()).longValue();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public long previous() {
        return ((Number) this._iterator.previous()).longValue();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public void add(long j) {
        this._iterator.add(new Long(j));
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public void set(long j) {
        this._iterator.set(new Long(j));
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator, org.apache.commons.collections.primitives.LongIterator
    public void remove() {
        this._iterator.remove();
    }
}
