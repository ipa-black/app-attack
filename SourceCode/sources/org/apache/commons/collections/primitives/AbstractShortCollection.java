package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public abstract class AbstractShortCollection implements ShortCollection {
    @Override // org.apache.commons.collections.primitives.ShortCollection
    public abstract ShortIterator iterator();

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public abstract int size();

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean add(short s) {
        throw new UnsupportedOperationException("add(short) is not supported.");
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean addAll(ShortCollection shortCollection) {
        ShortIterator it = shortCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public void clear() {
        ShortIterator it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean contains(short s) {
        ShortIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == s) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean containsAll(ShortCollection shortCollection) {
        ShortIterator it = shortCollection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean removeElement(short s) {
        ShortIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == s) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean removeAll(ShortCollection shortCollection) {
        ShortIterator it = shortCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= removeElement(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public boolean retainAll(ShortCollection shortCollection) {
        ShortIterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!shortCollection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public short[] toArray() {
        short[] sArr = new short[size()];
        ShortIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            sArr[i] = it.next();
            i++;
        }
        return sArr;
    }

    @Override // org.apache.commons.collections.primitives.ShortCollection
    public short[] toArray(short[] sArr) {
        if (sArr.length < size()) {
            return toArray();
        }
        ShortIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            sArr[i] = it.next();
            i++;
        }
        return sArr;
    }
}
