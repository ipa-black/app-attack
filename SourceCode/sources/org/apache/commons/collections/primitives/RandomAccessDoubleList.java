package org.apache.commons.collections.primitives;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class RandomAccessDoubleList extends AbstractDoubleCollection implements DoubleList {
    private int _modCount = 0;

    public abstract double get(int i);

    @Override // org.apache.commons.collections.primitives.AbstractDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public abstract int size();

    public double removeElementAt(int i) {
        throw new UnsupportedOperationException();
    }

    public double set(int i, double d2) {
        throw new UnsupportedOperationException();
    }

    public void add(int i, double d2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.commons.collections.primitives.AbstractDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public boolean add(double d2) {
        add(size(), d2);
        return true;
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public boolean addAll(int i, DoubleCollection doubleCollection) {
        DoubleIterator it = doubleCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            add(i, it.next());
            z = true;
            i++;
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public int indexOf(double d2) {
        DoubleIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == d2) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public int lastIndexOf(double d2) {
        DoubleListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous() == d2) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.AbstractDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
    public DoubleIterator iterator() {
        return listIterator();
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleListIterator listIterator(int i) {
        return new RandomAccessDoubleListIterator(this, i);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleList subList(int i, int i2) {
        return new RandomAccessDoubleSubList(this, i, i2);
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DoubleList) {
            DoubleList doubleList = (DoubleList) obj;
            if (size() != doubleList.size()) {
                return false;
            }
            DoubleIterator it = doubleList.iterator();
            DoubleIterator it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next() != it.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public int hashCode() {
        DoubleIterator it = iterator();
        int i = 1;
        while (it.hasNext()) {
            long doubleToLongBits = Double.doubleToLongBits(it.next());
            i = (i * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }
        return i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        DoubleIterator it = iterator();
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
        private RandomAccessDoubleList _source;

        ComodChecker(RandomAccessDoubleList randomAccessDoubleList) {
            this._source = randomAccessDoubleList;
            resyncModCount();
        }

        protected RandomAccessDoubleList getList() {
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
    public static class RandomAccessDoubleListIterator extends ComodChecker implements DoubleListIterator {
        private int _lastReturnedIndex;
        private int _nextIndex;

        RandomAccessDoubleListIterator(RandomAccessDoubleList randomAccessDoubleList, int i) {
            super(randomAccessDoubleList);
            this._nextIndex = 0;
            this._lastReturnedIndex = -1;
            if (i < 0 || i > getList().size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index ").append(i).append(" not in [0,").append(getList().size()).append(")").toString());
            }
            this._nextIndex = i;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.DoubleListIterator, org.apache.commons.collections.primitives.DoubleIterator
        public boolean hasNext() {
            assertNotComodified();
            return this._nextIndex < getList().size();
        }

        @Override // org.apache.commons.collections.primitives.DoubleListIterator
        public boolean hasPrevious() {
            assertNotComodified();
            return this._nextIndex > 0;
        }

        @Override // org.apache.commons.collections.primitives.DoubleListIterator
        public int nextIndex() {
            assertNotComodified();
            return this._nextIndex;
        }

        @Override // org.apache.commons.collections.primitives.DoubleListIterator
        public int previousIndex() {
            assertNotComodified();
            return this._nextIndex - 1;
        }

        @Override // org.apache.commons.collections.primitives.DoubleListIterator, org.apache.commons.collections.primitives.DoubleIterator
        public double next() {
            assertNotComodified();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            double d2 = getList().get(this._nextIndex);
            int i = this._nextIndex;
            this._lastReturnedIndex = i;
            this._nextIndex = i + 1;
            return d2;
        }

        @Override // org.apache.commons.collections.primitives.DoubleListIterator
        public double previous() {
            assertNotComodified();
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            double d2 = getList().get(this._nextIndex - 1);
            int i = this._nextIndex;
            this._lastReturnedIndex = i - 1;
            this._nextIndex = i - 1;
            return d2;
        }

        @Override // org.apache.commons.collections.primitives.DoubleListIterator
        public void add(double d2) {
            assertNotComodified();
            getList().add(this._nextIndex, d2);
            this._nextIndex++;
            this._lastReturnedIndex = -1;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.DoubleListIterator, org.apache.commons.collections.primitives.DoubleIterator
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

        @Override // org.apache.commons.collections.primitives.DoubleListIterator
        public void set(double d2) {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().set(this._lastReturnedIndex, d2);
            resyncModCount();
        }
    }

    /* loaded from: classes5.dex */
    protected static class RandomAccessDoubleSubList extends RandomAccessDoubleList implements DoubleList {
        private ComodChecker _comod;
        private int _limit;
        private RandomAccessDoubleList _list;
        private int _offset;

        RandomAccessDoubleSubList(RandomAccessDoubleList randomAccessDoubleList, int i, int i2) {
            this._offset = 0;
            this._limit = 0;
            this._list = null;
            this._comod = null;
            if (i < 0 || i2 > randomAccessDoubleList.size()) {
                throw new IndexOutOfBoundsException();
            }
            if (i > i2) {
                throw new IllegalArgumentException();
            }
            this._list = randomAccessDoubleList;
            this._offset = i;
            this._limit = i2 - i;
            ComodChecker comodChecker = new ComodChecker(randomAccessDoubleList);
            this._comod = comodChecker;
            comodChecker.resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.DoubleList
        public double get(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            return this._list.get(toUnderlyingIndex(i));
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.DoubleList
        public double removeElementAt(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            double removeElementAt = this._list.removeElementAt(toUnderlyingIndex(i));
            this._limit--;
            this._comod.resyncModCount();
            incrModCount();
            return removeElementAt;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.DoubleList
        public double set(int i, double d2) {
            checkRange(i);
            this._comod.assertNotComodified();
            double d3 = this._list.set(toUnderlyingIndex(i), d2);
            incrModCount();
            this._comod.resyncModCount();
            return d3;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.DoubleList
        public void add(int i, double d2) {
            checkRangeIncludingEndpoint(i);
            this._comod.assertNotComodified();
            this._list.add(toUnderlyingIndex(i), d2);
            this._limit++;
            this._comod.resyncModCount();
            incrModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessDoubleList, org.apache.commons.collections.primitives.AbstractDoubleCollection, org.apache.commons.collections.primitives.DoubleCollection
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
