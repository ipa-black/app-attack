package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.IntCollection;
import org.apache.commons.collections.primitives.IntIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyIntCollection implements IntCollection {
    protected abstract IntCollection getProxiedCollection();

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean add(int i) {
        return getProxiedCollection().add(i);
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean addAll(IntCollection intCollection) {
        return getProxiedCollection().addAll(intCollection);
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public void clear() {
        getProxiedCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean contains(int i) {
        return getProxiedCollection().contains(i);
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean containsAll(IntCollection intCollection) {
        return getProxiedCollection().containsAll(intCollection);
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean isEmpty() {
        return getProxiedCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public IntIterator iterator() {
        return getProxiedCollection().iterator();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean removeAll(IntCollection intCollection) {
        return getProxiedCollection().removeAll(intCollection);
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean removeElement(int i) {
        return getProxiedCollection().removeElement(i);
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean retainAll(IntCollection intCollection) {
        return getProxiedCollection().retainAll(intCollection);
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public int size() {
        return getProxiedCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public int[] toArray() {
        return getProxiedCollection().toArray();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public int[] toArray(int[] iArr) {
        return getProxiedCollection().toArray(iArr);
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
