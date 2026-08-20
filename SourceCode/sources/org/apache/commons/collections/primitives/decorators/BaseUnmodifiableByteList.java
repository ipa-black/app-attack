package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ByteCollection;
import org.apache.commons.collections.primitives.ByteIterator;
import org.apache.commons.collections.primitives.ByteList;
import org.apache.commons.collections.primitives.ByteListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseUnmodifiableByteList extends BaseProxyByteList {
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList, org.apache.commons.collections.primitives.ByteList
    public final void add(int i, byte b2) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList, org.apache.commons.collections.primitives.ByteList
    public final boolean addAll(int i, ByteCollection byteCollection) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList, org.apache.commons.collections.primitives.ByteList
    public final byte removeElementAt(int i) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList, org.apache.commons.collections.primitives.ByteList
    public final byte set(int i, byte b2) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public final boolean add(byte b2) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public final boolean addAll(ByteCollection byteCollection) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public final void clear() {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public final boolean removeAll(ByteCollection byteCollection) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public final boolean removeElement(byte b2) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public final boolean retainAll(ByteCollection byteCollection) {
        throw new UnsupportedOperationException("This ByteList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList, org.apache.commons.collections.primitives.ByteList
    public final ByteList subList(int i, int i2) {
        return UnmodifiableByteList.wrap(getProxiedList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public final ByteIterator iterator() {
        return UnmodifiableByteIterator.wrap(getProxiedList().iterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList, org.apache.commons.collections.primitives.ByteList
    public ByteListIterator listIterator() {
        return UnmodifiableByteListIterator.wrap(getProxiedList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteList, org.apache.commons.collections.primitives.ByteList
    public ByteListIterator listIterator(int i) {
        return UnmodifiableByteListIterator.wrap(getProxiedList().listIterator(i));
    }
}
