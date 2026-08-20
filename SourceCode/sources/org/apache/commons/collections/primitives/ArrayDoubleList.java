package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayDoubleList extends RandomAccessDoubleList implements DoubleList, Serializable {
    private transient double[] _data;
    private int _size;

    public ArrayDoubleList() {
        this(8);
    }

    public ArrayDoubleList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new double[i];
        this._size = 0;
    }

    public ArrayDoubleList(DoubleCollection doubleCollection) {
        this(doubleCollection.size());
        addAll(doubleCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.DoubleList
    public double get(int i) {
        checkRange(i);
        return this._data[i];
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.AbstractDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.DoubleList
    public double removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        double[] dArr = this._data;
        double d2 = dArr[i];
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            System.arraycopy(dArr, i + 1, dArr, i, i2);
        }
        this._size--;
        return d2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.DoubleList
    public double set(int i, double d2) {
        checkRange(i);
        incrModCount();
        double[] dArr = this._data;
        double d3 = dArr[i];
        dArr[i] = d2;
        return d3;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.DoubleList
    public void add(int i, double d2) {
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        double[] dArr = this._data;
        System.arraycopy(dArr, i, dArr, i + 1, this._size - i);
        this._data[i] = d2;
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public void clear() {
        incrModCount();
        this._size = 0;
    }

    public void ensureCapacity(int i) {
        incrModCount();
        double[] dArr = this._data;
        if (i > dArr.length) {
            int length = ((dArr.length * 3) / 2) + 1;
            if (length >= i) {
                i = length;
            }
            double[] dArr2 = new double[i];
            this._data = dArr2;
            System.arraycopy(dArr, 0, dArr2, 0, this._size);
        }
    }

    public void trimToSize() {
        incrModCount();
        int i = this._size;
        double[] dArr = this._data;
        if (i < dArr.length) {
            double[] dArr2 = new double[i];
            this._data = dArr2;
            System.arraycopy(dArr, 0, dArr2, 0, i);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this._data.length);
        for (int i = 0; i < this._size; i++) {
            objectOutputStream.writeDouble(this._data[i]);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this._data = new double[objectInputStream.readInt()];
        for (int i = 0; i < this._size; i++) {
            this._data[i] = objectInputStream.readDouble();
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
