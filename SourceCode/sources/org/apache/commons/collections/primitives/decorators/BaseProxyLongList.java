package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.LongCollection;
import org.apache.commons.collections.primitives.LongList;
import org.apache.commons.collections.primitives.LongListIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyLongList extends BaseProxyLongCollection implements LongList {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract LongList getProxiedList();

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyLongCollection
    protected final LongCollection getProxiedCollection() {
        return getProxiedList();
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public void add(int i, long j) {
        getProxiedList().add(i, j);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public boolean addAll(int i, LongCollection longCollection) {
        return getProxiedList().addAll(i, longCollection);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public long get(int i) {
        return getProxiedList().get(i);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public int indexOf(long j) {
        return getProxiedList().indexOf(j);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public int lastIndexOf(long j) {
        return getProxiedList().lastIndexOf(j);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongListIterator listIterator() {
        return getProxiedList().listIterator();
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongListIterator listIterator(int i) {
        return getProxiedList().listIterator(i);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public long removeElementAt(int i) {
        return getProxiedList().removeElementAt(i);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public long set(int i, long j) {
        return getProxiedList().set(i, j);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongList subList(int i, int i2) {
        return getProxiedList().subList(i, i2);
    }
}
