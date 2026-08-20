package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import org.apache.commons.collections.primitives.CharCollection;
import org.apache.commons.collections.primitives.CharIterator;
/* loaded from: classes5.dex */
abstract class AbstractCollectionCharCollection implements CharCollection {
    protected abstract Collection getCollection();

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean add(char c2) {
        return getCollection().add(new Character(c2));
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean addAll(CharCollection charCollection) {
        return getCollection().addAll(CharCollectionCollection.wrap(charCollection));
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public void clear() {
        getCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean contains(char c2) {
        return getCollection().contains(new Character(c2));
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean containsAll(CharCollection charCollection) {
        return getCollection().containsAll(CharCollectionCollection.wrap(charCollection));
    }

    public String toString() {
        return getCollection().toString();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean isEmpty() {
        return getCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public CharIterator iterator() {
        return IteratorCharIterator.wrap(getCollection().iterator());
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean removeElement(char c2) {
        return getCollection().remove(new Character(c2));
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean removeAll(CharCollection charCollection) {
        return getCollection().removeAll(CharCollectionCollection.wrap(charCollection));
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean retainAll(CharCollection charCollection) {
        return getCollection().retainAll(CharCollectionCollection.wrap(charCollection));
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public int size() {
        return getCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public char[] toArray() {
        Object[] array = getCollection().toArray();
        char[] cArr = new char[array.length];
        for (int i = 0; i < array.length; i++) {
            cArr[i] = ((Character) array[i]).charValue();
        }
        return cArr;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public char[] toArray(char[] cArr) {
        Object[] array = getCollection().toArray();
        if (cArr.length < array.length) {
            cArr = new char[array.length];
        }
        for (int i = 0; i < array.length; i++) {
            cArr[i] = ((Character) array[i]).charValue();
        }
        return cArr;
    }
}
