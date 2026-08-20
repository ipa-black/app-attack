package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.IntListIterator;
/* loaded from: classes5.dex */
public class ListIteratorIntListIterator implements IntListIterator {
    private ListIterator _iterator;

    public static IntListIterator wrap(ListIterator listIterator) {
        if (listIterator == null) {
            return null;
        }
        return new ListIteratorIntListIterator(listIterator);
    }

    public ListIteratorIntListIterator(ListIterator listIterator) {
        this._iterator = listIterator;
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator, org.apache.commons.collections.primitives.IntIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator, org.apache.commons.collections.primitives.IntIterator
    public int next() {
        return ((Number) this._iterator.next()).intValue();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public int previous() {
        return ((Number) this._iterator.previous()).intValue();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public void add(int i) {
        this._iterator.add(new Integer(i));
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public void set(int i) {
        this._iterator.set(new Integer(i));
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator, org.apache.commons.collections.primitives.IntIterator
    public void remove() {
        this._iterator.remove();
    }
}
