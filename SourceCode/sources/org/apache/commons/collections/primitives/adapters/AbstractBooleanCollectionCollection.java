package org.apache.commons.collections.primitives.adapters;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.primitives.BooleanCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractBooleanCollectionCollection implements Collection {
    protected abstract BooleanCollection getBooleanCollection();

    @Override // java.util.Collection
    public boolean add(Object obj) {
        return getBooleanCollection().add(((Boolean) obj).booleanValue());
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return getBooleanCollection().addAll(CollectionBooleanCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public void clear() {
        getBooleanCollection().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return getBooleanCollection().contains(((Boolean) obj).booleanValue());
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return getBooleanCollection().containsAll(CollectionBooleanCollection.wrap(collection));
    }

    public String toString() {
        return getBooleanCollection().toString();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return getBooleanCollection().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return BooleanIteratorIterator.wrap(getBooleanCollection().iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return getBooleanCollection().removeElement(((Boolean) obj).booleanValue());
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return getBooleanCollection().removeAll(CollectionBooleanCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return getBooleanCollection().retainAll(CollectionBooleanCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public int size() {
        return getBooleanCollection().size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        boolean[] array = getBooleanCollection().toArray();
        Object[] objArr = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Boolean(array[i]);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        boolean[] array = getBooleanCollection().toArray();
        if (objArr.length < array.length) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), array.length);
        }
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Boolean(array[i]);
        }
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
