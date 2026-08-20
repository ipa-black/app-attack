package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface FloatList extends FloatCollection {
    void add(int i, float f2);

    @Override // org.apache.commons.collections.primitives.FloatCollection
    boolean add(float f2);

    boolean addAll(int i, FloatCollection floatCollection);

    boolean equals(Object obj);

    float get(int i);

    int hashCode();

    int indexOf(float f2);

    @Override // org.apache.commons.collections.primitives.FloatCollection
    FloatIterator iterator();

    int lastIndexOf(float f2);

    FloatListIterator listIterator();

    FloatListIterator listIterator(int i);

    float removeElementAt(int i);

    float set(int i, float f2);

    FloatList subList(int i, int i2);
}
