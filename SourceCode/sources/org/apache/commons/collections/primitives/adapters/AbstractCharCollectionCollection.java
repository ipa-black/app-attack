package org.apache.commons.collections.primitives.adapters;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.primitives.CharCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractCharCollectionCollection implements Collection {
    protected abstract CharCollection getCharCollection();

    @Override // java.util.Collection
    public boolean add(Object obj) {
        return getCharCollection().add(((Character) obj).charValue());
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return getCharCollection().addAll(CollectionCharCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public void clear() {
        getCharCollection().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return getCharCollection().contains(((Character) obj).charValue());
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return getCharCollection().containsAll(CollectionCharCollection.wrap(collection));
    }

    public String toString() {
        return getCharCollection().toString();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return getCharCollection().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return CharIteratorIterator.wrap(getCharCollection().iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return getCharCollection().removeElement(((Character) obj).charValue());
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return getCharCollection().removeAll(CollectionCharCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return getCharCollection().retainAll(CollectionCharCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public int size() {
        return getCharCollection().size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        char[] array = getCharCollection().toArray();
        Object[] objArr = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Character(array[i]);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        char[] array = getCharCollection().toArray();
        if (objArr.length < array.length) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), array.length);
        }
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Character(array[i]);
        }
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
