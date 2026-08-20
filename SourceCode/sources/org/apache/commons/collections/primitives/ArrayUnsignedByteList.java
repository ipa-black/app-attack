package org.apache.commons.collections.primitives;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes5.dex */
public class ArrayUnsignedByteList extends RandomAccessShortList implements ShortList, Serializable {
    public static final short MAX_VALUE = 255;
    public static final short MIN_VALUE = 0;
    private transient byte[] _data;
    private int _size;

    private final byte fromShort(short s) {
        return (byte) (s & 255);
    }

    private final short toShort(byte b2) {
        return (short) (b2 & 255);
    }

    public ArrayUnsignedByteList() {
        this(8);
    }

    public ArrayUnsignedByteList(int i) {
        this._data = null;
        this._size = 0;
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuffer("capacity ").append(i).toString());
        }
        this._data = new byte[i];
        this._size = 0;
    }

    public ArrayUnsignedByteList(ShortCollection shortCollection) {
        this(shortCollection.size());
        addAll(shortCollection);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
    public short get(int i) {
        checkRange(i);
        return toShort(this._data[i]);
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.AbstractShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public int size() {
        return this._size;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
    public short removeElementAt(int i) {
        checkRange(i);
        incrModCount();
        short s = toShort(this._data[i]);
        int i2 = (this._size - i) - 1;
        if (i2 > 0) {
            byte[] bArr = this._data;
            System.arraycopy(bArr, i + 1, bArr, i, i2);
        }
        this._size--;
        return s;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
    public short set(int i, short s) {
        assertValidUnsignedByte(s);
        checkRange(i);
        incrModCount();
        short s2 = toShort(this._data[i]);
        this._data[i] = fromShort(s);
        return s2;
    }

    @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
    public void add(int i, short s) {
        assertValidUnsignedByte(s);
        checkRangeIncludingEndpoint(i);
        incrModCount();
        ensureCapacity(this._size + 1);
        byte[] bArr = this._data;
        System.arraycopy(bArr, i, bArr, i + 1, this._size - i);
        this._data[i] = fromShort(s);
        this._size++;
    }

    @Override // org.apache.commons.collections.primitives.AbstractShortCollection, org.apache.commons.collections.primitives.ShortCollection
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

    private final void assertValidUnsignedByte(short s) throws IllegalArgumentException {
        if (s > 255) {
            throw new IllegalArgumentException(new StringBuffer().append((int) s).append(" > 255").toString());
        }
        if (s < 0) {
            throw new IllegalArgumentException(new StringBuffer().append((int) s).append(" < 0").toString());
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
