package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ShortCollection;
import org.apache.commons.collections.primitives.ShortList;
import org.apache.commons.collections.primitives.ShortListIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyShortList extends BaseProxyShortCollection implements ShortList {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract ShortList getProxiedList();

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyShortCollection
    protected final ShortCollection getProxiedCollection() {
        return getProxiedList();
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public void add(int i, short s) {
        getProxiedList().add(i, s);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public boolean addAll(int i, ShortCollection shortCollection) {
        return getProxiedList().addAll(i, shortCollection);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public short get(int i) {
        return getProxiedList().get(i);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public int indexOf(short s) {
        return getProxiedList().indexOf(s);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public int lastIndexOf(short s) {
        return getProxiedList().lastIndexOf(s);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortListIterator listIterator() {
        return getProxiedList().listIterator();
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortListIterator listIterator(int i) {
        return getProxiedList().listIterator(i);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public short removeElementAt(int i) {
        return getProxiedList().removeElementAt(i);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public short set(int i, short s) {
        return getProxiedList().set(i, s);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortList subList(int i, int i2) {
        return getProxiedList().subList(i, i2);
    }
}
