package org.apache.commons.collections.primitives.adapters;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.primitives.IntCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractIntCollectionCollection implements Collection {
    protected abstract IntCollection getIntCollection();

    @Override // java.util.Collection
    public boolean add(Object obj) {
        return getIntCollection().add(((Number) obj).intValue());
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return getIntCollection().addAll(CollectionIntCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public void clear() {
        getIntCollection().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return getIntCollection().contains(((Number) obj).intValue());
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return getIntCollection().containsAll(CollectionIntCollection.wrap(collection));
    }

    public String toString() {
        return getIntCollection().toString();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return getIntCollection().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return IntIteratorIterator.wrap(getIntCollection().iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return getIntCollection().removeElement(((Number) obj).intValue());
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return getIntCollection().removeAll(CollectionIntCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return getIntCollection().retainAll(CollectionIntCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public int size() {
        return getIntCollection().size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        int[] array = getIntCollection().toArray();
        Object[] objArr = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Integer(array[i]);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        int[] array = getIntCollection().toArray();
        if (objArr.length < array.length) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), array.length);
        }
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Integer(array[i]);
        }
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
