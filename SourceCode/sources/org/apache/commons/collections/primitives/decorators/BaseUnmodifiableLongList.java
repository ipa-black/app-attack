package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.LongCollection;
import org.apache.commons.collections.primitives.LongIterator;
import org.apache.commons.collections.primitives.LongList;
import org.apache.commons.collections.primitives.LongListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseUnmodifiableLongList extends BaseProxyLongList {
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList, org.apache.commons.collections.primitives.LongList
    public final void add(int i, long j) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList, org.apache.commons.collections.primitives.LongList
    public final boolean addAll(int i, LongCollection longCollection) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList, org.apache.commons.collections.primitives.LongList
    public final long removeElementAt(int i) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList, org.apache.commons.collections.primitives.LongList
    public final long set(int i, long j) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongCollection, org.apache.commons.collections.primitives.LongCollection
    public final boolean add(long j) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongCollection, org.apache.commons.collections.primitives.LongCollection
    public final boolean addAll(LongCollection longCollection) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongCollection, org.apache.commons.collections.primitives.LongCollection
    public final void clear() {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongCollection, org.apache.commons.collections.primitives.LongCollection
    public final boolean removeAll(LongCollection longCollection) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongCollection, org.apache.commons.collections.primitives.LongCollection
    public final boolean removeElement(long j) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongCollection, org.apache.commons.collections.primitives.LongCollection
    public final boolean retainAll(LongCollection longCollection) {
        throw new UnsupportedOperationException("This LongList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList, org.apache.commons.collections.primitives.LongList
    public final LongList subList(int i, int i2) {
        return UnmodifiableLongList.wrap(getProxiedList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongCollection, org.apache.commons.collections.primitives.LongCollection
    public final LongIterator iterator() {
        return UnmodifiableLongIterator.wrap(getProxiedList().iterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList, org.apache.commons.collections.primitives.LongList
    public LongListIterator listIterator() {
        return UnmodifiableLongListIterator.wrap(getProxiedList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongList, org.apache.commons.collections.primitives.LongList
    public LongListIterator listIterator(int i) {
        return UnmodifiableLongListIterator.wrap(getProxiedList().listIterator(i));
    }
}
