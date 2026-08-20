package org.apache.commons.collections.primitives;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class RandomAccessCharList extends AbstractCharCollection implements CharList {
    private int _modCount = 0;

    public abstract char get(int i);

    @Override // org.apache.commons.collections.primitives.AbstractCharCollection, org.apache.commons.collections.primitives.CharCollection
    public abstract int size();

    public char removeElementAt(int i) {
        throw new UnsupportedOperationException();
    }

    public char set(int i, char c2) {
        throw new UnsupportedOperationException();
    }

    public void add(int i, char c2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.commons.collections.primitives.AbstractCharCollection, org.apache.commons.collections.primitives.CharCollection
    public boolean add(char c2) {
        add(size(), c2);
        return true;
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public boolean addAll(int i, CharCollection charCollection) {
        CharIterator it = charCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            add(i, it.next());
            z = true;
            i++;
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public int indexOf(char c2) {
        CharIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == c2) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public int lastIndexOf(char c2) {
        CharListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous() == c2) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.AbstractCharCollection, org.apache.commons.collections.primitives.CharCollection
    public CharIterator iterator() {
        return listIterator();
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharListIterator listIterator(int i) {
        return new RandomAccessCharListIterator(this, i);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharList subList(int i, int i2) {
        return new RandomAccessCharSubList(this, i, i2);
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CharList) {
            CharList charList = (CharList) obj;
            if (size() != charList.size()) {
                return false;
            }
            CharIterator it = charList.iterator();
            CharIterator it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next() != it.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public int hashCode() {
        CharIterator it = iterator();
        int i = 1;
        while (it.hasNext()) {
            i = (i * 31) + it.next();
        }
        return i;
    }

    public String toString() {
        return new String(toArray());
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
        private RandomAccessCharList _source;

        ComodChecker(RandomAccessCharList randomAccessCharList) {
            this._source = randomAccessCharList;
            resyncModCount();
        }

        protected RandomAccessCharList getList() {
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
    public static class RandomAccessCharListIterator extends ComodChecker implements CharListIterator {
        private int _lastReturnedIndex;
        private int _nextIndex;

        RandomAccessCharListIterator(RandomAccessCharList randomAccessCharList, int i) {
            super(randomAccessCharList);
            this._nextIndex = 0;
            this._lastReturnedIndex = -1;
            if (i < 0 || i > getList().size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index ").append(i).append(" not in [0,").append(getList().size()).append(")").toString());
            }
            this._nextIndex = i;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.CharListIterator, org.apache.commons.collections.primitives.CharIterator
        public boolean hasNext() {
            assertNotComodified();
            return this._nextIndex < getList().size();
        }

        @Override // org.apache.commons.collections.primitives.CharListIterator
        public boolean hasPrevious() {
            assertNotComodified();
            return this._nextIndex > 0;
        }

        @Override // org.apache.commons.collections.primitives.CharListIterator
        public int nextIndex() {
            assertNotComodified();
            return this._nextIndex;
        }

        @Override // org.apache.commons.collections.primitives.CharListIterator
        public int previousIndex() {
            assertNotComodified();
            return this._nextIndex - 1;
        }

        @Override // org.apache.commons.collections.primitives.CharListIterator, org.apache.commons.collections.primitives.CharIterator
        public char next() {
            assertNotComodified();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            char c2 = getList().get(this._nextIndex);
            int i = this._nextIndex;
            this._lastReturnedIndex = i;
            this._nextIndex = i + 1;
            return c2;
        }

        @Override // org.apache.commons.collections.primitives.CharListIterator
        public char previous() {
            assertNotComodified();
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            char c2 = getList().get(this._nextIndex - 1);
            int i = this._nextIndex;
            this._lastReturnedIndex = i - 1;
            this._nextIndex = i - 1;
            return c2;
        }

        @Override // org.apache.commons.collections.primitives.CharListIterator
        public void add(char c2) {
            assertNotComodified();
            getList().add(this._nextIndex, c2);
            this._nextIndex++;
            this._lastReturnedIndex = -1;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.CharListIterator, org.apache.commons.collections.primitives.CharIterator
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

        @Override // org.apache.commons.collections.primitives.CharListIterator
        public void set(char c2) {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().set(this._lastReturnedIndex, c2);
            resyncModCount();
        }
    }

    /* loaded from: classes5.dex */
    protected static class RandomAccessCharSubList extends RandomAccessCharList implements CharList {
        private ComodChecker _comod;
        private int _limit;
        private RandomAccessCharList _list;
        private int _offset;

        RandomAccessCharSubList(RandomAccessCharList randomAccessCharList, int i, int i2) {
            this._offset = 0;
            this._limit = 0;
            this._list = null;
            this._comod = null;
            if (i < 0 || i2 > randomAccessCharList.size()) {
                throw new IndexOutOfBoundsException();
            }
            if (i > i2) {
                throw new IllegalArgumentException();
            }
            this._list = randomAccessCharList;
            this._offset = i;
            this._limit = i2 - i;
            ComodChecker comodChecker = new ComodChecker(randomAccessCharList);
            this._comod = comodChecker;
            comodChecker.resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.CharList
        public char get(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            return this._list.get(toUnderlyingIndex(i));
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.CharList
        public char removeElementAt(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            char removeElementAt = this._list.removeElementAt(toUnderlyingIndex(i));
            this._limit--;
            this._comod.resyncModCount();
            incrModCount();
            return removeElementAt;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.CharList
        public char set(int i, char c2) {
            checkRange(i);
            this._comod.assertNotComodified();
            char c3 = this._list.set(toUnderlyingIndex(i), c2);
            incrModCount();
            this._comod.resyncModCount();
            return c3;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.CharList
        public void add(int i, char c2) {
            checkRangeIncludingEndpoint(i);
            this._comod.assertNotComodified();
            this._list.add(toUnderlyingIndex(i), c2);
            this._limit++;
            this._comod.resyncModCount();
            incrModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessCharList, org.apache.commons.collections.primitives.AbstractCharCollection, org.apache.commons.collections.primitives.CharCollection
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
