package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayCharList extends RandomAccessCharList implements CharList, Serializable {
    private transient char[] _data;
    private int _size;

    public ArrayCharList() {
        this(8);
    }

    public ArrayCharList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new char[i];
        this._size = 0;
    }

    public ArrayCharList(CharCollection charCollection) {
        this(charCollection.size());
        addAll(charCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.CharList
    public char get(int i) {
        checkRange(i);
        return this._data[i];
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.AbstractCharCollection, org.apache.commons.collections.primitives.CharCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.CharList
    public char removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        char[] cArr = this._data;
        char c2 = cArr[i];
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            System.arraycopy(cArr, i + 1, cArr, i, i2);
        }
        this._size--;
        return c2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.CharList
    public char set(int i, char c2) {
        checkRange(i);
        incrModCount();
        char[] cArr = this._data;
        char c3 = cArr[i];
        cArr[i] = c2;
        return c3;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.CharList
    public void add(int i, char c2) {
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        char[] cArr = this._data;
        System.arraycopy(cArr, i, cArr, i + 1, this._size - i);
        this._data[i] = c2;
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractCharCollection, org.apache.commons.collections.primitives.CharCollection
    public void clear() {
        incrModCount();
        this._size = 0;
    }

    public void ensureCapacity(int i) {
        incrModCount();
        char[] cArr = this._data;
        if (i > cArr.length) {
            int length = ((cArr.length * 3) / 2) + 1;
            if (length >= i) {
                i = length;
            }
            char[] cArr2 = new char[i];
            this._data = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, this._size);
        }
    }

    public void trimToSize() {
        incrModCount();
        int i = this._size;
        char[] cArr = this._data;
        if (i < cArr.length) {
            char[] cArr2 = new char[i];
            this._data = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this._data.length);
        for (int i = 0; i < this._size; i++) {
            objectOutputStream.writeChar(this._data[i]);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this._data = new char[objectInputStream.readInt()];
        for (int i = 0; i < this._size; i++) {
            this._data[i] = objectInputStream.readChar();
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
