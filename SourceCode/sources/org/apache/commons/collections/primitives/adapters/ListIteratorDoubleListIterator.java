package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.DoubleListIterator;
/* loaded from: classes5.dex */
public class ListIteratorDoubleListIterator implements DoubleListIterator {
    private ListIterator _iterator;

    public static DoubleListIterator wrap(ListIterator listIterator) {
        if (listIterator == null) {
            return null;
        }
        return new ListIteratorDoubleListIterator(listIterator);
    }

    public ListIteratorDoubleListIterator(ListIterator listIterator) {
        this._iterator = listIterator;
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator, org.apache.commons.collections.primitives.DoubleIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator, org.apache.commons.collections.primitives.DoubleIterator
    public double next() {
        return ((Number) this._iterator.next()).doubleValue();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public double previous() {
        return ((Number) this._iterator.previous()).doubleValue();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public void add(double d2) {
        this._iterator.add(new Double(d2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public void set(double d2) {
        this._iterator.set(new Double(d2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator, org.apache.commons.collections.primitives.DoubleIterator
    public void remove() {
        this._iterator.remove();
    }
}
