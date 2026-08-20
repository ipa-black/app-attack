package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ShortCollection;
import org.apache.commons.collections.primitives.ShortIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyShortCollection implements ShortCollection {
    protected abstract ShortCollection getProxiedCollection();

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean add(short s) {
        return getProxiedCollection().add(s);
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean addAll(ShortCollection shortCollection) {
        return getProxiedCollection().addAll(shortCollection);
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public void clear() {
        getProxiedCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean contains(short s) {
        return getProxiedCollection().contains(s);
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean containsAll(ShortCollection shortCollection) {
        return getProxiedCollection().containsAll(shortCollection);
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean isEmpty() {
        return getProxiedCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public ShortIterator iterator() {
        return getProxiedCollection().iterator();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean removeAll(ShortCollection shortCollection) {
        return getProxiedCollection().removeAll(shortCollection);
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean removeElement(short s) {
        return getProxiedCollection().removeElement(s);
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean retainAll(ShortCollection shortCollection) {
        return getProxiedCollection().retainAll(shortCollection);
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public int size() {
        return getProxiedCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public short[] toArray() {
        return getProxiedCollection().toArray();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public short[] toArray(short[] sArr) {
        return getProxiedCollection().toArray(sArr);
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
