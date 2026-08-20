package org.apache.commons.collections.primitives;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class RandomAccessLongList extends AbstractLongCollection implements LongList {
    private int _modCount = 0;

    public abstract long get(int i);

    @Override // org.apache.commons.collections.primitives.AbstractLongCollection, org.apache.commons.collections.primitives.LongCollection
    public abstract int size();

    public long removeElementAt(int i) {
        throw new UnsupportedOperationException();
    }

    public long set(int i, long j) {
        throw new UnsupportedOperationException();
    }

    public void add(int i, long j) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.commons.collections.primitives.AbstractLongCollection, org.apache.commons.collections.primitives.LongCollection
    public boolean add(long j) {
        add(size(), j);
        return true;
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public boolean addAll(int i, LongCollection longCollection) {
        LongIterator it = longCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            add(i, it.next());
            z = true;
            i++;
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public int indexOf(long j) {
        LongIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == j) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public int lastIndexOf(long j) {
        LongListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous() == j) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.AbstractLongCollection, org.apache.commons.collections.primitives.LongCollection
    public LongIterator iterator() {
        return listIterator();
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongListIterator listIterator(int i) {
        return new RandomAccessLongListIterator(this, i);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongList subList(int i, int i2) {
        return new RandomAccessLongSubList(this, i, i2);
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LongList) {
            LongList longList = (LongList) obj;
            if (size() != longList.size()) {
                return false;
            }
            LongIterator it = longList.iterator();
            LongIterator it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next() != it.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public int hashCode() {
        LongIterator it = iterator();
        int i = 1;
        while (it.hasNext()) {
            long next = it.next();
            i = (i * 31) + ((int) (next ^ (next >>> 32)));
        }
        return i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        LongIterator it = iterator();
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
        private RandomAccessLongList _source;

        ComodChecker(RandomAccessLongList randomAccessLongList) {
            this._source = randomAccessLongList;
            resyncModCount();
        }

        protected RandomAccessLongList getList() {
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
    public static class RandomAccessLongListIterator extends ComodChecker implements LongListIterator {
        private int _lastReturnedIndex;
        private int _nextIndex;

        RandomAccessLongListIterator(RandomAccessLongList randomAccessLongList, int i) {
            super(randomAccessLongList);
            this._nextIndex = 0;
            this._lastReturnedIndex = -1;
            if (i < 0 || i > getList().size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index ").append(i).append(" not in [0,").append(getList().size()).append(")").toString());
            }
            this._nextIndex = i;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.LongListIterator, org.apache.commons.collections.primitives.LongIterator
        public boolean hasNext() {
            assertNotComodified();
            return this._nextIndex < getList().size();
        }

        @Override // org.apache.commons.collections.primitives.LongListIterator
        public boolean hasPrevious() {
            assertNotComodified();
            return this._nextIndex > 0;
        }

        @Override // org.apache.commons.collections.primitives.LongListIterator
        public int nextIndex() {
            assertNotComodified();
            return this._nextIndex;
        }

        @Override // org.apache.commons.collections.primitives.LongListIterator
        public int previousIndex() {
            assertNotComodified();
            return this._nextIndex - 1;
        }

        @Override // org.apache.commons.collections.primitives.LongListIterator, org.apache.commons.collections.primitives.LongIterator
        public long next() {
            assertNotComodified();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            long j = getList().get(this._nextIndex);
            int i = this._nextIndex;
            this._lastReturnedIndex = i;
            this._nextIndex = i + 1;
            return j;
        }

        @Override // org.apache.commons.collections.primitives.LongListIterator
        public long previous() {
            assertNotComodified();
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            long j = getList().get(this._nextIndex - 1);
            int i = this._nextIndex;
            this._lastReturnedIndex = i - 1;
            this._nextIndex = i - 1;
            return j;
        }

        @Override // org.apache.commons.collections.primitives.LongListIterator
        public void add(long j) {
            assertNotComodified();
            getList().add(this._nextIndex, j);
            this._nextIndex++;
            this._lastReturnedIndex = -1;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.LongListIterator, org.apache.commons.collections.primitives.LongIterator
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

        @Override // org.apache.commons.collections.primitives.LongListIterator
        public void set(long j) {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().set(this._lastReturnedIndex, j);
            resyncModCount();
        }
    }

    /* loaded from: classes5.dex */
    protected static class RandomAccessLongSubList extends RandomAccessLongList implements LongList {
        private ComodChecker _comod;
        private int _limit;
        private RandomAccessLongList _list;
        private int _offset;

        RandomAccessLongSubList(RandomAccessLongList randomAccessLongList, int i, int i2) {
            this._offset = 0;
            this._limit = 0;
            this._list = null;
            this._comod = null;
            if (i < 0 || i2 > randomAccessLongList.size()) {
                throw new IndexOutOfBoundsException();
            }
            if (i > i2) {
                throw new IllegalArgumentException();
            }
            this._list = randomAccessLongList;
            this._offset = i;
            this._limit = i2 - i;
            ComodChecker comodChecker = new ComodChecker(randomAccessLongList);
            this._comod = comodChecker;
            comodChecker.resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
        public long get(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            return this._list.get(toUnderlyingIndex(i));
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
        public long removeElementAt(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            long removeElementAt = this._list.removeElementAt(toUnderlyingIndex(i));
            this._limit--;
            this._comod.resyncModCount();
            incrModCount();
            return removeElementAt;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
        public long set(int i, long j) {
            checkRange(i);
            this._comod.assertNotComodified();
            long j2 = this._list.set(toUnderlyingIndex(i), j);
            incrModCount();
            this._comod.resyncModCount();
            return j2;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.LongList
        public void add(int i, long j) {
            checkRangeIncludingEndpoint(i);
            this._comod.assertNotComodified();
            this._list.add(toUnderlyingIndex(i), j);
            this._limit++;
            this._comod.resyncModCount();
            incrModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessLongList, org.apache.commons.collections.primitives.AbstractLongCollection, org.apache.commons.collections.primitives.LongCollection
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
