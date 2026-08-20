package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.LongCollection;
import org.apache.commons.collections.primitives.LongIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyLongCollection implements LongCollection {
    protected abstract LongCollection getProxiedCollection();

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean add(long j) {
        return getProxiedCollection().add(j);
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean addAll(LongCollection longCollection) {
        return getProxiedCollection().addAll(longCollection);
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public void clear() {
        getProxiedCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean contains(long j) {
        return getProxiedCollection().contains(j);
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean containsAll(LongCollection longCollection) {
        return getProxiedCollection().containsAll(longCollection);
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean isEmpty() {
        return getProxiedCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public LongIterator iterator() {
        return getProxiedCollection().iterator();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean removeAll(LongCollection longCollection) {
        return getProxiedCollection().removeAll(longCollection);
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean removeElement(long j) {
        return getProxiedCollection().removeElement(j);
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean retainAll(LongCollection longCollection) {
        return getProxiedCollection().retainAll(longCollection);
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public int size() {
        return getProxiedCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public long[] toArray() {
        return getProxiedCollection().toArray();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public long[] toArray(long[] jArr) {
        return getProxiedCollection().toArray(jArr);
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
