package org.apache.commons.collections.primitives;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class RandomAccessBooleanList extends AbstractBooleanCollection implements BooleanList {
    private int _modCount = 0;

    public abstract boolean get(int i);

    @Override // org.apache.commons.collections.primitives.AbstractBooleanCollection, org.apache.commons.collections.primitives.BooleanCollection
    public abstract int size();

    public boolean removeElementAt(int i) {
        throw new UnsupportedOperationException();
    }

    public boolean set(int i, boolean z) {
        throw new UnsupportedOperationException();
    }

    public void add(int i, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.commons.collections.primitives.AbstractBooleanCollection, org.apache.commons.collections.primitives.BooleanCollection
    public boolean add(boolean z) {
        add(size(), z);
        return true;
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public boolean addAll(int i, BooleanCollection booleanCollection) {
        BooleanIterator it = booleanCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            add(i, it.next());
            z = true;
            i++;
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public int indexOf(boolean z) {
        BooleanIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == z) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public int lastIndexOf(boolean z) {
        BooleanListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous() == z) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.AbstractBooleanCollection, org.apache.commons.collections.primitives.BooleanCollection
    public BooleanIterator iterator() {
        return listIterator();
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public BooleanListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public BooleanListIterator listIterator(int i) {
        return new RandomAccessBooleanListIterator(this, i);
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public BooleanList subList(int i, int i2) {
        return new RandomAccessBooleanSubList(this, i, i2);
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BooleanList) {
            BooleanList booleanList = (BooleanList) obj;
            if (size() != booleanList.size()) {
                return false;
            }
            BooleanIterator it = booleanList.iterator();
            BooleanIterator it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next() != it.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public int hashCode() {
        BooleanIterator it = iterator();
        int i = 1;
        while (it.hasNext()) {
            i = (i * 31) + (it.next() ? 1231 : 1237);
        }
        return i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        BooleanIterator it = iterator();
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
        private RandomAccessBooleanList _source;

        ComodChecker(RandomAccessBooleanList randomAccessBooleanList) {
            this._source = randomAccessBooleanList;
            resyncModCount();
        }

        protected RandomAccessBooleanList getList() {
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
    public static class RandomAccessBooleanListIterator extends ComodChecker implements BooleanListIterator {
        private int _lastReturnedIndex;
        private int _nextIndex;

        RandomAccessBooleanListIterator(RandomAccessBooleanList randomAccessBooleanList, int i) {
            super(randomAccessBooleanList);
            this._nextIndex = 0;
            this._lastReturnedIndex = -1;
            if (i < 0 || i > getList().size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index ").append(i).append(" not in [0,").append(getList().size()).append(")").toString());
            }
            this._nextIndex = i;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.BooleanListIterator, org.apache.commons.collections.primitives.BooleanIterator
        public boolean hasNext() {
            assertNotComodified();
            return this._nextIndex < getList().size();
        }

        @Override // org.apache.commons.collections.primitives.BooleanListIterator
        public boolean hasPrevious() {
            assertNotComodified();
            return this._nextIndex > 0;
        }

        @Override // org.apache.commons.collections.primitives.BooleanListIterator
        public int nextIndex() {
            assertNotComodified();
            return this._nextIndex;
        }

        @Override // org.apache.commons.collections.primitives.BooleanListIterator
        public int previousIndex() {
            assertNotComodified();
            return this._nextIndex - 1;
        }

        @Override // org.apache.commons.collections.primitives.BooleanListIterator, org.apache.commons.collections.primitives.BooleanIterator
        public boolean next() {
            assertNotComodified();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            boolean z = getList().get(this._nextIndex);
            int i = this._nextIndex;
            this._lastReturnedIndex = i;
            this._nextIndex = i + 1;
            return z;
        }

        @Override // org.apache.commons.collections.primitives.BooleanListIterator
        public boolean previous() {
            assertNotComodified();
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            boolean z = getList().get(this._nextIndex - 1);
            int i = this._nextIndex;
            this._lastReturnedIndex = i - 1;
            this._nextIndex = i - 1;
            return z;
        }

        @Override // org.apache.commons.collections.primitives.BooleanListIterator
        public void add(boolean z) {
            assertNotComodified();
            getList().add(this._nextIndex, z);
            this._nextIndex++;
            this._lastReturnedIndex = -1;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.BooleanListIterator, org.apache.commons.collections.primitives.BooleanIterator
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

        @Override // org.apache.commons.collections.primitives.BooleanListIterator
        public void set(boolean z) {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().set(this._lastReturnedIndex, z);
            resyncModCount();
        }
    }

    /* loaded from: classes5.dex */
    protected static class RandomAccessBooleanSubList extends RandomAccessBooleanList implements BooleanList {
        private ComodChecker _comod;
        private int _limit;
        private RandomAccessBooleanList _list;
        private int _offset;

        RandomAccessBooleanSubList(RandomAccessBooleanList randomAccessBooleanList, int i, int i2) {
            this._offset = 0;
            this._limit = 0;
            this._list = null;
            this._comod = null;
            if (i < 0 || i2 > randomAccessBooleanList.size()) {
                throw new IndexOutOfBoundsException();
            }
            if (i > i2) {
                throw new IllegalArgumentException();
            }
            this._list = randomAccessBooleanList;
            this._offset = i;
            this._limit = i2 - i;
            ComodChecker comodChecker = new ComodChecker(randomAccessBooleanList);
            this._comod = comodChecker;
            comodChecker.resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.BooleanList
        public boolean get(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            return this._list.get(toUnderlyingIndex(i));
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.BooleanList
        public boolean removeElementAt(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            boolean removeElementAt = this._list.removeElementAt(toUnderlyingIndex(i));
            this._limit--;
            this._comod.resyncModCount();
            incrModCount();
            return removeElementAt;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.BooleanList
        public boolean set(int i, boolean z) {
            checkRange(i);
            this._comod.assertNotComodified();
            boolean z2 = this._list.set(toUnderlyingIndex(i), z);
            incrModCount();
            this._comod.resyncModCount();
            return z2;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.BooleanList
        public void add(int i, boolean z) {
            checkRangeIncludingEndpoint(i);
            this._comod.assertNotComodified();
            this._list.add(toUnderlyingIndex(i), z);
            this._limit++;
            this._comod.resyncModCount();
            incrModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessBooleanList, org.apache.commons.collections.primitives.AbstractBooleanCollection, org.apache.commons.collections.primitives.BooleanCollection
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
