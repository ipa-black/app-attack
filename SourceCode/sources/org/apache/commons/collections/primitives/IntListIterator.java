package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface IntListIterator extends IntIterator {
    void add(int i);

    @Override // org.apache.commons.collections.primitives.IntIterator
    boolean hasNext();

    boolean hasPrevious();

    @Override // org.apache.commons.collections.primitives.IntIterator
    int next();

    int nextIndex();

    int previous();

    int previousIndex();

    @Override // org.apache.commons.collections.primitives.IntIterator
    void remove();

    void set(int i);
}
