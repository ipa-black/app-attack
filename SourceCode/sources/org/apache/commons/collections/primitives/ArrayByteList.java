package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayByteList extends RandomAccessByteList implements ByteList, Serializable {
    private transient byte[] _data;
    private int _size;

    public ArrayByteList() {
        this(8);
    }

    public ArrayByteList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new byte[i];
        this._size = 0;
    }

    public ArrayByteList(ByteCollection byteCollection) {
        this(byteCollection.size());
        addAll(byteCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.ByteList
    public byte get(int i) {
        checkRange(i);
        return this._data[i];
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.AbstractByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.ByteList
    public byte removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        byte[] bArr = this._data;
        byte b2 = bArr[i];
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            System.arraycopy(bArr, i + 1, bArr, i, i2);
        }
        this._size--;
        return b2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.ByteList
    public byte set(int i, byte b2) {
        checkRange(i);
        incrModCount();
        byte[] bArr = this._data;
        byte b3 = bArr[i];
        bArr[i] = b2;
        return b3;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.ByteList
    public void add(int i, byte b2) {
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        byte[] bArr = this._data;
        System.arraycopy(bArr, i, bArr, i + 1, this._size - i);
        this._data[i] = b2;
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public void clear() {
        incrModCount();
        this._size = 0;
    }

    public void ensureCapacity(int i) {
        incrModCount();
        byte[] bArr = this._data;
        if (i > bArr.length) {
            int length = ((bArr.length * 3) / 2) + 1;
            if (length >= i) {
                i = length;
            }
            byte[] bArr2 = new byte[i];
            this._data = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, this._size);
        }
    }

    public void trimToSize() {
        incrModCount();
        int i = this._size;
        byte[] bArr = this._data;
        if (i < bArr.length) {
            byte[] bArr2 = new byte[i];
            this._data = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, i);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this._data.length);
        for (int i = 0; i < this._size; i++) {
            objectOutputStream.writeByte(this._data[i]);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this._data = new byte[objectInputStream.readInt()];
        for (int i = 0; i < this._size; i++) {
            this._data[i] = objectInputStream.readByte();
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
