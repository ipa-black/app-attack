package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import org.apache.commons.collections.primitives.ByteCollection;
import org.apache.commons.collections.primitives.ByteIterator;
/* loaded from: classes5.dex */
abstract class AbstractCollectionByteCollection implements ByteCollection {
    protected abstract Collection getCollection();

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean add(byte b2) {
        return getCollection().add(new Byte(b2));
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean addAll(ByteCollection byteCollection) {
        return getCollection().addAll(ByteCollectionCollection.wrap(byteCollection));
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public void clear() {
        getCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean contains(byte b2) {
        return getCollection().contains(new Byte(b2));
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean containsAll(ByteCollection byteCollection) {
        return getCollection().containsAll(ByteCollectionCollection.wrap(byteCollection));
    }

    public String toString() {
        return getCollection().toString();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean isEmpty() {
        return getCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public ByteIterator iterator() {
        return IteratorByteIterator.wrap(getCollection().iterator());
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean removeElement(byte b2) {
        return getCollection().remove(new Byte(b2));
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean removeAll(ByteCollection byteCollection) {
        return getCollection().removeAll(ByteCollectionCollection.wrap(byteCollection));
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean retainAll(ByteCollection byteCollection) {
        return getCollection().retainAll(ByteCollectionCollection.wrap(byteCollection));
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public int size() {
        return getCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public byte[] toArray() {
        Object[] array = getCollection().toArray();
        byte[] bArr = new byte[array.length];
        for (int i = 0; i < array.length; i++) {
            bArr[i] = ((Number) array[i]).byteValue();
        }
        return bArr;
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public byte[] toArray(byte[] bArr) {
        Object[] array = getCollection().toArray();
        if (bArr.length < array.length) {
            bArr = new byte[array.length];
        }
        for (int i = 0; i < array.length; i++) {
            bArr[i] = ((Number) array[i]).byteValue();
        }
        return bArr;
    }
}
