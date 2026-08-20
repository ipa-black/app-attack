package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface BooleanCollection {
    boolean add(boolean z);

    boolean addAll(BooleanCollection booleanCollection);

    void clear();

    boolean contains(boolean z);

    boolean containsAll(BooleanCollection booleanCollection);

    boolean isEmpty();

    BooleanIterator iterator();

    boolean removeAll(BooleanCollection booleanCollection);

    boolean removeElement(boolean z);

    boolean retainAll(BooleanCollection booleanCollection);

    int size();

    boolean[] toArray();

    boolean[] toArray(boolean[] zArr);
}
