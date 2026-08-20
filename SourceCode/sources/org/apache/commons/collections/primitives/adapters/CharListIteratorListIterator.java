package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.CharListIterator;
/* loaded from: classes5.dex */
public class CharListIteratorListIterator implements ListIterator {
    private CharListIterator _iterator;

    public static ListIterator wrap(CharListIterator charListIterator) {
        if (charListIterator == null) {
            return null;
        }
        return new CharListIteratorListIterator(charListIterator);
    }

    public CharListIteratorListIterator(CharListIterator charListIterator) {
        this._iterator = charListIterator;
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
        return new Character(this._iterator.next());
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return new Character(this._iterator.previous());
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        this._iterator.add(((Character) obj).charValue());
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        this._iterator.set(((Character) obj).charValue());
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
