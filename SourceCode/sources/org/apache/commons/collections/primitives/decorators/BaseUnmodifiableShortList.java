package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ShortCollection;
import org.apache.commons.collections.primitives.ShortIterator;
import org.apache.commons.collections.primitives.ShortList;
import org.apache.commons.collections.primitives.ShortListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseUnmodifiableShortList extends BaseProxyShortList {
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList, org.apache.commons.collections.primitives.ShortList
    public final void add(int i, short s) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList, org.apache.commons.collections.primitives.ShortList
    public final boolean addAll(int i, ShortCollection shortCollection) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList, org.apache.commons.collections.primitives.ShortList
    public final short removeElementAt(int i) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList, org.apache.commons.collections.primitives.ShortList
    public final short set(int i, short s) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public final boolean add(short s) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public final boolean addAll(ShortCollection shortCollection) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public final void clear() {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public final boolean removeAll(ShortCollection shortCollection) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public final boolean removeElement(short s) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public final boolean retainAll(ShortCollection shortCollection) {
        throw new UnsupportedOperationException("This ShortList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList, org.apache.commons.collections.primitives.ShortList
    public final ShortList subList(int i, int i2) {
        return UnmodifiableShortList.wrap(getProxiedList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public final ShortIterator iterator() {
        return UnmodifiableShortIterator.wrap(getProxiedList().iterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList, org.apache.commons.collections.primitives.ShortList
    public ShortListIterator listIterator() {
        return UnmodifiableShortListIterator.wrap(getProxiedList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortList, org.apache.commons.collections.primitives.ShortList
    public ShortListIterator listIterator(int i) {
        return UnmodifiableShortListIterator.wrap(getProxiedList().listIterator(i));
    }
}
