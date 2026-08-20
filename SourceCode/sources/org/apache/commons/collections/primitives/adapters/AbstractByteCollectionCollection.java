package org.apache.commons.collections.primitives.adapters;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.primitives.ByteCollection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractByteCollectionCollection implements Collection {
    protected abstract ByteCollection getByteCollection();

    @Override // java.util.Collection
    public boolean add(Object obj) {
        return getByteCollection().add(((Number) obj).byteValue());
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return getByteCollection().addAll(CollectionByteCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public void clear() {
        getByteCollection().clear();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return getByteCollection().contains(((Number) obj).byteValue());
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return getByteCollection().containsAll(CollectionByteCollection.wrap(collection));
    }

    public String toString() {
        return getByteCollection().toString();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return getByteCollection().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return ByteIteratorIterator.wrap(getByteCollection().iterator());
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return getByteCollection().removeElement(((Number) obj).byteValue());
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return getByteCollection().removeAll(CollectionByteCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return getByteCollection().retainAll(CollectionByteCollection.wrap(collection));
    }

    @Override // java.util.Collection
    public int size() {
        return getByteCollection().size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        byte[] array = getByteCollection().toArray();
        Object[] objArr = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Byte(array[i]);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        byte[] array = getByteCollection().toArray();
        if (objArr.length < array.length) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), array.length);
        }
        for (int i = 0; i < array.length; i++) {
            objArr[i] = new Byte(array[i]);
        }
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
