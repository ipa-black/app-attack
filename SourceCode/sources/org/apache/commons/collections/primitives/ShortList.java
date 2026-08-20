package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface ShortList extends ShortCollection {
    void add(int i, short s);

    @Override // org.apache.commons.collections.primitives.ShortCollection
    boolean add(short s);

    boolean addAll(int i, ShortCollection shortCollection);

    boolean equals(Object obj);

    short get(int i);

    int hashCode();

    int indexOf(short s);

    @Override // org.apache.commons.collections.primitives.ShortCollection
    ShortIterator iterator();

    int lastIndexOf(short s);

    ShortListIterator listIterator();

    ShortListIterator listIterator(int i);

    short removeElementAt(int i);

    short set(int i, short s);

    ShortList subList(int i, int i2);
}
