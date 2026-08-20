package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayIntList extends RandomAccessIntList implements IntList, Serializable {
    private transient int[] _data;
    private int _size;

    public ArrayIntList() {
        this(8);
    }

    public ArrayIntList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new int[i];
        this._size = 0;
    }

    public ArrayIntList(IntCollection intCollection) {
        this(intCollection.size());
        addAll(intCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
    public int get(int i) {
        checkRange(i);
        return this._data[i];
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.AbstractIntCollection, org.apache.commons.collections.primitives.IntCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
    public int removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        int[] iArr = this._data;
        int i2 = iArr[i];
        int i3 = (this._size - i) - 1;
        if (i3 > 0) {
            System.arraycopy(iArr, i + 1, iArr, i, i3);
        }
        this._size--;
        return i2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
    public int set(int i, int i2) {
        checkRange(i);
        incrModCount();
        int[] iArr = this._data;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
    public void add(int i, int i2) {
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        int[] iArr = this._data;
        System.arraycopy(iArr, i, iArr, i + 1, this._size - i);
        this._data[i] = i2;
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractIntCollection, org.apache.commons.collections.primitives.IntCollection
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
