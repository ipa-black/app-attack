package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.DoubleCollection;
import org.apache.commons.collections.primitives.DoubleIterator;
import org.apache.commons.collections.primitives.DoubleList;
import org.apache.commons.collections.primitives.DoubleListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseUnmodifiableDoubleList extends BaseProxyDoubleList {
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList, org.apache.commons.collections.primitives.DoubleList
    public final void add(int i, double d2) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList, org.apache.commons.collections.primitives.DoubleList
    public final boolean addAll(int i, DoubleCollection doubleCollection) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList, org.apache.commons.collections.primitives.DoubleList
    public final double removeElementAt(int i) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList, org.apache.commons.collections.primitives.DoubleList
    public final double set(int i, double d2) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public final boolean add(double d2) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public final boolean addAll(DoubleCollection doubleCollection) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public final void clear() {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public final boolean removeAll(DoubleCollection doubleCollection) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public final boolean removeElement(double d2) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public final boolean retainAll(DoubleCollection doubleCollection) {
        throw new UnsupportedOperationException("This DoubleList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList, org.apache.commons.collections.primitives.DoubleList
    public final DoubleList subList(int i, int i2) {
        return UnmodifiableDoubleList.wrap(getProxiedList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public final DoubleIterator iterator() {
        return UnmodifiableDoubleIterator.wrap(getProxiedList().iterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList, org.apache.commons.collections.primitives.DoubleList
    public DoubleListIterator listIterator() {
        return UnmodifiableDoubleListIterator.wrap(getProxiedList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyDoubleList, org.apache.commons.collections.primitives.DoubleList
    public DoubleListIterator listIterator(int i) {
        return UnmodifiableDoubleListIterator.wrap(getProxiedList().listIterator(i));
    }
}
