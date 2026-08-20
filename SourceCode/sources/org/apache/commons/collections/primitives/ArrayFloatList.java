package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayFloatList extends RandomAccessFloatList implements FloatList, Serializable {
    private transient float[] _data;
    private int _size;

    public ArrayFloatList() {
        this(8);
    }

    public ArrayFloatList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new float[i];
        this._size = 0;
    }

    public ArrayFloatList(FloatCollection floatCollection) {
        this(floatCollection.size());
        addAll(floatCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.FloatList
    public float get(int i) {
        checkRange(i);
        return this._data[i];
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.AbstractFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.FloatList
    public float removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        float[] fArr = this._data;
        float f2 = fArr[i];
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            System.arraycopy(fArr, i + 1, fArr, i, i2);
        }
        this._size--;
        return f2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.FloatList
    public float set(int i, float f2) {
        checkRange(i);
        incrModCount();
        float[] fArr = this._data;
        float f3 = fArr[i];
        fArr[i] = f2;
        return f3;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.FloatList
    public void add(int i, float f2) {
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        float[] fArr = this._data;
        System.arraycopy(fArr, i, fArr, i + 1, this._size - i);
        this._data[i] = f2;
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public void clear() {
        incrModCount();
        this._size = 0;
    }

    public void ensureCapacity(int i) {
        incrModCount();
        float[] fArr = this._data;
        if (i > fArr.length) {
            int length = ((fArr.length * 3) / 2) + 1;
            if (length >= i) {
                i = length;
            }
            float[] fArr2 = new float[i];
            this._data = fArr2;
            System.arraycopy(fArr, 0, fArr2, 0, this._size);
        }
    }

    public void trimToSize() {
        incrModCount();
        int i = this._size;
        float[] fArr = this._data;
        if (i < fArr.length) {
            float[] fArr2 = new float[i];
            this._data = fArr2;
            System.arraycopy(fArr, 0, fArr2, 0, i);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this._data.length);
        for (int i = 0; i < this._size; i++) {
            objectOutputStream.writeFloat(this._data[i]);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this._data = new float[objectInputStream.readInt()];
        for (int i = 0; i < this._size; i++) {
            this._data[i] = objectInputStream.readFloat();
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
