package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.IntListIterator;
/* loaded from: classes5.dex */
public class IntListIteratorListIterator implements ListIterator {
    private IntListIterator _iterator;

    public static ListIterator wrap(IntListIterator intListIterator) {
        if (intListIterator == null) {
            return null;
        }
        return new IntListIteratorListIterator(intListIterator);
    }

    public IntListIteratorListIterator(IntListIterator intListIterator) {
        this._iterator = intListIterator;
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
        return new Integer(this._iterator.next());
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return new Integer(this._iterator.previous());
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        this._iterator.add(((Number) obj).intValue());
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        this._iterator.set(((Number) obj).intValue());
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
