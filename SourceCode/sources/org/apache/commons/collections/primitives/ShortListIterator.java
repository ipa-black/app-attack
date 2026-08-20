package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface ShortListIterator extends ShortIterator {
    void add(short s);

    @Override // org.apache.commons.collections.primitives.ShortIterator
    boolean hasNext();

    boolean hasPrevious();

    @Override // org.apache.commons.collections.primitives.ShortIterator
    short next();

    int nextIndex();

    short previous();

    int previousIndex();

    @Override // org.apache.commons.collections.primitives.ShortIterator
    void remove();

    void set(short s);
}
