package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.CharCollection;
import org.apache.commons.collections.primitives.CharIterator;
/* loaded from: classes5.dex */
abstract class BaseProxyCharCollection implements CharCollection {
    protected abstract CharCollection getProxiedCollection();

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean add(char c2) {
        return getProxiedCollection().add(c2);
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean addAll(CharCollection charCollection) {
        return getProxiedCollection().addAll(charCollection);
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public void clear() {
        getProxiedCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean contains(char c2) {
        return getProxiedCollection().contains(c2);
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean containsAll(CharCollection charCollection) {
        return getProxiedCollection().containsAll(charCollection);
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean isEmpty() {
        return getProxiedCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public CharIterator iterator() {
        return getProxiedCollection().iterator();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean removeAll(CharCollection charCollection) {
        return getProxiedCollection().removeAll(charCollection);
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean removeElement(char c2) {
        return getProxiedCollection().removeElement(c2);
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean retainAll(CharCollection charCollection) {
        return getProxiedCollection().retainAll(charCollection);
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public int size() {
        return getProxiedCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public char[] toArray() {
        return getProxiedCollection().toArray();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public char[] toArray(char[] cArr) {
        return getProxiedCollection().toArray(cArr);
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
