package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.ByteListIterator;
/* loaded from: classes5.dex */
public class ByteListIteratorListIterator implements ListIterator {
    private ByteListIterator _iterator;

    public static ListIterator wrap(ByteListIterator byteListIterator) {
        if (byteListIterator == null) {
            return null;
        }
        return new ByteListIteratorListIterator(byteListIterator);
    }

    public ByteListIteratorListIterator(ByteListIterator byteListIterator) {
        this._iterator = byteListIterator;
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
        return new Byte(this._iterator.next());
    }

    @Override // java.util.ListIterator
    public Object previous() {
        return new Byte(this._iterator.previous());
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        this._iterator.add(((Number) obj).byteValue());
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        this._iterator.set(((Number) obj).byteValue());
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this._iterator.remove();
    }
}
