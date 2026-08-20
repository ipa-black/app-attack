package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayLongList extends RandomAccessLongList implements LongList, Serializable {
    private transient long[] _data;
    private int _size;

    public ArrayLongList() {
        this(8);
    }

    public ArrayLongList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new long[i];
        this._size = 0;
    }

    public ArrayLongList(LongCollection longCollection) {
        this(longCollection.size());
        addAll(longCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
    public long get(int i) {
        checkRange(i);
        return this._data[i];
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.AbstractLongCollection, org.apache.commons.collections.primitives.LongCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
    public long removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        long[] jArr = this._data;
        long j = jArr[i];
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            System.arraycopy(jArr, i + 1, jArr, i, i2);
        }
        this._size--;
        return j;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
    public long set(int i, long j) {
        checkRange(i);
        incrModCount();
        long[] jArr = this._data;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
    public void add(int i, long j) {
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        long[] jArr = this._data;
        System.arraycopy(jArr, i, jArr, i + 1, this._size - i);
        this._data[i] = j;
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractLongCollection, org.apache.commons.collections.primitives.LongCollection
    public void clear() {
        incrModCount();
        this._size = 0;
    }

    public void ensureCapacity(int i) {
        incrModCount();
        long[] jArr = this._data;
        if (i > jArr.length) {
            int length = ((jArr.length * 3) / 2) + 1;
            if (length >= i) {
                i = length;
            }
            long[] jArr2 = new long[i];
            this._data = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, this._size);
        }
    }

    public void trimToSize() {
        incrModCount();
        int i = this._size;
        long[] jArr = this._data;
        if (i < jArr.length) {
            long[] jArr2 = new long[i];
            this._data = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, i);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this._data.length);
        for (int i = 0; i < this._size; i++) {
            objectOutputStream.writeLong(this._data[i]);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this._data = new long[objectInputStream.readInt()];
        for (int i = 0; i < this._size; i++) {
            this._data[i] = objectInputStream.readLong();
        }
    }

    private final void checkRange(int i) {
        if (i < 0 || i >= this._size) {
            throw new IndexOutOfBoundsException(new StringBuffer("Should be at least 0 and less than ").append(this._size).append(", found ").append(i).toString());
        }
    }

    private final void checkRangeIncludingEndpoint(int i) {
        if (i < 0 || i > this._size) {
            throw new IndexOutOfBoundsException(new StringBuffer("Should be at least 0 and at most ").append(this._size).append(", found ").append(i).toString());
        }
    }
}
