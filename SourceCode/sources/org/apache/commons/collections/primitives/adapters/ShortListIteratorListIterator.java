package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.ShortListIterator;
/* loaded from: classes5.dex */
public class ShortListIteratorListIterator implements ListIterator {
    private ShortListIterator _iterator;

    public static ListIterator wrap(ShortListIterator shortListIterator) {
        if (shortListIterator == null) {
            return null;
        }
        return new ShortListIteratorListIterator(shortListIterator);
    }

    public ShortListIteratorListIterator(ShortListIterator shortListIterator) {
        this._iterator = shortListIterator;
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
        return new Short(this._iterator.next());
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return new Short(this._iterator.previous());
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        this._iterator.add(((Number) obj).shortValue());
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        this._iterator.set(((Number) obj).shortValue());
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
