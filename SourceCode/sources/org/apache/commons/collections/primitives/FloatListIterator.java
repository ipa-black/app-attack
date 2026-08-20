package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface FloatListIterator extends FloatIterator {
    void add(float f2);

    @Override // org.apache.commons.collections.primitives.FloatIterator
    boolean hasNext();

    boolean hasPrevious();

    @Override // org.apache.commons.collections.primitives.FloatIterator
    float next();

    int nextIndex();

    float previous();

    int previousIndex();

    @Override // org.apache.commons.collections.primitives.FloatIterator
    void remove();

    void set(float f2);
}
