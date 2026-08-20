package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface LongListIterator extends LongIterator {
    void add(long j);

    @Override // org.apache.commons.collections.primitives.LongIterator
    boolean hasNext();

    boolean hasPrevious();

    @Override // org.apache.commons.collections.primitives.LongIterator
    long next();

    int nextIndex();

    long previous();

    int previousIndex();

    @Override // org.apache.commons.collections.primitives.LongIterator
    void remove();

    void set(long j);
}
