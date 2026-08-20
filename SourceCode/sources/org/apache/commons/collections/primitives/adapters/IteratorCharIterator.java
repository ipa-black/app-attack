package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.CharIterator;
/* loaded from: classes5.dex */
public class IteratorCharIterator implements CharIterator {
    private Iterator _iterator;

    public static CharIterator wrap(Iterator it) {
        if (it == null) {
            return null;
        }
        return new IteratorCharIterator(it);
    }

    public IteratorCharIterator(Iterator it) {
        this._iterator = it;
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public char next() {
        return ((Character) this._iterator.next()).charValue();
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public void remove() {
        this._iterator.remove();
    }
}
