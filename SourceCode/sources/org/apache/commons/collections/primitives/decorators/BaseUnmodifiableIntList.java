package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.IntCollection;
import org.apache.commons.collections.primitives.IntIterator;
import org.apache.commons.collections.primitives.IntList;
import org.apache.commons.collections.primitives.IntListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseUnmodifiableIntList extends BaseProxyIntList {
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList, org.apache.commons.collections.primitives.IntList
    public final void add(int i, int i2) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList, org.apache.commons.collections.primitives.IntList
    public final boolean addAll(int i, IntCollection intCollection) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList, org.apache.commons.collections.primitives.IntList
    public final int removeElementAt(int i) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList, org.apache.commons.collections.primitives.IntList
    public final int set(int i, int i2) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntCollection, org.apache.commons.collections.primitives.IntCollection
    public final boolean add(int i) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntCollection, org.apache.commons.collections.primitives.IntCollection
    public final boolean addAll(IntCollection intCollection) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntCollection, org.apache.commons.collections.primitives.IntCollection
    public final void clear() {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntCollection, org.apache.commons.collections.primitives.IntCollection
    public final boolean removeAll(IntCollection intCollection) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntCollection, org.apache.commons.collections.primitives.IntCollection
    public final boolean removeElement(int i) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntCollection, org.apache.commons.collections.primitives.IntCollection
    public final boolean retainAll(IntCollection intCollection) {
        throw new UnsupportedOperationException("This IntList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList, org.apache.commons.collections.primitives.IntList
    public final IntList subList(int i, int i2) {
        return UnmodifiableIntList.wrap(getProxiedList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntCollection, org.apache.commons.collections.primitives.IntCollection
    public final IntIterator iterator() {
        return UnmodifiableIntIterator.wrap(getProxiedList().iterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList, org.apache.commons.collections.primitives.IntList
    public IntListIterator listIterator() {
        return UnmodifiableIntListIterator.wrap(getProxiedList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyIntList, org.apache.commons.collections.primitives.IntList
    public IntListIterator listIterator(int i) {
        return UnmodifiableIntListIterator.wrap(getProxiedList().listIterator(i));
    }
}
