package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayShortList extends RandomAccessShortList implements ShortList, Serializable {
    private transient short[] _data;
    private int _size;

    public ArrayShortList() {
        this(8);
    }

    public ArrayShortList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new short[i];
        this._size = 0;
    }

    public ArrayShortList(ShortCollection shortCollection) {
        this(shortCollection.size());
        addAll(shortCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
    public short get(int i) {
        checkRange(i);
        return this._data[i];
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.AbstractShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
    public short removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        short[] sArr = this._data;
        short s = sArr[i];
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            System.arraycopy(sArr, i + 1, sArr, i, i2);
        }
        this._size--;
        return s;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
    public short set(int i, short s) {
        checkRange(i);
        incrModCount();
        short[] sArr = this._data;
        short s2 = sArr[i];
        sArr[i] = s;
        return s2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
    public void add(int i, short s) {
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        short[] sArr = this._data;
        System.arraycopy(sArr, i, sArr, i + 1, this._size - i);
        this._data[i] = s;
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public void clear() {
        incrModCount();
        this._size = 0;
    }

    public void ensureCapacity(int i) {
        incrModCount();
        short[] sArr = this._data;
        if (i > sArr.length) {
            int length = ((sArr.length * 3) / 2) + 1;
            if (length >= i) {
                i = length;
            }
            short[] sArr2 = new short[i];
            this._data = sArr2;
            System.arraycopy(sArr, 0, sArr2, 0, this._size);
        }
    }

    public void trimToSize() {
        incrModCount();
        int i = this._size;
        short[] sArr = this._data;
        if (i < sArr.length) {
            short[] sArr2 = new short[i];
            this._data = sArr2;
            System.arraycopy(sArr, 0, sArr2, 0, i);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this._data.length);
        for (int i = 0; i < this._size; i++) {
            objectOutputStream.writeShort(this._data[i]);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this._data = new short[objectInputStream.readInt()];
        for (int i = 0; i < this._size; i++) {
            this._data[i] = objectInputStream.readShort();
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
