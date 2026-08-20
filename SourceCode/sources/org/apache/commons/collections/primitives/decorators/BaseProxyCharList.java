package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.CharCollection;
import org.apache.commons.collections.primitives.CharList;
import org.apache.commons.collections.primitives.CharListIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyCharList extends BaseProxyCharCollection implements CharList {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract CharList getProxiedList();

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharCollection
    protected final CharCollection getProxiedCollection() {
        return getProxiedList();
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public void add(int i, char c2) {
        getProxiedList().add(i, c2);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public boolean addAll(int i, CharCollection charCollection) {
        return getProxiedList().addAll(i, charCollection);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public char get(int i) {
        return getProxiedList().get(i);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public int indexOf(char c2) {
        return getProxiedList().indexOf(c2);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public int lastIndexOf(char c2) {
        return getProxiedList().lastIndexOf(c2);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharListIterator listIterator() {
        return getProxiedList().listIterator();
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharListIterator listIterator(int i) {
        return getProxiedList().listIterator(i);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public char removeElementAt(int i) {
        return getProxiedList().removeElementAt(i);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public char set(int i, char c2) {
        return getProxiedList().set(i, c2);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharList subList(int i, int i2) {
        return getProxiedList().subList(i, i2);
    }
}
