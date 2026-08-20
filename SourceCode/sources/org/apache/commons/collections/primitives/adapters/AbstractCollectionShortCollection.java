package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import org.apache.commons.collections.primitives.ShortCollection;
import org.apache.commons.collections.primitives.ShortIterator;
/* loaded from: classes5.dex */
abstract class AbstractCollectionShortCollection implements ShortCollection {
    protected abstract Collection getCollection();

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean add(short s) {
        return getCollection().add(new Short(s));
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean addAll(ShortCollection shortCollection) {
        return getCollection().addAll(ShortCollectionCollection.wrap(shortCollection));
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public void clear() {
        getCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean contains(short s) {
        return getCollection().contains(new Short(s));
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean containsAll(ShortCollection shortCollection) {
        return getCollection().containsAll(ShortCollectionCollection.wrap(shortCollection));
    }

    public String toString() {
        return getCollection().toString();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean isEmpty() {
        return getCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public ShortIterator iterator() {
        return IteratorShortIterator.wrap(getCollection().iterator());
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean removeElement(short s) {
        return getCollection().remove(new Short(s));
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean removeAll(ShortCollection shortCollection) {
        return getCollection().removeAll(ShortCollectionCollection.wrap(shortCollection));
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean retainAll(ShortCollection shortCollection) {
        return getCollection().retainAll(ShortCollectionCollection.wrap(shortCollection));
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public int size() {
        return getCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public short[] toArray() {
        Object[] array = getCollection().toArray();
        short[] sArr = new short[array.length];
        for (int i = 0; i < array.length; i++) {
            sArr[i] = ((Number) array[i]).shortValue();
        }
        return sArr;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public short[] toArray(short[] sArr) {
        Object[] array = getCollection().toArray();
        if (sArr.length < array.length) {
            sArr = new short[array.length];
        }
        for (int i = 0; i < array.length; i++) {
            sArr[i] = ((Number) array[i]).shortValue();
        }
        return sArr;
    }
}
