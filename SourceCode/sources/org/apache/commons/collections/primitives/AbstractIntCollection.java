package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public abstract class AbstractIntCollection implements IntCollection {
    @Override // org.apache.commons.collections.primitives.IntCollection
    public abstract IntIterator iterator();

    @Override // org.apache.commons.collections.primitives.IntCollection
    public abstract int size();

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean add(int i) {
        throw new UnsupportedOperationException("add(int) is not supported.");
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean addAll(IntCollection intCollection) {
        IntIterator it = intCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public void clear() {
        IntIterator it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean contains(int i) {
        IntIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == i) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean containsAll(IntCollection intCollection) {
        IntIterator it = intCollection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean removeElement(int i) {
        IntIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == i) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean removeAll(IntCollection intCollection) {
        IntIterator it = intCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= removeElement(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public boolean retainAll(IntCollection intCollection) {
        IntIterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!intCollection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public int[] toArray() {
        int[] iArr = new int[size()];
        IntIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next();
            i++;
        }
        return iArr;
    }

    @Override // org.apache.commons.collections.primitives.IntCollection
    public int[] toArray(int[] iArr) {
        if (iArr.length < size()) {
            return toArray();
        }
        IntIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next();
            i++;
        }
        return iArr;
    }
}
