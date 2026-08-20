package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface ShortCollection {
    boolean add(short s);

    boolean addAll(ShortCollection shortCollection);

    void clear();

    boolean contains(short s);

    boolean containsAll(ShortCollection shortCollection);

    boolean isEmpty();

    ShortIterator iterator();

    boolean removeAll(ShortCollection shortCollection);

    boolean removeElement(short s);

    boolean retainAll(ShortCollection shortCollection);

    int size();

    short[] toArray();

    short[] toArray(short[] sArr);
}
