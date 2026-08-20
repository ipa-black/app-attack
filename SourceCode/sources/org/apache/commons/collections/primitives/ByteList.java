package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface ByteList extends ByteCollection {
    void add(int i, byte b2);

    @Override // org.apache.commons.collections.primitives.ByteCollection
    boolean add(byte b2);

    boolean addAll(int i, ByteCollection byteCollection);

    boolean equals(Object obj);

    byte get(int i);

    int hashCode();

    int indexOf(byte b2);

    @Override // org.apache.commons.collections.primitives.ByteCollection
    ByteIterator iterator();

    int lastIndexOf(byte b2);

    ByteListIterator listIterator();

    ByteListIterator listIterator(int i);

    byte removeElementAt(int i);

    byte set(int i, byte b2);

    ByteList subList(int i, int i2);
}
