package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.DoubleCollection;
import org.apache.commons.collections.primitives.DoubleIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyDoubleCollection implements DoubleCollection {
    protected abstract DoubleCollection getProxiedCollection();

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean add(double d2) {
        return getProxiedCollection().add(d2);
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean addAll(DoubleCollection doubleCollection) {
        return getProxiedCollection().addAll(doubleCollection);
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public void clear() {
        getProxiedCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean contains(double d2) {
        return getProxiedCollection().contains(d2);
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean containsAll(DoubleCollection doubleCollection) {
        return getProxiedCollection().containsAll(doubleCollection);
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean isEmpty() {
        return getProxiedCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public DoubleIterator iterator() {
        return getProxiedCollection().iterator();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean removeAll(DoubleCollection doubleCollection) {
        return getProxiedCollection().removeAll(doubleCollection);
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean removeElement(double d2) {
        return getProxiedCollection().removeElement(d2);
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean retainAll(DoubleCollection doubleCollection) {
        return getProxiedCollection().retainAll(doubleCollection);
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public int size() {
        return getProxiedCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public double[] toArray() {
        return getProxiedCollection().toArray();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public double[] toArray(double[] dArr) {
        return getProxiedCollection().toArray(dArr);
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
