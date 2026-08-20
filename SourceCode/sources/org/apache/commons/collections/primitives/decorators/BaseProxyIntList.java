package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.IntCollection;
import org.apache.commons.collections.primitives.IntList;
import org.apache.commons.collections.primitives.IntListIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyIntList extends BaseProxyIntCollection implements IntList {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract IntList getProxiedList();

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntCollection
    protected final IntCollection getProxiedCollection() {
        return getProxiedList();
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public void add(int i, int i2) {
        getProxiedList().add(i, i2);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public boolean addAll(int i, IntCollection intCollection) {
        return getProxiedList().addAll(i, intCollection);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int get(int i) {
        return getProxiedList().get(i);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int indexOf(int i) {
        return getProxiedList().indexOf(i);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int lastIndexOf(int i) {
        return getProxiedList().lastIndexOf(i);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntListIterator listIterator() {
        return getProxiedList().listIterator();
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntListIterator listIterator(int i) {
        return getProxiedList().listIterator(i);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int removeElementAt(int i) {
        return getProxiedList().removeElementAt(i);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int set(int i, int i2) {
        return getProxiedList().set(i, i2);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntList subList(int i, int i2) {
        return getProxiedList().subList(i, i2);
    }
}
