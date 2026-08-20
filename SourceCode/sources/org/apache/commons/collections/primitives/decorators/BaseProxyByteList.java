package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ByteCollection;
import org.apache.commons.collections.primitives.ByteList;
import org.apache.commons.collections.primitives.ByteListIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyByteList extends BaseProxyByteCollection implements ByteList {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract ByteList getProxiedList();

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyByteCollection
    protected final ByteCollection getProxiedCollection() {
        return getProxiedList();
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public void add(int i, byte b2) {
        getProxiedList().add(i, b2);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public boolean addAll(int i, ByteCollection byteCollection) {
        return getProxiedList().addAll(i, byteCollection);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public byte get(int i) {
        return getProxiedList().get(i);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public int indexOf(byte b2) {
        return getProxiedList().indexOf(b2);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public int lastIndexOf(byte b2) {
        return getProxiedList().lastIndexOf(b2);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteListIterator listIterator() {
        return getProxiedList().listIterator();
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteListIterator listIterator(int i) {
        return getProxiedList().listIterator(i);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public byte removeElementAt(int i) {
        return getProxiedList().removeElementAt(i);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public byte set(int i, byte b2) {
        return getProxiedList().set(i, b2);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteList subList(int i, int i2) {
        return getProxiedList().subList(i, i2);
    }
}
