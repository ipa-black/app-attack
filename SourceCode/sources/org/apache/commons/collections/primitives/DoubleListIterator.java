package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface DoubleListIterator extends DoubleIterator {
    void add(double d2);

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    boolean hasNext();

    boolean hasPrevious();

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    double next();

    int nextIndex();

    double previous();

    int previousIndex();

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    void remove();

    void set(double d2);
}
