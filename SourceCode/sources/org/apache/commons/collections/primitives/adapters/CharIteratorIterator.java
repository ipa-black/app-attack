package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.CharIterator;
/* loaded from: classes5.dex */
public class CharIteratorIterator implements Iterator {
    private CharIterator _iterator;

    public static Iterator wrap(CharIterator charIterator) {
        if (charIterator == null) {
            return null;
        }
        return new CharIteratorIterator(charIterator);
    }

    public CharIteratorIterator(CharIterator charIterator) {
        this._iterator = charIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return new Character(this._iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
