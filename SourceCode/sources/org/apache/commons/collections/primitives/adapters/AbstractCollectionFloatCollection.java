package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import org.apache.commons.collections.primitives.FloatCollection;
import org.apache.commons.collections.primitives.FloatIterator;
/* loaded from: classes5.dex */
abstract class AbstractCollectionFloatCollection implements FloatCollection {
    protected abstract Collection getCollection();

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean add(float f2) {
        return getCollection().add(new Float(f2));
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean addAll(FloatCollection floatCollection) {
        return getCollection().addAll(FloatCollectionCollection.wrap(floatCollection));
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public void clear() {
        getCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean contains(float f2) {
        return getCollection().contains(new Float(f2));
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean containsAll(FloatCollection floatCollection) {
        return getCollection().containsAll(FloatCollectionCollection.wrap(floatCollection));
    }

    public String toString() {
        return getCollection().toString();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean isEmpty() {
        return getCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public FloatIterator iterator() {
        return IteratorFloatIterator.wrap(getCollection().iterator());
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean removeElement(float f2) {
        return getCollection().remove(new Float(f2));
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean removeAll(FloatCollection floatCollection) {
        return getCollection().removeAll(FloatCollectionCollection.wrap(floatCollection));
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean retainAll(FloatCollection floatCollection) {
        return getCollection().retainAll(FloatCollectionCollection.wrap(floatCollection));
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public int size() {
        return getCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public float[] toArray() {
        Object[] array = getCollection().toArray();
        float[] fArr = new float[array.length];
        for (int i = 0; i < array.length; i++) {
            fArr[i] = ((Number) array[i]).floatValue();
        }
        return fArr;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public float[] toArray(float[] fArr) {
        Object[] array = getCollection().toArray();
        if (fArr.length < array.length) {
            fArr = new float[array.length];
        }
        for (int i = 0; i < array.length; i++) {
            fArr[i] = ((Number) array[i]).floatValue();
        }
        return fArr;
    }
}
