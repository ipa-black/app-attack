package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface CharCollection {
    boolean add(char c2);

    boolean addAll(CharCollection charCollection);

    void clear();

    boolean contains(char c2);

    boolean containsAll(CharCollection charCollection);

    boolean isEmpty();

    CharIterator iterator();

    boolean removeAll(CharCollection charCollection);

    boolean removeElement(char c2);

    boolean retainAll(CharCollection charCollection);

    int size();

    char[] toArray();

    char[] toArray(char[] cArr);
}
