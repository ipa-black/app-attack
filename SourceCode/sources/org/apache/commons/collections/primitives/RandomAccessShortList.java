package org.apache.commons.collections.primitives;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class RandomAccessShortList extends AbstractShortCollection implements ShortList {
    private int _modCount = 0;

    public abstract short get(int i);

    @Override // org.apache.commons.collections.primitives.AbstractShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public abstract int size();

    public short removeElementAt(int i) {
        throw new UnsupportedOperationException();
    }

    public short set(int i, short s) {
        throw new UnsupportedOperationException();
    }

    public void add(int i, short s) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.commons.collections.primitives.AbstractShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public boolean add(short s) {
        add(size(), s);
        return true;
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public boolean addAll(int i, ShortCollection shortCollection) {
        ShortIterator it = shortCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            add(i, it.next());
            z = true;
            i++;
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public int indexOf(short s) {
        ShortIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == s) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public int lastIndexOf(short s) {
        ShortListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous() == s) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.AbstractShortCollection, org.apache.commons.collections.primitives.ShortCollection
    public ShortIterator iterator() {
        return listIterator();
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortListIterator listIterator(int i) {
        return new RandomAccessShortListIterator(this, i);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortList subList(int i, int i2) {
        return new RandomAccessShortSubList(this, i, i2);
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShortList) {
            ShortList shortList = (ShortList) obj;
            if (size() != shortList.size()) {
                return false;
            }
            ShortIterator it = shortList.iterator();
            ShortIterator it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next() != it.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public int hashCode() {
        ShortIterator it = iterator();
        int i = 1;
        while (it.hasNext()) {
            i = (i * 31) + it.next();
        }
        return i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        ShortIterator it = iterator();
        while (it.hasNext()) {
            stringBuffer.append((int) it.next());
            if (it.hasNext()) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    protected int getModCount() {
        return this._modCount;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void incrModCount() {
        this._modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class ComodChecker {
        private int _expectedModCount = -1;
        private RandomAccessShortList _source;

        ComodChecker(RandomAccessShortList randomAccessShortList) {
            this._source = randomAccessShortList;
            resyncModCount();
        }

        protected RandomAccessShortList getList() {
            return this._source;
        }

        protected void assertNotComodified() throws ConcurrentModificationException {
            if (this._expectedModCount != getList().getModCount()) {
                throw new ConcurrentModificationException();
            }
        }

        protected void resyncModCount() {
            this._expectedModCount = getList().getModCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static class RandomAccessShortListIterator extends ComodChecker implements ShortListIterator {
        private int _lastReturnedIndex;
        private int _nextIndex;

        RandomAccessShortListIterator(RandomAccessShortList randomAccessShortList, int i) {
            super(randomAccessShortList);
            this._nextIndex = 0;
            this._lastReturnedIndex = -1;
            if (i < 0 || i > getList().size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index ").append(i).append(" not in [0,").append(getList().size()).append(")").toString());
            }
            this._nextIndex = i;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator, org.apache.commons.collections.primitives.ShortIterator
        public boolean hasNext() {
            assertNotComodified();
            return this._nextIndex < getList().size();
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator
        public boolean hasPrevious() {
            assertNotComodified();
            return this._nextIndex > 0;
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator
        public int nextIndex() {
            assertNotComodified();
            return this._nextIndex;
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator
        public int previousIndex() {
            assertNotComodified();
            return this._nextIndex - 1;
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator, org.apache.commons.collections.primitives.ShortIterator
        public short next() {
            assertNotComodified();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            short s = getList().get(this._nextIndex);
            int i = this._nextIndex;
            this._lastReturnedIndex = i;
            this._nextIndex = i + 1;
            return s;
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator
        public short previous() {
            assertNotComodified();
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            short s = getList().get(this._nextIndex - 1);
            int i = this._nextIndex;
            this._lastReturnedIndex = i - 1;
            this._nextIndex = i - 1;
            return s;
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator
        public void add(short s) {
            assertNotComodified();
            getList().add(this._nextIndex, s);
            this._nextIndex++;
            this._lastReturnedIndex = -1;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator, org.apache.commons.collections.primitives.ShortIterator
        public void remove() {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().removeElementAt(this._lastReturnedIndex);
            this._lastReturnedIndex = -1;
            this._nextIndex--;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.ShortListIterator
        public void set(short s) {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().set(this._lastReturnedIndex, s);
            resyncModCount();
        }
    }

    /* loaded from: classes5.dex */
    protected static class RandomAccessShortSubList extends RandomAccessShortList implements ShortList {
        private ComodChecker _comod;
        private int _limit;
        private RandomAccessShortList _list;
        private int _offset;

        RandomAccessShortSubList(RandomAccessShortList randomAccessShortList, int i, int i2) {
            this._offset = 0;
            this._limit = 0;
            this._list = null;
            this._comod = null;
            if (i < 0 || i2 > randomAccessShortList.size()) {
                throw new IndexOutOfBoundsException();
            }
            if (i > i2) {
                throw new IllegalArgumentException();
            }
            this._list = randomAccessShortList;
            this._offset = i;
            this._limit = i2 - i;
            ComodChecker comodChecker = new ComodChecker(randomAccessShortList);
            this._comod = comodChecker;
            comodChecker.resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
        public short get(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            return this._list.get(toUnderlyingIndex(i));
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
        public short removeElementAt(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            short removeElementAt = this._list.removeElementAt(toUnderlyingIndex(i));
            this._limit--;
            this._comod.resyncModCount();
            incrModCount();
            return removeElementAt;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
        public short set(int i, short s) {
            checkRange(i);
            this._comod.assertNotComodified();
            short s2 = this._list.set(toUnderlyingIndex(i), s);
            incrModCount();
            this._comod.resyncModCount();
            return s2;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.ShortList
        public void add(int i, short s) {
            checkRangeIncludingEndpoint(i);
            this._comod.assertNotComodified();
            this._list.add(toUnderlyingIndex(i), s);
            this._limit++;
            this._comod.resyncModCount();
            incrModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessShortList, org.apache.commons.collections.primitives.AbstractShortCollection, org.apache.commons.collections.primitives.ShortCollection
        public int size() {
            this._comod.assertNotComodified();
            return this._limit;
        }

        private void checkRange(int i) {
            if (i < 0 || i >= size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("index ").append(i).append(" not in [0,").append(size()).append(")").toString());
            }
        }

        private void checkRangeIncludingEndpoint(int i) {
            if (i < 0 || i > size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("index ").append(i).append(" not in [0,").append(size()).append("]").toString());
            }
        }

        private int toUnderlyingIndex(int i) {
            return i + this._offset;
        }
    }
}
