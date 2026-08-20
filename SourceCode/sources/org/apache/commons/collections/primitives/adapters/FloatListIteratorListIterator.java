package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.FloatListIterator;
/* loaded from: classes5.dex */
public class FloatListIteratorListIterator implements ListIterator {
    private FloatListIterator _iterator;

    public static ListIterator wrap(FloatListIterator floatListIterator) {
        if (floatListIterator == null) {
            return null;
        }
        return new FloatListIteratorListIterator(floatListIterator);
    }

    public FloatListIteratorListIterator(FloatListIterator floatListIterator) {
        this._iterator = floatListIterator;
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
        return new Float(this._iterator.next());
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return new Float(this._iterator.previous());
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        this._iterator.add(((Number) obj).floatValue());
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        this._iterator.set(((Number) obj).floatValue());
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
