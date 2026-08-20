package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.ByteListIterator;
/* loaded from: classes5.dex */
public class ListIteratorByteListIterator implements ByteListIterator {
    private ListIterator _iterator;

    public static ByteListIterator wrap(ListIterator listIterator) {
        if (listIterator == null) {
            return null;
        }
        return new ListIteratorByteListIterator(listIterator);
    }

    public ListIteratorByteListIterator(ListIterator listIterator) {
        this._iterator = listIterator;
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator, org.apache.commons.collections.primitives.ByteIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator, org.apache.commons.collections.primitives.ByteIterator
    public byte next() {
        return ((Number) this._iterator.next()).byteValue();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public byte previous() {
        return ((Number) this._iterator.previous()).byteValue();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public void add(byte b2) {
        this._iterator.add(new Byte(b2));
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public void set(byte b2) {
        this._iterator.set(new Byte(b2));
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator, org.apache.commons.collections.primitives.ByteIterator
    public void remove() {
        this._iterator.remove();
    }
}
