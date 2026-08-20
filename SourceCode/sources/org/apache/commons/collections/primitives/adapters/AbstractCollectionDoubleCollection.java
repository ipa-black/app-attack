package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import org.apache.commons.collections.primitives.DoubleCollection;
import org.apache.commons.collections.primitives.DoubleIterator;
/* loaded from: classes5.dex */
abstract class AbstractCollectionDoubleCollection implements DoubleCollection {
    protected abstract Collection getCollection();

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean add(double d2) {
        return getCollection().add(new Double(d2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean addAll(DoubleCollection doubleCollection) {
        return getCollection().addAll(DoubleCollectionCollection.wrap(doubleCollection));
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public void clear() {
        getCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean contains(double d2) {
        return getCollection().contains(new Double(d2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean containsAll(DoubleCollection doubleCollection) {
        return getCollection().containsAll(DoubleCollectionCollection.wrap(doubleCollection));
    }

    public String toString() {
        return getCollection().toString();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean isEmpty() {
        return getCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public DoubleIterator iterator() {
        return IteratorDoubleIterator.wrap(getCollection().iterator());
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean removeElement(double d2) {
        return getCollection().remove(new Double(d2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean removeAll(DoubleCollection doubleCollection) {
        return getCollection().removeAll(DoubleCollectionCollection.wrap(doubleCollection));
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean retainAll(DoubleCollection doubleCollection) {
        return getCollection().retainAll(DoubleCollectionCollection.wrap(doubleCollection));
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public int size() {
        return getCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public double[] toArray() {
        Object[] array = getCollection().toArray();
        double[] dArr = new double[array.length];
        for (int i = 0; i < array.length; i++) {
            dArr[i] = ((Number) array[i]).doubleValue();
        }
        return dArr;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public double[] toArray(double[] dArr) {
        Object[] array = getCollection().toArray();
        if (dArr.length < array.length) {
            dArr = new double[array.length];
        }
        for (int i = 0; i < array.length; i++) {
            dArr[i] = ((Number) array[i]).doubleValue();
        }
        return dArr;
    }
}
