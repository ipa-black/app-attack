package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.FloatCollection;
import org.apache.commons.collections.primitives.FloatIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyFloatCollection implements FloatCollection {
    protected abstract FloatCollection getProxiedCollection();

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean add(float f2) {
        return getProxiedCollection().add(f2);
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean addAll(FloatCollection floatCollection) {
        return getProxiedCollection().addAll(floatCollection);
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public void clear() {
        getProxiedCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean contains(float f2) {
        return getProxiedCollection().contains(f2);
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean containsAll(FloatCollection floatCollection) {
        return getProxiedCollection().containsAll(floatCollection);
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean isEmpty() {
        return getProxiedCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public FloatIterator iterator() {
        return getProxiedCollection().iterator();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean removeAll(FloatCollection floatCollection) {
        return getProxiedCollection().removeAll(floatCollection);
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean removeElement(float f2) {
        return getProxiedCollection().removeElement(f2);
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean retainAll(FloatCollection floatCollection) {
        return getProxiedCollection().retainAll(floatCollection);
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public int size() {
        return getProxiedCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public float[] toArray() {
        return getProxiedCollection().toArray();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public float[] toArray(float[] fArr) {
        return getProxiedCollection().toArray(fArr);
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
