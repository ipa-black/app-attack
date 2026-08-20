package org.apache.commons.collections.primitives.adapters;

import java.util.Iterator;
import org.apache.commons.collections.primitives.BooleanIterator;
/* loaded from: classes5.dex */
public class IteratorBooleanIterator implements BooleanIterator {
    private Iterator _iterator;

    public static BooleanIterator wrap(Iterator it) {
        if (it == null) {
            return null;
        }
        return new IteratorBooleanIterator(it);
    }

    public IteratorBooleanIterator(Iterator it) {
        this._iterator = it;
    }

    @Override // org.apache.commons.collections.primitives.BooleanIterator
    public boolean hasNext() {
        return this._iterator.hasNext();
    }

    @Override // org.apache.commons.collections.primitives.BooleanIterator
    public boolean next() {
        return ((Boolean) this._iterator.next()).booleanValue();
    }

    @Override // org.apache.commons.collections.primitives.BooleanIterator
    public void remove() {
        this._iterator.remove();
    }
}
