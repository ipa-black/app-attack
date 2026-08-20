package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface CharList extends CharCollection {
    void add(int i, char c2);

    @Override // org.apache.commons.collections.primitives.CharCollection
    boolean add(char c2);

    boolean addAll(int i, CharCollection charCollection);

    boolean equals(Object obj);

    char get(int i);

    int hashCode();

    int indexOf(char c2);

    @Override // org.apache.commons.collections.primitives.CharCollection
    CharIterator iterator();

    int lastIndexOf(char c2);

    CharListIterator listIterator();

    CharListIterator listIterator(int i);

    char removeElementAt(int i);

    char set(int i, char c2);

    CharList subList(int i, int i2);
}
