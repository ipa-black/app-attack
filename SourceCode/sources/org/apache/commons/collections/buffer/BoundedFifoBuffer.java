package org.apache.commons.collections.buffer;

import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections.BoundedCollection;
import org.apache.commons.collections.Buffer;
import org.apache.commons.collections.BufferOverflowException;
import org.apache.commons.collections.BufferUnderflowException;
/* loaded from: classes5.dex */
public class BoundedFifoBuffer extends AbstractCollection implements Buffer, BoundedCollection {
    private final Object[] elements;
    private int end;
    private boolean full;
    private final int maxElements;
    private int start;

    public BoundedFifoBuffer() {
        this(32);
    }

    public BoundedFifoBuffer(int i) {
        this.start = 0;
        this.end = 0;
        this.full = false;
        if (i <= 0) {
            throw new IllegalArgumentException("The size must be greater than 0");
        }
        Object[] objArr = new Object[i];
        this.elements = objArr;
        this.maxElements = objArr.length;
    }

    public BoundedFifoBuffer(Collection collection) {
        this(collection.size());
        addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        int i = this.end;
        int i2 = this.start;
        if (i < i2) {
            return (this.maxElements - i2) + i;
        }
        if (i == i2) {
            return this.full ? this.maxElements : 0;
        }
        return i - i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.BoundedCollection
    public boolean isFull() {
        return size() == this.maxElements;
    }

    @Override // org.apache.commons.collections.BoundedCollection
    public int maxSize() {
        return this.maxElements;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.full = false;
        this.start = 0;
        this.end = 0;
        Arrays.fill(this.elements, (Object) null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Attempted to add null object to buffer");
        }
        if (this.full) {
            throw new BufferOverflowException(new StringBuffer("The buffer cannot hold more than ").append(this.maxElements).append(" objects.").toString());
        }
        Object[] objArr = this.elements;
        int i = this.end;
        int i2 = i + 1;
        this.end = i2;
        objArr[i] = obj;
        if (i2 >= this.maxElements) {
            this.end = 0;
        }
        if (this.end == this.start) {
            this.full = true;
        }
        return true;
    }

    @Override // org.apache.commons.collections.Buffer
    public Object get() {
        if (isEmpty()) {
            throw new BufferUnderflowException("The buffer is already empty");
        }
        return this.elements[this.start];
    }

    @Override // org.apache.commons.collections.Buffer
    public Object remove() {
        if (isEmpty()) {
            throw new BufferUnderflowException("The buffer is already empty");
        }
        Object[] objArr = this.elements;
        int i = this.start;
        Object obj = objArr[i];
        if (obj != null) {
            int i2 = i + 1;
            this.start = i2;
            objArr[i] = null;
            if (i2 >= this.maxElements) {
                this.start = 0;
            }
            this.full = false;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int increment(int i) {
        int i2 = i + 1;
        if (i2 >= this.maxElements) {
            return 0;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int decrement(int i) {
        int i2 = i - 1;
        return i2 < 0 ? this.maxElements - 1 : i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new Iterator() { // from class: org.apache.commons.collections.buffer.BoundedFifoBuffer.1
            private int index;
            private boolean isFirst;
            private int lastReturnedIndex = -1;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.isFirst || this.index != BoundedFifoBuffer.this.end;
            }

            @Override // java.util.Iterator
            public Object next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.isFirst = false;
                int i = this.index;
                this.lastReturnedIndex = i;
                this.index = BoundedFifoBuffer.this.increment(i);
                return BoundedFifoBuffer.this.elements[this.lastReturnedIndex];
            }

            {
                this.index = BoundedFifoBuffer.this.start;
                this.isFirst = BoundedFifoBuffer.this.full;
            }

            @Override // java.util.Iterator
            public void remove() {
                int i = this.lastReturnedIndex;
                if (i != -1) {
                    if (i == BoundedFifoBuffer.this.start) {
                        BoundedFifoBuffer.this.remove();
                        this.lastReturnedIndex = -1;
                        return;
                    }
                    int i2 = this.lastReturnedIndex;
                    while (true) {
                        i2++;
                        while (i2 != BoundedFifoBuffer.this.end) {
                            if (i2 >= BoundedFifoBuffer.this.maxElements) {
                                BoundedFifoBuffer.this.elements[i2 - 1] = BoundedFifoBuffer.this.elements[0];
                                i2 = 0;
                            }
                        }
                        this.lastReturnedIndex = -1;
                        BoundedFifoBuffer boundedFifoBuffer = BoundedFifoBuffer.this;
                        boundedFifoBuffer.end = boundedFifoBuffer.decrement(boundedFifoBuffer.end);
                        BoundedFifoBuffer.this.elements[BoundedFifoBuffer.this.end] = null;
                        BoundedFifoBuffer.this.full = false;
                        this.index = BoundedFifoBuffer.this.decrement(this.index);
                        return;
                        BoundedFifoBuffer.this.elements[i2 - 1] = BoundedFifoBuffer.this.elements[i2];
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
        };
    }
}
