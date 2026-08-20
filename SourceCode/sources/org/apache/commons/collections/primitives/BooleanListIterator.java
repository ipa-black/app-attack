package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface BooleanListIterator extends BooleanIterator {
    void add(boolean z);

    @Override // org.apache.commons.collections.primitives.BooleanIterator
    boolean hasNext();

    boolean hasPrevious();

    @Override // org.apache.commons.collections.primitives.BooleanIterator
    boolean next();

    int nextIndex();

    boolean previous();

    int previousIndex();

    @Override // org.apache.commons.collections.primitives.BooleanIterator
    void remove();

    void set(boolean z);
}
