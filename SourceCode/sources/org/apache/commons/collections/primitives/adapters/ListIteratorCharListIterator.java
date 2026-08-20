package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.CharListIterator;
/* loaded from: classes5.dex */
public class ListIteratorCharListIterator implements CharListIterator {
    private ListIterator _iterator;

    public static CharListIterator wrap(ListIterator listIterator) {
        if (listIterator == null) {
            return null;
        }
        return new ListIteratorCharListIterator(listIterator);
    }

    public ListIteratorCharListIterator(ListIterator listIterator) {
        this._iterator = listIterator;
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator, org.apache.commons.collections.primitives.CharIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator, org.apache.commons.collections.primitives.CharIterator
    public char next() {
        return ((Character) this._iterator.next()).charValue();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public char previous() {
        return ((Character) this._iterator.previous()).charValue();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public void add(char c2) {
        this._iterator.add(new Character(c2));
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public void set(char c2) {
        this._iterator.set(new Character(c2));
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator, org.apache.commons.collections.primitives.CharIterator
    public void remove() {
        this._iterator.remove();
    }
}
