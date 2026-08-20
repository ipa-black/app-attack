package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.FloatListIterator;
/* loaded from: classes5.dex */
public class ListIteratorFloatListIterator implements FloatListIterator {
    private ListIterator _iterator;

    public static FloatListIterator wrap(ListIterator listIterator) {
        if (listIterator == null) {
            return null;
        }
        return new ListIteratorFloatListIterator(listIterator);
    }

    public ListIteratorFloatListIterator(ListIterator listIterator) {
        this._iterator = listIterator;
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator, org.apache.commons.collections.primitives.FloatIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator, org.apache.commons.collections.primitives.FloatIterator
    public float next() {
        return ((Number) this._iterator.next()).floatValue();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public float previous() {
        return ((Number) this._iterator.previous()).floatValue();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public void add(float f2) {
        this._iterator.add(new Float(f2));
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public void set(float f2) {
        this._iterator.set(new Float(f2));
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator, org.apache.commons.collections.primitives.FloatIterator
    public void remove() {
        this._iterator.remove();
    }
}
