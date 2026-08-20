package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface CharListIterator extends CharIterator {
    void add(char c2);

    @Override // org.apache.commons.collections.primitives.CharIterator
    boolean hasNext();

    boolean hasPrevious();

    @Override // org.apache.commons.collections.primitives.CharIterator
    char next();

    int nextIndex();

    char previous();

    int previousIndex();

    @Override // org.apache.commons.collections.primitives.CharIterator
    void remove();

    void set(char c2);
}
