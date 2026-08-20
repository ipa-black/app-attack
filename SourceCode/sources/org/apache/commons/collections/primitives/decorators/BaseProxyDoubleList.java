package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.DoubleCollection;
import org.apache.commons.collections.primitives.DoubleList;
import org.apache.commons.collections.primitives.DoubleListIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyDoubleList extends BaseProxyDoubleCollection implements DoubleList {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract DoubleList getProxiedList();

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleCollection
    protected final DoubleCollection getProxiedCollection() {
        return getProxiedList();
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public void add(int i, double d2) {
        getProxiedList().add(i, d2);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public boolean addAll(int i, DoubleCollection doubleCollection) {
        return getProxiedList().addAll(i, doubleCollection);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public double get(int i) {
        return getProxiedList().get(i);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public int indexOf(double d2) {
        return getProxiedList().indexOf(d2);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public int lastIndexOf(double d2) {
        return getProxiedList().lastIndexOf(d2);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleListIterator listIterator() {
        return getProxiedList().listIterator();
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleListIterator listIterator(int i) {
        return getProxiedList().listIterator(i);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public double removeElementAt(int i) {
        return getProxiedList().removeElementAt(i);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public double set(int i, double d2) {
        return getProxiedList().set(i, d2);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleList subList(int i, int i2) {
        return getProxiedList().subList(i, i2);
    }
}
