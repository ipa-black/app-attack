package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface ByteListIterator extends ByteIterator {
    void add(byte b2);

    @Override // org.apache.commons.collections.primitives.ByteIterator
    boolean hasNext();

    boolean hasPrevious();

    @Override // org.apache.commons.collections.primitives.ByteIterator
    byte next();

    int nextIndex();

    byte previous();

    int previousIndex();

    @Override // org.apache.commons.collections.primitives.ByteIterator
    void remove();

    void set(byte b2);
}
