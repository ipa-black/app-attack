package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayUnsignedIntList extends RandomAccessLongList implements LongList, Serializable {
    public static final long MAX_VALUE = 4294967295L;
    public static final long MIN_VALUE = 0;
    private transient int[] _data;
    private int _size;

    private final int fromLong(long j) {
        return (int) (j & MAX_VALUE);
    }

    private final long toLong(int i) {
        return i & MAX_VALUE;
    }

    public ArrayUnsignedIntList() {
        this(8);
    }

    public ArrayUnsignedIntList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new int[i];
        this._size = 0;
    }

    public ArrayUnsignedIntList(LongCollection longCollection) {
        this(longCollection.size());
        addAll(longCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
    public long get(int i) {
        checkRange(i);
        return toLong(this._data[i]);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.AbstractLongCollection, org.apache.commons.collections.primitives.LongCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
    public long removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        long j = toLong(this._data[i]);
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            int[] iArr = this._data;
            System.arraycopy(iArr, i + 1, iArr, i, i2);
        }
        this._size--;
        return j;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
    public long set(int i, long j) {
        assertValidUnsignedInt(j);
        checkRange(i);
        incrModCount();
        long j2 = toLong(this._data[i]);
        this._data[i] = fromLong(j);
        return j2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
    public void add(int i, long j) {
        assertValidUnsignedInt(j);
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        int[] iArr = this._data;
        System.arraycopy(iArr, i, iArr, i + 1, this._size - i);
        this._data[i] = fromLong(j);
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractLongCollection, org.apache.commons.collections.primitives.LongCollection
    public void clear() {
        incrModCount();
        this._size = 0;
    }

    public void ensureCapacity(int i) {
        incrModCount();
        int[] iArr = this._data;
        if (i > iArr.length) {
            int length = ((iArr.length * 3) / 2) + 1;
            if (length >= i) {
                i = length;
            }
            int[] iArr2 = new int[i];
            this._data = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, this._size);
        }
    }

    public void trimToSize() {
        incrModCount();
        int i = this._size;
        int[] iArr = this._data;
        if (i < iArr.length) {
            int[] iArr2 = new int[i];
            this._data = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i);
        }
    }

    private final void assertValidUnsignedInt(long j) throws IllegalArgumentException {
        if (j > MAX_VALUE) {
            throw new IllegalArgumentException(new StringBuffer().append(j).append(" > 4294967295").toString());
        }
        if (j < 0) {
            throw new IllegalArgumentException(new StringBuffer().append(j).append(" < 0").toString());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this._data.length);
        for (int i = 0; i < this._size; i++) {
            objectOutputStream.writeInt(this._data[i]);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this._data = new int[objectInputStream.readInt()];
        for (int i = 0; i < this._size; i++) {
            this._data[i] = objectInputStream.readInt();
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
