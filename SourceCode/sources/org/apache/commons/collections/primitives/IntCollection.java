package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface IntCollection {
    boolean add(int i);

    boolean addAll(IntCollection intCollection);

    void clear();

    boolean contains(int i);

    boolean containsAll(IntCollection intCollection);

    boolean isEmpty();

    IntIterator iterator();

    boolean removeAll(IntCollection intCollection);

    boolean removeElement(int i);

    boolean retainAll(IntCollection intCollection);

    int size();

    int[] toArray();

    int[] toArray(int[] iArr);
}
