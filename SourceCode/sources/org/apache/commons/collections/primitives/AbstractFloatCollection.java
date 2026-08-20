package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public abstract class AbstractFloatCollection implements FloatCollection {
    @Override // org.apache.commons.collections.primitives.FloatCollection
    public abstract FloatIterator iterator();

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public abstract int size();

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean add(float f2) {
        throw new UnsupportedOperationException("add(float) is not supported.");
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean addAll(FloatCollection floatCollection) {
        FloatIterator it = floatCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public void clear() {
        FloatIterator it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean contains(float f2) {
        FloatIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == f2) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean containsAll(FloatCollection floatCollection) {
        FloatIterator it = floatCollection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean removeElement(float f2) {
        FloatIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == f2) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean removeAll(FloatCollection floatCollection) {
        FloatIterator it = floatCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= removeElement(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public boolean retainAll(FloatCollection floatCollection) {
        FloatIterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!floatCollection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public float[] toArray() {
        float[] fArr = new float[size()];
        FloatIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            fArr[i] = it.next();
            i++;
        }
        return fArr;
    }

    @Override // org.apache.commons.collections.primitives.FloatCollection
    public float[] toArray(float[] fArr) {
        if (fArr.length < size()) {
            return toArray();
        }
        FloatIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            fArr[i] = it.next();
            i++;
        }
        return fArr;
    }
}
