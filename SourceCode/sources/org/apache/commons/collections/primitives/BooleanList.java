package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface BooleanList extends BooleanCollection {
    void add(int i, boolean z);

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    boolean add(boolean z);

    boolean addAll(int i, BooleanCollection booleanCollection);

    boolean equals(Object obj);

    boolean get(int i);

    int hashCode();

    int indexOf(boolean z);

    @Override // org.apache.commons.collections.primitives.BooleanCollection
    BooleanIterator iterator();

    int lastIndexOf(boolean z);

    BooleanListIterator listIterator();

    BooleanListIterator listIterator(int i);

    boolean removeElementAt(int i);

    boolean set(int i, boolean z);

    BooleanList subList(int i, int i2);
}
