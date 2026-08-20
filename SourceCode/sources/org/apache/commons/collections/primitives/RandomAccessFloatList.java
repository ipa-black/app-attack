package org.apache.commons.collections.primitives;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class RandomAccessFloatList extends AbstractFloatCollection implements FloatList {
    private int _modCount = 0;

    public abstract float get(int i);

    @Override // org.apache.commons.collections.primitives.AbstractFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public abstract int size();

    public float removeElementAt(int i) {
        throw new UnsupportedOperationException();
    }

    public float set(int i, float f2) {
        throw new UnsupportedOperationException();
    }

    public void add(int i, float f2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.commons.collections.primitives.AbstractFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public boolean add(float f2) {
        add(size(), f2);
        return true;
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public boolean addAll(int i, FloatCollection floatCollection) {
        FloatIterator it = floatCollection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            add(i, it.next());
            z = true;
            i++;
        }
        return z;
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public int indexOf(float f2) {
        FloatIterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == f2) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public int lastIndexOf(float f2) {
        FloatListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous() == f2) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // org.apache.commons.collections.primitives.AbstractFloatCollection, org.apache.commons.collections.primitives.FloatCollection
    public FloatIterator iterator() {
        return listIterator();
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatListIterator listIterator(int i) {
        return new RandomAccessFloatListIterator(this, i);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatList subList(int i, int i2) {
        return new RandomAccessFloatSubList(this, i, i2);
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FloatList) {
            FloatList floatList = (FloatList) obj;
            if (size() != floatList.size()) {
                return false;
            }
            FloatIterator it = floatList.iterator();
            FloatIterator it2 = iterator();
            while (it2.hasNext()) {
                if (it2.next() != it.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public int hashCode() {
        FloatIterator it = iterator();
        int i = 1;
        while (it.hasNext()) {
            i = (i * 31) + Float.floatToIntBits(it.next());
        }
        return i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        FloatIterator it = iterator();
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
        private RandomAccessFloatList _source;

        ComodChecker(RandomAccessFloatList randomAccessFloatList) {
            this._source = randomAccessFloatList;
            resyncModCount();
        }

        protected RandomAccessFloatList getList() {
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
    public static class RandomAccessFloatListIterator extends ComodChecker implements FloatListIterator {
        private int _lastReturnedIndex;
        private int _nextIndex;

        RandomAccessFloatListIterator(RandomAccessFloatList randomAccessFloatList, int i) {
            super(randomAccessFloatList);
            this._nextIndex = 0;
            this._lastReturnedIndex = -1;
            if (i < 0 || i > getList().size()) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index ").append(i).append(" not in [0,").append(getList().size()).append(")").toString());
            }
            this._nextIndex = i;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.FloatListIterator, org.apache.commons.collections.primitives.FloatIterator
        public boolean hasNext() {
            assertNotComodified();
            return this._nextIndex < getList().size();
        }

        @Override // org.apache.commons.collections.primitives.FloatListIterator
        public boolean hasPrevious() {
            assertNotComodified();
            return this._nextIndex > 0;
        }

        @Override // org.apache.commons.collections.primitives.FloatListIterator
        public int nextIndex() {
            assertNotComodified();
            return this._nextIndex;
        }

        @Override // org.apache.commons.collections.primitives.FloatListIterator
        public int previousIndex() {
            assertNotComodified();
            return this._nextIndex - 1;
        }

        @Override // org.apache.commons.collections.primitives.FloatListIterator, org.apache.commons.collections.primitives.FloatIterator
        public float next() {
            assertNotComodified();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            float f2 = getList().get(this._nextIndex);
            int i = this._nextIndex;
            this._lastReturnedIndex = i;
            this._nextIndex = i + 1;
            return f2;
        }

        @Override // org.apache.commons.collections.primitives.FloatListIterator
        public float previous() {
            assertNotComodified();
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            float f2 = getList().get(this._nextIndex - 1);
            int i = this._nextIndex;
            this._lastReturnedIndex = i - 1;
            this._nextIndex = i - 1;
            return f2;
        }

        @Override // org.apache.commons.collections.primitives.FloatListIterator
        public void add(float f2) {
            assertNotComodified();
            getList().add(this._nextIndex, f2);
            this._nextIndex++;
            this._lastReturnedIndex = -1;
            resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.FloatListIterator, org.apache.commons.collections.primitives.FloatIterator
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

        @Override // org.apache.commons.collections.primitives.FloatListIterator
        public void set(float f2) {
            assertNotComodified();
            if (-1 == this._lastReturnedIndex) {
                throw new IllegalStateException();
            }
            getList().set(this._lastReturnedIndex, f2);
            resyncModCount();
        }
    }

    /* loaded from: classes5.dex */
    protected static class RandomAccessFloatSubList extends RandomAccessFloatList implements FloatList {
        private ComodChecker _comod;
        private int _limit;
        private RandomAccessFloatList _list;
        private int _offset;

        RandomAccessFloatSubList(RandomAccessFloatList randomAccessFloatList, int i, int i2) {
            this._offset = 0;
            this._limit = 0;
            this._list = null;
            this._comod = null;
            if (i < 0 || i2 > randomAccessFloatList.size()) {
                throw new IndexOutOfBoundsException();
            }
            if (i > i2) {
                throw new IllegalArgumentException();
            }
            this._list = randomAccessFloatList;
            this._offset = i;
            this._limit = i2 - i;
            ComodChecker comodChecker = new ComodChecker(randomAccessFloatList);
            this._comod = comodChecker;
            comodChecker.resyncModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.FloatList
        public float get(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            return this._list.get(toUnderlyingIndex(i));
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.FloatList
        public float removeElementAt(int i) {
            checkRange(i);
            this._comod.assertNotComodified();
            float removeElementAt = this._list.removeElementAt(toUnderlyingIndex(i));
            this._limit--;
            this._comod.resyncModCount();
            incrModCount();
            return removeElementAt;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.FloatList
        public float set(int i, float f2) {
            checkRange(i);
            this._comod.assertNotComodified();
            float f3 = this._list.set(toUnderlyingIndex(i), f2);
            incrModCount();
            this._comod.resyncModCount();
            return f3;
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.FloatList
        public void add(int i, float f2) {
            checkRangeIncludingEndpoint(i);
            this._comod.assertNotComodified();
            this._list.add(toUnderlyingIndex(i), f2);
            this._limit++;
            this._comod.resyncModCount();
            incrModCount();
        }

        @Override // org.apache.commons.collections.primitives.RandomAccessFloatList, org.apache.commons.collections.primitives.AbstractFloatCollection, org.apache.commons.collections.primitives.FloatCollection
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
