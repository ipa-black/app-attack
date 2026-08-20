package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface IntList extends IntCollection {
    void add(int i, int i2);

    @Override // org.apache.commons.collections.primitives.IntCollection
    boolean add(int i);

    boolean addAll(int i, IntCollection intCollection);

    boolean equals(Object obj);

    int get(int i);

    int hashCode();

    int indexOf(int i);

    @Override // org.apache.commons.collections.primitives.IntCollection
    IntIterator iterator();

    int lastIndexOf(int i);

    IntListIterator listIterator();

    IntListIterator listIterator(int i);

    int removeElementAt(int i);

    int set(int i, int i2);

    IntList subList(int i, int i2);
}
