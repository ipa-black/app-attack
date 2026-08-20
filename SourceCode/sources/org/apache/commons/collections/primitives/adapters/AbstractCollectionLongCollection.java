package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import org.apache.commons.collections.primitives.LongCollection;
import org.apache.commons.collections.primitives.LongIterator;
/* loaded from: classes5.dex */
abstract class AbstractCollectionLongCollection implements LongCollection {
    protected abstract Collection getCollection();

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean add(long j) {
        return getCollection().add(new Long(j));
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean addAll(LongCollection longCollection) {
        return getCollection().addAll(LongCollectionCollection.wrap(longCollection));
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public void clear() {
        getCollection().clear();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean contains(long j) {
        return getCollection().contains(new Long(j));
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean containsAll(LongCollection longCollection) {
        return getCollection().containsAll(LongCollectionCollection.wrap(longCollection));
    }

    public String toString() {
        return getCollection().toString();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean isEmpty() {
        return getCollection().isEmpty();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public LongIterator iterator() {
        return IteratorLongIterator.wrap(getCollection().iterator());
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean removeElement(long j) {
        return getCollection().remove(new Long(j));
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean removeAll(LongCollection longCollection) {
        return getCollection().removeAll(LongCollectionCollection.wrap(longCollection));
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public boolean retainAll(LongCollection longCollection) {
        return getCollection().retainAll(LongCollectionCollection.wrap(longCollection));
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public int size() {
        return getCollection().size();
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public long[] toArray() {
        Object[] array = getCollection().toArray();
        long[] jArr = new long[array.length];
        for (int i = 0; i < array.length; i++) {
            jArr[i] = ((Number) array[i]).longValue();
        }
        return jArr;
    }

    @Override // org.apache.commons.collections.primitives.LongCollection
    public long[] toArray(long[] jArr) {
        Object[] array = getCollection().toArray();
        if (jArr.length < array.length) {
            jArr = new long[array.length];
        }
        for (int i = 0; i < array.length; i++) {
            jArr[i] = ((Number) array[i]).longValue();
        }
        return jArr;
    }
}
