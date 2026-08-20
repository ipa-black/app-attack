package org.apache.commons.collections.primitives.adapters;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.primitives.LongCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractLongCollectionCollection implements Collection {
    protected abstract LongCollection getLongCollection();

    @Override // java.util.Collection
    public boolean add(Object obj) {
        return getLongCollection().add(((Number) obj).longValue());
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return getLongCollection().addAll(CollectionLongCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public void clear() {
        getLongCollection().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return getLongCollection().contains(((Number) obj).longValue());
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return getLongCollection().containsAll(CollectionLongCollection.wrap(collection));
    }

    public String toString() {
        return getLongCollection().toString();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return getLongCollection().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return LongIteratorIterator.wrap(getLongCollection().iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return getLongCollection().removeElement(((Number) obj).longValue());
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return getLongCollection().removeAll(CollectionLongCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return getLongCollection().retainAll(CollectionLongCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public int size() {
        return getLongCollection().size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        long[] array = getLongCollection().toArray();
        Object[] objArr = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Long(array[i]);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        long[] array = getLongCollection().toArray();
        if (objArr.length < array.length) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), array.length);
        }
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Long(array[i]);
        }
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
