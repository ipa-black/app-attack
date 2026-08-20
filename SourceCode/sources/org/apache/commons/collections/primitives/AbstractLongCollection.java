package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public abstract class AbstractLongCollection implements LongCollection {
    @Override // org.apache.commons.collections.primitives.LongCollection
    public abstract LongIterator iterator();

    @Override // org.apache.commons.collections.primitives.LongCollection
    public abstract int size();

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean add(long j) {
        throw new UnsupportedOperationException("add(long) is not supported.");
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean addAll(LongCollection longCollection) {
        LongIterator it = longCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public void clear() {
        LongIterator it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean contains(long j) {
        LongIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == j) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean containsAll(LongCollection longCollection) {
        LongIterator it = longCollection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean removeElement(long j) {
        LongIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == j) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean removeAll(LongCollection longCollection) {
        LongIterator it = longCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= removeElement(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean retainAll(LongCollection longCollection) {
        LongIterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!longCollection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public long[] toArray() {
        long[] jArr = new long[size()];
        LongIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            jArr[i] = it.next();
            i++;
        }
        return jArr;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public long[] toArray(long[] jArr) {
        if (jArr.length < size()) {
            return toArray();
        }
        LongIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            jArr[i] = it.next();
            i++;
        }
        return jArr;
    }
}
