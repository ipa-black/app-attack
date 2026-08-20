package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public abstract class AbstractByteCollection implements ByteCollection {
    @Override // org.apache.commons.collections.primitives.ByteCollection
    public abstract ByteIterator iterator();

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public abstract int size();

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean add(byte b2) {
        throw new UnsupportedOperationException("add(byte) is not supported.");
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean addAll(ByteCollection byteCollection) {
        ByteIterator it = byteCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public void clear() {
        ByteIterator it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean contains(byte b2) {
        ByteIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == b2) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean containsAll(ByteCollection byteCollection) {
        ByteIterator it = byteCollection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean removeElement(byte b2) {
        ByteIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == b2) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean removeAll(ByteCollection byteCollection) {
        ByteIterator it = byteCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= removeElement(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean retainAll(ByteCollection byteCollection) {
        ByteIterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!byteCollection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public byte[] toArray() {
        byte[] bArr = new byte[size()];
        ByteIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            bArr[i] = it.next();
            i++;
        }
        return bArr;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public byte[] toArray(byte[] bArr) {
        if (bArr.length < size()) {
            return toArray();
        }
        ByteIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            bArr[i] = it.next();
            i++;
        }
        return bArr;
    }
}
