package org.apache.commons.collections.primitives.adapters;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.primitives.FloatCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractFloatCollectionCollection implements Collection {
    protected abstract FloatCollection getFloatCollection();

    @Override // java.util.Collection
    public boolean add(Object obj) {
        return getFloatCollection().add(((Number) obj).floatValue());
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return getFloatCollection().addAll(CollectionFloatCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public void clear() {
        getFloatCollection().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return getFloatCollection().contains(((Number) obj).floatValue());
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return getFloatCollection().containsAll(CollectionFloatCollection.wrap(collection));
    }

    public String toString() {
        return getFloatCollection().toString();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return getFloatCollection().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return FloatIteratorIterator.wrap(getFloatCollection().iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return getFloatCollection().removeElement(((Number) obj).floatValue());
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return getFloatCollection().removeAll(CollectionFloatCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return getFloatCollection().retainAll(CollectionFloatCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public int size() {
        return getFloatCollection().size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        float[] array = getFloatCollection().toArray();
        Object[] objArr = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Float(array[i]);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        float[] array = getFloatCollection().toArray();
        if (objArr.length < array.length) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), array.length);
        }
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Float(array[i]);
        }
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
