package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import org.apache.commons.collections.primitives.BooleanCollection;
import org.apache.commons.collections.primitives.BooleanIterator;
/* loaded from: classes5.dex */
abstract class AbstractCollectionBooleanCollection implements BooleanCollection {
    protected abstract Collection getCollection();

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean add(boolean z) {
        return getCollection().add(new Boolean(z));
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean addAll(BooleanCollection booleanCollection) {
        return getCollection().addAll(BooleanCollectionCollection.wrap(booleanCollection));
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public void clear() {
        getCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean contains(boolean z) {
        return getCollection().contains(new Boolean(z));
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean containsAll(BooleanCollection booleanCollection) {
        return getCollection().containsAll(BooleanCollectionCollection.wrap(booleanCollection));
    }

    public String toString() {
        return getCollection().toString();
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean isEmpty() {
        return getCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public BooleanIterator iterator() {
        return IteratorBooleanIterator.wrap(getCollection().iterator());
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean removeElement(boolean z) {
        return getCollection().remove(new Boolean(z));
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean removeAll(BooleanCollection booleanCollection) {
        return getCollection().removeAll(BooleanCollectionCollection.wrap(booleanCollection));
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean retainAll(BooleanCollection booleanCollection) {
        return getCollection().retainAll(BooleanCollectionCollection.wrap(booleanCollection));
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public int size() {
        return getCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean[] toArray() {
        Object[] array = getCollection().toArray();
        boolean[] zArr = new boolean[array.length];
        for (int i = 0; i < array.length; i++) {
            zArr[i] = ((Boolean) array[i]).booleanValue();
        }
        return zArr;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean[] toArray(boolean[] zArr) {
        Object[] array = getCollection().toArray();
        if (zArr.length < array.length) {
            zArr = new boolean[array.length];
        }
        for (int i = 0; i < array.length; i++) {
            zArr[i] = ((Boolean) array[i]).booleanValue();
        }
        return zArr;
    }
}
