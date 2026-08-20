package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.BooleanListIterator;
/* loaded from: classes5.dex */
public class BooleanListIteratorListIterator implements ListIterator {
    private BooleanListIterator _iterator;

    public static ListIterator wrap(BooleanListIterator booleanListIterator) {
        if (booleanListIterator == null) {
            return null;
        }
        return new BooleanListIteratorListIterator(booleanListIterator);
    }

    public BooleanListIteratorListIterator(BooleanListIterator booleanListIterator) {
        this._iterator = booleanListIterator;
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
        return new Boolean(this._iterator.next());
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return new Boolean(this._iterator.previous());
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        this._iterator.add(((Boolean) obj).booleanValue());
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        this._iterator.set(((Boolean) obj).booleanValue());
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
