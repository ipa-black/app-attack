package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface FloatCollection {
    boolean add(float f2);

    boolean addAll(FloatCollection floatCollection);

    void clear();

    boolean contains(float f2);

    boolean containsAll(FloatCollection floatCollection);

    boolean isEmpty();

    FloatIterator iterator();

    boolean removeAll(FloatCollection floatCollection);

    boolean removeElement(float f2);

    boolean retainAll(FloatCollection floatCollection);

    int size();

    float[] toArray();

    float[] toArray(float[] fArr);
}
