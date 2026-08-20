package org.apache.commons.collections.primitives.adapters;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.primitives.DoubleCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractDoubleCollectionCollection implements Collection {
    protected abstract DoubleCollection getDoubleCollection();

    @Override // java.util.Collection
    public boolean add(Object obj) {
        return getDoubleCollection().add(((Number) obj).doubleValue());
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return getDoubleCollection().addAll(CollectionDoubleCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public void clear() {
        getDoubleCollection().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return getDoubleCollection().contains(((Number) obj).doubleValue());
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return getDoubleCollection().containsAll(CollectionDoubleCollection.wrap(collection));
    }

    public String toString() {
        return getDoubleCollection().toString();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return getDoubleCollection().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return DoubleIteratorIterator.wrap(getDoubleCollection().iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return getDoubleCollection().removeElement(((Number) obj).doubleValue());
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return getDoubleCollection().removeAll(CollectionDoubleCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return getDoubleCollection().retainAll(CollectionDoubleCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public int size() {
        return getDoubleCollection().size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        double[] array = getDoubleCollection().toArray();
        Object[] objArr = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Double(array[i]);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        double[] array = getDoubleCollection().toArray();
        if (objArr.length < array.length) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), array.length);
        }
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Double(array[i]);
        }
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
