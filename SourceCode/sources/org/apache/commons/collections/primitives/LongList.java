package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface LongList extends LongCollection {
    void add(int i, long j);

    @Override // org.apache.commons.collections.primitives.LongCollection
    boolean add(long j);

    boolean addAll(int i, LongCollection longCollection);

    boolean equals(Object obj);

    long get(int i);

    int hashCode();

    int indexOf(long j);

    @Override // org.apache.commons.collections.primitives.LongCollection
    LongIterator iterator();

    int lastIndexOf(long j);

    LongListIterator listIterator();

    LongListIterator listIterator(int i);

    long removeElementAt(int i);

    long set(int i, long j);

    LongList subList(int i, int i2);
}
