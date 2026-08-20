package org.apache.commons.collections.primitives.adapters;

import java.util.ListIterator;
import org.apache.commons.collections.primitives.BooleanListIterator;
/* loaded from: classes5.dex */
public class ListIteratorBooleanListIterator implements BooleanListIterator {
    private ListIterator _iterator;

    public static BooleanListIterator wrap(ListIterator listIterator) {
        if (listIterator == null) {
            return null;
        }
        return new ListIteratorBooleanListIterator(listIterator);
    }

    public ListIteratorBooleanListIterator(ListIterator listIterator) {
        this._iterator = listIterator;
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator
    public int nextIndex() {
        return this._iterator.nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator
    public int previousIndex() {
        return this._iterator.previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator, org.apache.commons.collections.primitives.BooleanIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator
    public boolean hasPrevious() {
        return this._iterator.hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator, org.apache.commons.collections.primitives.BooleanIterator
    public boolean next() {
        return ((Boolean) this._iterator.next()).booleanValue();
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator
    public boolean previous() {
        return ((Boolean) this._iterator.previous()).booleanValue();
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator
    public void add(boolean z) {
        this._iterator.add(new Boolean(z));
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator
    public void set(boolean z) {
        this._iterator.set(new Boolean(z));
    }

    @Override // org.apache.commons.collections.primitives.BooleanListIterator, org.apache.commons.collections.primitives.BooleanIterator
    public void remove() {
        this._iterator.remove();
    }
}
