package org.apache.commons.collections.primitives;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class RandomAccessByteList extends AbstractByteCollection implements ByteList {
    private int _modCount = 0;

    public abstract byte get(int i);

    @Override // org.apache.commons.collections.primitives.AbstractByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public abstract int size();

    public byte removeElementAt(int i) {
        throw new UnsupportedOperationException();
    }

    public byte set(int i, byte b2) {
        throw new UnsupportedOperationException();
    }

    public void add(int i, byte b2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.commons.collections.primitives.AbstractByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public boolean add(byte b2) {
        add(size(), b2);
        return true;
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public boolean addAll(int i, ByteCollection byteCollection) {
        ByteIterator it = byteCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            add(i, it.next());
            z = true;
            i++;
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public int indexOf(byte b2) {
        ByteIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == b2) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public int lastIndexOf(byte b2) {
        ByteListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous() == b2) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.AbstractByteCollection, org.apache.commons.collections.primitives.ByteCollection
    public ByteIterator iterator() {
        return listIterator();
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteListIterator listIterator(int i) {
        return new RandomAccessByteListIterator(this, i);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteList subList(int i, int i2) {
        return new RandomAccessByteSubList(this, i, i2);
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ByteList) {
            ByteList byteList = (ByteList) obj;
            if (size() != byteList.size()) {
                return false;
            }
            ByteIterator it = byteList.iterator();
            ByteIterator it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next() != it.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public int hashCode() {
        ByteIterator it = iterator();
        int i = 1;
        while (it.hasNext()) {
            i = (i * 31) + it.next();
        }
        return i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        ByteIterator it = iterator();
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
        private RandomAccessByteList _source;

        ComodChecker(RandomAccessByteList randomAccessByteList) {
            this._source = randomAccessByteList;
            resyncModCount();
        }

        protected RandomAccessByteList getList() {
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
    public static class RandomAccessByteListIterator extends ComodChecker implements ByteListIterator {
        private int _lastReturnedIndex;
        private int _nextIndex;

        RandomAccessByteListIterator(RandomAccessByteList randomAccessByteList, int i) {
            super(randomAccessByteList);
            this._nextIndex = 0;
            this._lastReturnedIndex = -1;
            if (i < 0 || i > getList().size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index ").append(i).append(" not in [0,").append(getList().size()).append(")").toString());
            }
            this._nextIndex = i;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.ByteListIterator, org.apache.commons.collections.primitives.ByteIterator
        public boolean hasNext() {
            assertNotComodified();
            return this._nextIndex < getList().size();
        }

        @Override // org.apache.commons.collections.primitives.ByteListIterator
        public boolean hasPrevious() {
            assertNotComodified();
            return this._nextIndex > 0;
        }

        @Override // org.apache.commons.collections.primitives.ByteListIterator
        public int nextIndex() {
            assertNotComodified();
            return this._nextIndex;
        }

        @Override // org.apache.commons.collections.primitives.ByteListIterator
        public int previousIndex() {
            assertNotComodified();
            return this._nextIndex - 1;
        }

        @Override // org.apache.commons.collections.primitives.ByteListIterator, org.apache.commons.collections.primitives.ByteIterator
        public byte next() {
            assertNotComodified();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            byte b2 = getList().get(this._nextIndex);
            int i = this._nextIndex;
            this._lastReturnedIndex = i;
            this._nextIndex = i + 1;
            return b2;
        }

        @Override // org.apache.commons.collections.primitives.ByteListIterator
        public byte previous() {
            assertNotComodified();
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            byte b2 = getList().get(this._nextIndex - 1);
            int i = this._nextIndex;
            this._lastReturnedIndex = i - 1;
            this._nextIndex = i - 1;
            return b2;
        }

        @Override // org.apache.commons.collections.primitives.ByteListIterator
        public void add(byte b2) {
            assertNotComodified();
            getList().add(this._nextIndex, b2);
            this._nextIndex++;
            this._lastReturnedIndex = -1;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.ByteListIterator, org.apache.commons.collections.primitives.ByteIterator
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

        @Override // org.apache.commons.collections.primitives.ByteListIterator
        public void set(byte b2) {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().set(this._lastReturnedIndex, b2);
            resyncModCount();
        }
    }

    /* loaded from: classes5.dex */
    protected static class RandomAccessByteSubList extends RandomAccessByteList implements ByteList {
        private ComodChecker _comod;
        private int _limit;
        private RandomAccessByteList _list;
        private int _offset;

        RandomAccessByteSubList(RandomAccessByteList randomAccessByteList, int i, int i2) {
            this._offset = 0;
            this._limit = 0;
            this._list = null;
            this._comod = null;
            if (i < 0 || i2 > randomAccessByteList.size()) {
                throw new IndexOutOfBoundsException();
            }
            if (i > i2) {
                throw new IllegalArgumentException();
            }
            this._list = randomAccessByteList;
            this._offset = i;
            this._limit = i2 - i;
            ComodChecker comodChecker = new ComodChecker(randomAccessByteList);
            this._comod = comodChecker;
            comodChecker.resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.ByteList
        public byte get(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            return this._list.get(toUnderlyingIndex(i));
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.ByteList
        public byte removeElementAt(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            byte removeElementAt = this._list.removeElementAt(toUnderlyingIndex(i));
            this._limit--;
            this._comod.resyncModCount();
            incrModCount();
            return removeElementAt;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.ByteList
        public byte set(int i, byte b2) {
            checkRange(i);
            this._comod.assertNotComodified();
            byte b3 = this._list.set(toUnderlyingIndex(i), b2);
            incrModCount();
            this._comod.resyncModCount();
            return b3;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.ByteList
        public void add(int i, byte b2) {
            checkRangeIncludingEndpoint(i);
            this._comod.assertNotComodified();
            this._list.add(toUnderlyingIndex(i), b2);
            this._limit++;
            this._comod.resyncModCount();
            incrModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessByteList, org.apache.commons.collections.primitives.AbstractByteCollection, org.apache.commons.collections.primitives.ByteCollection
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
