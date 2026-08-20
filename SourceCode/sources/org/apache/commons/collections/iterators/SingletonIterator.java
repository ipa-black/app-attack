package org.apache.commons.collections.iterators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections.ResettableIterator;
/* loaded from: classes5.dex */
public class SingletonIterator implements Iterator, ResettableIterator {
    private Object object;
    private boolean beforeFirst = true;
    private boolean removed = false;

    public SingletonIterator(Object obj) {
        this.object = obj;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.beforeFirst && !this.removed;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!this.beforeFirst || this.removed) {
            throw new NoSuchElementException();
        }
        this.beforeFirst = false;
        return this.object;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (this.removed || this.beforeFirst) {
            throw new IllegalStateException();
        }
        this.object = null;
        this.removed = true;
    }

    @Override // org.apache.commons.collections.ResettableIterator
    public void reset() {
        this.beforeFirst = true;
    }
}
