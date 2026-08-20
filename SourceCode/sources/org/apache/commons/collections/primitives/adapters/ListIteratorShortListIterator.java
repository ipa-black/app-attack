package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.ShortListIterator;
/* loaded from: classes5.dex */
public class ListIteratorShortListIterator implements ShortListIterator {
    private ListIterator _iterator;

    public static ShortListIterator wrap(ListIterator listIterator) {
        if (listIterator == null) {
            return null;
        }
        return new ListIteratorShortListIterator(listIterator);
    }

    public ListIteratorShortListIterator(ListIterator listIterator) {
        this._iterator = listIterator;
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator, org.apache.commons.collections.primitives.ShortIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator, org.apache.commons.collections.primitives.ShortIterator
    public short next() {
        return ((Number) this._iterator.next()).shortValue();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public short previous() {
        return ((Number) this._iterator.previous()).shortValue();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public void add(short s) {
        this._iterator.add(new Short(s));
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public void set(short s) {
        this._iterator.set(new Short(s));
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator, org.apache.commons.collections.primitives.ShortIterator
    public void remove() {
        this._iterator.remove();
    }
}
