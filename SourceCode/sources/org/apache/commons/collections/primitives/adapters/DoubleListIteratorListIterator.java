package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.DoubleListIterator;
/* loaded from: classes5.dex */
public class DoubleListIteratorListIterator implements ListIterator {
    private DoubleListIterator _iterator;

    public static ListIterator wrap(DoubleListIterator doubleListIterator) {
        if (doubleListIterator == null) {
            return null;
        }
        return new DoubleListIteratorListIterator(doubleListIterator);
    }

    public DoubleListIteratorListIterator(DoubleListIterator doubleListIterator) {
        this._iterator = doubleListIterator;
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
        return new Double(this._iterator.next());
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return new Double(this._iterator.previous());
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        this._iterator.add(((Number) obj).doubleValue());
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        this._iterator.set(((Number) obj).doubleValue());
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
