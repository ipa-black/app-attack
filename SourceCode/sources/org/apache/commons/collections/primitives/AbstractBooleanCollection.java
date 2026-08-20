package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public abstract class AbstractBooleanCollection implements BooleanCollection {
    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public abstract BooleanIterator iterator();

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public abstract int size();

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean add(boolean z) {
        throw new UnsupportedOperationException("add(boolean) is not supported.");
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean addAll(BooleanCollection booleanCollection) {
        BooleanIterator it = booleanCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public void clear() {
        BooleanIterator it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean contains(boolean z) {
        BooleanIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == z) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean containsAll(BooleanCollection booleanCollection) {
        BooleanIterator it = booleanCollection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean removeElement(boolean z) {
        BooleanIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == z) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean removeAll(BooleanCollection booleanCollection) {
        BooleanIterator it = booleanCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= removeElement(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean retainAll(BooleanCollection booleanCollection) {
        BooleanIterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!booleanCollection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean[] toArray() {
        boolean[] zArr = new boolean[size()];
        BooleanIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            zArr[i] = it.next();
            i++;
        }
        return zArr;
    }

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    public boolean[] toArray(boolean[] zArr) {
        if (zArr.length < size()) {
            return toArray();
        }
        BooleanIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            zArr[i] = it.next();
            i++;
        }
        return zArr;
    }
}
