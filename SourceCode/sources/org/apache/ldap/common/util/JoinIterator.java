package org.apache.ldap.common.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3.dex */
public class JoinIterator implements Iterator {
    private int index;
    private final Iterator[] iterators;

    public JoinIterator(Iterator[] itArr) {
        if (itArr == null || itArr.length < 2) {
            throw new IllegalArgumentException("Iterator[] arg must not be null, empty or composed of less than two Iterators");
        }
        this.iterators = itArr;
        this.index = 0;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            int i = this.index;
            Iterator[] itArr = this.iterators;
            if (i >= itArr.length) {
                return false;
            }
            if (itArr[i].hasNext()) {
                return true;
            }
            this.index++;
        }
    }

    @Override // java.util.Iterator
    public Object next() {
        while (true) {
            int i = this.index;
            Iterator[] itArr = this.iterators;
            if (i < itArr.length) {
                if (!itArr[i].hasNext()) {
                    this.index++;
                } else {
                    return this.iterators[this.index].next();
                }
            } else {
                throw new NoSuchElementException();
            }
        }
    }
}
