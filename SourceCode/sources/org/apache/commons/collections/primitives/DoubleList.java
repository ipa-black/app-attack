package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface DoubleList extends DoubleCollection {
    void add(int i, double d2);

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    boolean add(double d2);

    boolean addAll(int i, DoubleCollection doubleCollection);

    boolean equals(Object obj);

    double get(int i);

    int hashCode();

    int indexOf(double d2);

    @Override // org.apache.commons.collections.primitives.DoubleCollection
    DoubleIterator iterator();

    int lastIndexOf(double d2);

    DoubleListIterator listIterator();

    DoubleListIterator listIterator(int i);

    double removeElementAt(int i);

    double set(int i, double d2);

    DoubleList subList(int i, int i2);
}
