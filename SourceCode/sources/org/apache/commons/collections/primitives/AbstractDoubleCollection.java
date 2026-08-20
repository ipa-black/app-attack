package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public abstract class AbstractDoubleCollection implements DoubleCollection {
    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public abstract DoubleIterator iterator();

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public abstract int size();

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean add(double d2) {
        throw new UnsupportedOperationException("add(double) is not supported.");
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean addAll(DoubleCollection doubleCollection) {
        DoubleIterator it = doubleCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public void clear() {
        DoubleIterator it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean contains(double d2) {
        DoubleIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == d2) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean containsAll(DoubleCollection doubleCollection) {
        DoubleIterator it = doubleCollection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean removeElement(double d2) {
        DoubleIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == d2) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean removeAll(DoubleCollection doubleCollection) {
        DoubleIterator it = doubleCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= removeElement(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public boolean retainAll(DoubleCollection doubleCollection) {
        DoubleIterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!doubleCollection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public double[] toArray() {
        double[] dArr = new double[size()];
        DoubleIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            dArr[i] = it.next();
            i++;
        }
        return dArr;
    }

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    public double[] toArray(double[] dArr) {
        if (dArr.length < size()) {
            return toArray();
        }
        DoubleIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            dArr[i] = it.next();
            i++;
        }
        return dArr;
    }
}
