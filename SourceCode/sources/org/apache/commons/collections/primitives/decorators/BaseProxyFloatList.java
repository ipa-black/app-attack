package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.FloatCollection;
import org.apache.commons.collections.primitives.FloatList;
import org.apache.commons.collections.primitives.FloatListIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyFloatList extends BaseProxyFloatCollection implements FloatList {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract FloatList getProxiedList();

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyFloatCollection
    protected final FloatCollection getProxiedCollection() {
        return getProxiedList();
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public void add(int i, float f2) {
        getProxiedList().add(i, f2);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public boolean addAll(int i, FloatCollection floatCollection) {
        return getProxiedList().addAll(i, floatCollection);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public float get(int i) {
        return getProxiedList().get(i);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public int indexOf(float f2) {
        return getProxiedList().indexOf(f2);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public int lastIndexOf(float f2) {
        return getProxiedList().lastIndexOf(f2);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatListIterator listIterator() {
        return getProxiedList().listIterator();
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatListIterator listIterator(int i) {
        return getProxiedList().listIterator(i);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public float removeElementAt(int i) {
        return getProxiedList().removeElementAt(i);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public float set(int i, float f2) {
        return getProxiedList().set(i, f2);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatList subList(int i, int i2) {
        return getProxiedList().subList(i, i2);
    }
}
