package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import kotlin.UShort;
/* loaded from: classes5.dex */
public class ArrayUnsignedShortList extends RandomAccessIntList implements IntList, Serializable {
    public static final int MAX_VALUE = 65535;
    public static final int MIN_VALUE = 0;
    private transient short[] _data;
    private int _size;

    private final short fromInt(int i) {
        return (short) (i & 65535);
    }

    private final int toInt(short s) {
        return s & UShort.MAX_VALUE;
    }

    public ArrayUnsignedShortList() {
        this(8);
    }

    public ArrayUnsignedShortList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new short[i];
        this._size = 0;
    }

    public ArrayUnsignedShortList(IntCollection intCollection) {
        this(intCollection.size());
        addAll(intCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
    public int get(int i) {
        checkRange(i);
        return toInt(this._data[i]);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.AbstractIntCollection, org.apache.commons.collections.primitives.IntCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
    public int removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        int i2 = toInt(this._data[i]);
        int i3 = (this._size - i) - 1;
        if (i3 > 0) {
            short[] sArr = this._data;
            System.arraycopy(sArr, i + 1, sArr, i, i3);
        }
        this._size--;
        return i2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
    public int set(int i, int i2) {
        assertValidUnsignedShort(i2);
        checkRange(i);
        incrModCount();
        int i3 = toInt(this._data[i]);
        this._data[i] = fromInt(i2);
        return i3;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
    public void add(int i, int i2) {
        assertValidUnsignedShort(i2);
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        short[] sArr = this._data;
        System.arraycopy(sArr, i, sArr, i + 1, this._size - i);
        this._data[i] = fromInt(i2);
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractIntCollection, org.apache.commons.collections.primitives.IntCollection
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

    private final void assertValidUnsignedShort(int i) throws IllegalArgumentException {
        if (i > 65535) {
            throw new IllegalArgumentException(new StringBuffer().append(i).append(" > 65535").toString());
        }
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer().append(i).append(" < 0").toString());
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
