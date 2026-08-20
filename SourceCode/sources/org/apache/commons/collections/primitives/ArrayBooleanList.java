package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayBooleanList extends RandomAccessBooleanList implements BooleanList, Serializable {
    private transient boolean[] _data;
    private int _size;

    public ArrayBooleanList() {
        this(8);
    }

    public ArrayBooleanList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new boolean[i];
        this._size = 0;
    }

    public ArrayBooleanList(BooleanCollection booleanCollection) {
        this(booleanCollection.size());
        addAll(booleanCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.BooleanList
    public boolean get(int i) {
        checkRange(i);
        return this._data[i];
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.AbstractBooleanCollection, org.apache.commons.collections.primitives.BooleanCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.BooleanList
    public boolean removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        boolean[] zArr = this._data;
        boolean z = zArr[i];
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            System.arraycopy(zArr, i + 1, zArr, i, i2);
        }
        this._size--;
        return z;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.BooleanList
    public boolean set(int i, boolean z) {
        checkRange(i);
        incrModCount();
        boolean[] zArr = this._data;
        boolean z2 = zArr[i];
        zArr[i] = z;
        return z2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.BooleanList
    public void add(int i, boolean z) {
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        boolean[] zArr = this._data;
        System.arraycopy(zArr, i, zArr, i + 1, this._size - i);
        this._data[i] = z;
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractBooleanCollection, org.apache.commons.collections.primitives.BooleanCollection
    public void clear() {
        incrModCount();
        this._size = 0;
    }

    public void ensureCapacity(int i) {
        incrModCount();
        boolean[] zArr = this._data;
        if (i > zArr.length) {
            int length = ((zArr.length * 3) / 2) + 1;
            if (length >= i) {
                i = length;
            }
            boolean[] zArr2 = new boolean[i];
            this._data = zArr2;
            System.arraycopy(zArr, 0, zArr2, 0, this._size);
        }
    }

    public void trimToSize() {
        incrModCount();
        int i = this._size;
        boolean[] zArr = this._data;
        if (i < zArr.length) {
            boolean[] zArr2 = new boolean[i];
            this._data = zArr2;
            System.arraycopy(zArr, 0, zArr2, 0, i);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this._data.length);
        for (int i = 0; i < this._size; i++) {
            objectOutputStream.writeBoolean(this._data[i]);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this._data = new boolean[objectInputStream.readInt()];
        for (int i = 0; i < this._size; i++) {
            this._data[i] = objectInputStream.readBoolean();
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
