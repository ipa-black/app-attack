package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.FloatCollection;
import org.apache.commons.collections.primitives.FloatIterator;
import org.apache.commons.collections.primitives.FloatList;
import org.apache.commons.collections.primitives.FloatListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseUnmodifiableFloatList extends BaseProxyFloatList {
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList, org.apache.commons.collections.primitives.FloatList
    public final void add(int i, float f2) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList, org.apache.commons.collections.primitives.FloatList
    public final boolean addAll(int i, FloatCollection floatCollection) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList, org.apache.commons.collections.primitives.FloatList
    public final float removeElementAt(int i) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList, org.apache.commons.collections.primitives.FloatList
    public final float set(int i, float f2) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public final boolean add(float f2) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public final boolean addAll(FloatCollection floatCollection) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public final void clear() {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public final boolean removeAll(FloatCollection floatCollection) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public final boolean removeElement(float f2) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public final boolean retainAll(FloatCollection floatCollection) {
        throw new UnsupportedOperationException("This FloatList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList, org.apache.commons.collections.primitives.FloatList
    public final FloatList subList(int i, int i2) {
        return UnmodifiableFloatList.wrap(getProxiedList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public final FloatIterator iterator() {
        return UnmodifiableFloatIterator.wrap(getProxiedList().iterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList, org.apache.commons.collections.primitives.FloatList
    public FloatListIterator listIterator() {
        return UnmodifiableFloatListIterator.wrap(getProxiedList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatList, org.apache.commons.collections.primitives.FloatList
    public FloatListIterator listIterator(int i) {
        return UnmodifiableFloatListIterator.wrap(getProxiedList().listIterator(i));
    }
}
