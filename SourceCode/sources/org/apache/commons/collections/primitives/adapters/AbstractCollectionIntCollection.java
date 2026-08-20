package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import org.apache.commons.collections.primitives.IntCollection;
import org.apache.commons.collections.primitives.IntIterator;
/* loaded from: classes5.dex */
abstract class AbstractCollectionIntCollection implements IntCollection {
    protected abstract Collection getCollection();

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean add(int i) {
        return getCollection().add(new Integer(i));
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean addAll(IntCollection intCollection) {
        return getCollection().addAll(IntCollectionCollection.wrap(intCollection));
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public void clear() {
        getCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean contains(int i) {
        return getCollection().contains(new Integer(i));
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean containsAll(IntCollection intCollection) {
        return getCollection().containsAll(IntCollectionCollection.wrap(intCollection));
    }

    public String toString() {
        return getCollection().toString();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean isEmpty() {
        return getCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public IntIterator iterator() {
        return IteratorIntIterator.wrap(getCollection().iterator());
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean removeElement(int i) {
        return getCollection().remove(new Integer(i));
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean removeAll(IntCollection intCollection) {
        return getCollection().removeAll(IntCollectionCollection.wrap(intCollection));
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean retainAll(IntCollection intCollection) {
        return getCollection().retainAll(IntCollectionCollection.wrap(intCollection));
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public int size() {
        return getCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public int[] toArray() {
        Object[] array = getCollection().toArray();
        int[] iArr = new int[array.length];
        for (int i = 0; i < array.length; i++) {
            iArr[i] = ((Number) array[i]).intValue();
        }
        return iArr;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public int[] toArray(int[] iArr) {
        Object[] array = getCollection().toArray();
        if (iArr.length < array.length) {
            iArr = new int[array.length];
        }
        for (int i = 0; i < array.length; i++) {
            iArr[i] = ((Number) array[i]).intValue();
        }
        return iArr;
    }
}
