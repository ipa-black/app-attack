package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ByteCollection;
import org.apache.commons.collections.primitives.ByteIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyByteCollection implements ByteCollection {
    protected abstract ByteCollection getProxiedCollection();

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean add(byte b2) {
        return getProxiedCollection().add(b2);
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean addAll(ByteCollection byteCollection) {
        return getProxiedCollection().addAll(byteCollection);
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public void clear() {
        getProxiedCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean contains(byte b2) {
        return getProxiedCollection().contains(b2);
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean containsAll(ByteCollection byteCollection) {
        return getProxiedCollection().containsAll(byteCollection);
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean isEmpty() {
        return getProxiedCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public ByteIterator iterator() {
        return getProxiedCollection().iterator();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean removeAll(ByteCollection byteCollection) {
        return getProxiedCollection().removeAll(byteCollection);
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean removeElement(byte b2) {
        return getProxiedCollection().removeElement(b2);
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public boolean retainAll(ByteCollection byteCollection) {
        return getProxiedCollection().retainAll(byteCollection);
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public int size() {
        return getProxiedCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public byte[] toArray() {
        return getProxiedCollection().toArray();
    }

    @Override // org.apache.commons.collections.primitives.ByteCollection
    public byte[] toArray(byte[] bArr) {
        return getProxiedCollection().toArray(bArr);
    }

    public boolean equals(Object obj) {
        return getProxiedCollection().equals(obj);
    }

    public int hashCode() {
        return getProxiedCollection().hashCode();
    }

    public String toString() {
        return getProxiedCollection().toString();
    }
}
