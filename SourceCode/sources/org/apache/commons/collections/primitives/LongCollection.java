package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface LongCollection {
    boolean add(long j);

    boolean addAll(LongCollection longCollection);

    void clear();

    boolean contains(long j);

    boolean containsAll(LongCollection longCollection);

    boolean isEmpty();

    LongIterator iterator();

    boolean removeAll(LongCollection longCollection);

    boolean removeElement(long j);

    boolean retainAll(LongCollection longCollection);

    int size();

    long[] toArray();

    long[] toArray(long[] jArr);
}
