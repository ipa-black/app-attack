package org.apache.commons.collections.primitives.adapters;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.primitives.ShortCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractShortCollectionCollection implements Collection {
    protected abstract ShortCollection getShortCollection();

    @Override // java.util.Collection
    public boolean add(Object obj) {
        return getShortCollection().add(((Number) obj).shortValue());
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return getShortCollection().addAll(CollectionShortCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public void clear() {
        getShortCollection().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return getShortCollection().contains(((Number) obj).shortValue());
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return getShortCollection().containsAll(CollectionShortCollection.wrap(collection));
    }

    public String toString() {
        return getShortCollection().toString();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return getShortCollection().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return ShortIteratorIterator.wrap(getShortCollection().iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return getShortCollection().removeElement(((Number) obj).shortValue());
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return getShortCollection().removeAll(CollectionShortCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return getShortCollection().retainAll(CollectionShortCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public int size() {
        return getShortCollection().size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        short[] array = getShortCollection().toArray();
        Object[] objArr = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Short(array[i]);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        short[] array = getShortCollection().toArray();
        if (objArr.length < array.length) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), array.length);
        }
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Short(array[i]);
        }
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
