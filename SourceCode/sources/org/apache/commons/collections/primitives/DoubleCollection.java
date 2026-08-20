package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface DoubleCollection {
    boolean add(double d2);

    boolean addAll(DoubleCollection doubleCollection);

    void clear();

    boolean contains(double d2);

    boolean containsAll(DoubleCollection doubleCollection);

    boolean isEmpty();

    DoubleIterator iterator();

    boolean removeAll(DoubleCollection doubleCollection);

    boolean removeElement(double d2);

    boolean retainAll(DoubleCollection doubleCollection);

    int size();

    double[] toArray();

    double[] toArray(double[] dArr);
}
