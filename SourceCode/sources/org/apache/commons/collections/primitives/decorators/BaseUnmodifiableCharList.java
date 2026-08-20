package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.CharCollection;
import org.apache.commons.collections.primitives.CharIterator;
import org.apache.commons.collections.primitives.CharList;
import org.apache.commons.collections.primitives.CharListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class BaseUnmodifiableCharList extends BaseProxyCharList {
    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList, org.apache.commons.collections.primitives.CharList
    public final void add(int i, char c2) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList, org.apache.commons.collections.primitives.CharList
    public final boolean addAll(int i, CharCollection charCollection) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList, org.apache.commons.collections.primitives.CharList
    public final char removeElementAt(int i) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList, org.apache.commons.collections.primitives.CharList
    public final char set(int i, char c2) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharCollection, org.apache.commons.collections.primitives.CharCollection
    public final boolean add(char c2) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharCollection, org.apache.commons.collections.primitives.CharCollection
    public final boolean addAll(CharCollection charCollection) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharCollection, org.apache.commons.collections.primitives.CharCollection
    public final void clear() {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharCollection, org.apache.commons.collections.primitives.CharCollection
    public final boolean removeAll(CharCollection charCollection) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharCollection, org.apache.commons.collections.primitives.CharCollection
    public final boolean removeElement(char c2) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharCollection, org.apache.commons.collections.primitives.CharCollection
    public final boolean retainAll(CharCollection charCollection) {
        throw new UnsupportedOperationException("This CharList is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList, org.apache.commons.collections.primitives.CharList
    public final CharList subList(int i, int i2) {
        return UnmodifiableCharList.wrap(getProxiedList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharCollection, org.apache.commons.collections.primitives.CharCollection
    public final CharIterator iterator() {
        return UnmodifiableCharIterator.wrap(getProxiedList().iterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList, org.apache.commons.collections.primitives.CharList
    public CharListIterator listIterator() {
        return UnmodifiableCharListIterator.wrap(getProxiedList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.decorators.BaseProxyCharList, org.apache.commons.collections.primitives.CharList
    public CharListIterator listIterator(int i) {
        return UnmodifiableCharListIterator.wrap(getProxiedList().listIterator(i));
    }
}
