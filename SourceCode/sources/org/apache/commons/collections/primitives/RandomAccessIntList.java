package org.apache.commons.collections.primitives;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class RandomAccessIntList extends AbstractIntCollection implements IntList {
    private int _modCount = 0;

    public abstract int get(int i);

    @Override // org.apache.commons.collections.primitives.AbstractIntCollection, org.apache.commons.collections.primitives.IntCollection
    public abstract int size();

    public int removeElementAt(int i) {
        throw new UnsupportedOperationException();
    }

    public int set(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    public void add(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.commons.collections.primitives.AbstractIntCollection, org.apache.commons.collections.primitives.IntCollection
    public boolean add(int i) {
        add(size(), i);
        return true;
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public boolean addAll(int i, IntCollection intCollection) {
        IntIterator it = intCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            add(i, it.next());
            z = true;
            i++;
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int indexOf(int i) {
        IntIterator it = iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int lastIndexOf(int i) {
        IntListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous() == i) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.AbstractIntCollection, org.apache.commons.collections.primitives.IntCollection
    public IntIterator iterator() {
        return listIterator();
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntListIterator listIterator(int i) {
        return new RandomAccessIntListIterator(this, i);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntList subList(int i, int i2) {
        return new RandomAccessIntSubList(this, i, i2);
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntList) {
            IntList intList = (IntList) obj;
            if (size() != intList.size()) {
                return false;
            }
            IntIterator it = intList.iterator();
            IntIterator it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next() != it.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int hashCode() {
        IntIterator it = iterator();
        int i = 1;
        while (it.hasNext()) {
            i = (i * 31) + it.next();
        }
        return i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        IntIterator it = iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
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
        private RandomAccessIntList _source;

        ComodChecker(RandomAccessIntList randomAccessIntList) {
            this._source = randomAccessIntList;
            resyncModCount();
        }

        protected RandomAccessIntList getList() {
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
    public static class RandomAccessIntListIterator extends ComodChecker implements IntListIterator {
        private int _lastReturnedIndex;
        private int _nextIndex;

        RandomAccessIntListIterator(RandomAccessIntList randomAccessIntList, int i) {
            super(randomAccessIntList);
            this._nextIndex = 0;
            this._lastReturnedIndex = -1;
            if (i < 0 || i > getList().size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index ").append(i).append(" not in [0,").append(getList().size()).append(")").toString());
            }
            this._nextIndex = i;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.IntListIterator, org.apache.commons.collections.primitives.IntIterator
        public boolean hasNext() {
            assertNotComodified();
            return this._nextIndex < getList().size();
        }

        @Override // org.apache.commons.collections.primitives.IntListIterator
        public boolean hasPrevious() {
            assertNotComodified();
            return this._nextIndex > 0;
        }

        @Override // org.apache.commons.collections.primitives.IntListIterator
        public int nextIndex() {
            assertNotComodified();
            return this._nextIndex;
        }

        @Override // org.apache.commons.collections.primitives.IntListIterator
        public int previousIndex() {
            assertNotComodified();
            return this._nextIndex - 1;
        }

        @Override // org.apache.commons.collections.primitives.IntListIterator, org.apache.commons.collections.primitives.IntIterator
        public int next() {
            assertNotComodified();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = getList().get(this._nextIndex);
            int i2 = this._nextIndex;
            this._lastReturnedIndex = i2;
            this._nextIndex = i2 + 1;
            return i;
        }

        @Override // org.apache.commons.collections.primitives.IntListIterator
        public int previous() {
            assertNotComodified();
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            int i = getList().get(this._nextIndex - 1);
            int i2 = this._nextIndex;
            this._lastReturnedIndex = i2 - 1;
            this._nextIndex = i2 - 1;
            return i;
        }

        @Override // org.apache.commons.collections.primitives.IntListIterator
        public void add(int i) {
            assertNotComodified();
            getList().add(this._nextIndex, i);
            this._nextIndex++;
            this._lastReturnedIndex = -1;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.IntListIterator, org.apache.commons.collections.primitives.IntIterator
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

        @Override // org.apache.commons.collections.primitives.IntListIterator
        public void set(int i) {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().set(this._lastReturnedIndex, i);
            resyncModCount();
        }
    }

    /* loaded from: classes5.dex */
    protected static class RandomAccessIntSubList extends RandomAccessIntList implements IntList {
        private ComodChecker _comod;
        private int _limit;
        private RandomAccessIntList _list;
        private int _offset;

        RandomAccessIntSubList(RandomAccessIntList randomAccessIntList, int i, int i2) {
            this._offset = 0;
            this._limit = 0;
            this._list = null;
            this._comod = null;
            if (i < 0 || i2 > randomAccessIntList.size()) {
                throw new IndexOutOfBoundsException();
            }
            if (i > i2) {
                throw new IllegalArgumentException();
            }
            this._list = randomAccessIntList;
            this._offset = i;
            this._limit = i2 - i;
            ComodChecker comodChecker = new ComodChecker(randomAccessIntList);
            this._comod = comodChecker;
            comodChecker.resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
        public int get(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            return this._list.get(toUnderlyingIndex(i));
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
        public int removeElementAt(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            int removeElementAt = this._list.removeElementAt(toUnderlyingIndex(i));
            this._limit--;
            this._comod.resyncModCount();
            incrModCount();
            return removeElementAt;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
        public int set(int i, int i2) {
            checkRange(i);
            this._comod.assertNotComodified();
            int i3 = this._list.set(toUnderlyingIndex(i), i2);
            incrModCount();
            this._comod.resyncModCount();
            return i3;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.IntList
        public void add(int i, int i2) {
            checkRangeIncludingEndpoint(i);
            this._comod.assertNotComodified();
            this._list.add(toUnderlyingIndex(i), i2);
            this._limit++;
            this._comod.resyncModCount();
            incrModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessIntList, org.apache.commons.collections.primitives.AbstractIntCollection, org.apache.commons.collections.primitives.IntCollection
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
