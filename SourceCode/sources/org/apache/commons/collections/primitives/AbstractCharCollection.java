package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public abstract class AbstractCharCollection implements CharCollection {
    @Override // org.apache.commons.collections.primitives.CharCollection
    public abstract CharIterator iterator();

    @Override // org.apache.commons.collections.primitives.CharCollection
    public abstract int size();

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean add(char c2) {
        throw new UnsupportedOperationException("add(char) is not supported.");
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean addAll(CharCollection charCollection) {
        CharIterator it = charCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public void clear() {
        CharIterator it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean contains(char c2) {
        CharIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == c2) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean containsAll(CharCollection charCollection) {
        CharIterator it = charCollection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean removeElement(char c2) {
        CharIterator it = iterator();
        while (it.hasNext()) {
            if (it.next() == c2) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean removeAll(CharCollection charCollection) {
        CharIterator it = charCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= removeElement(it.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public boolean retainAll(CharCollection charCollection) {
        CharIterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!charCollection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public char[] toArray() {
        char[] cArr = new char[size()];
        CharIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            cArr[i] = it.next();
            i++;
        }
        return cArr;
    }

    @Override // org.apache.commons.collections.primitives.CharCollection
    public char[] toArray(char[] cArr) {
        if (cArr.length < size()) {
            return toArray();
        }
        CharIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            cArr[i] = it.next();
            i++;
        }
        return cArr;
    }
}
