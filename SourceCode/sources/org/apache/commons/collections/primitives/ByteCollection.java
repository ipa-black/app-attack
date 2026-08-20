package org.apache.commons.collections.primitives;
/* loaded from: classes5.dex */
public interface ByteCollection {
    boolean add(byte b2);

    boolean addAll(ByteCollection byteCollection);

    void clear();

    boolean contains(byte b2);

    boolean containsAll(ByteCollection byteCollection);

    boolean isEmpty();

    ByteIterator iterator();

    boolean removeAll(ByteCollection byteCollection);

    boolean removeElement(byte b2);

    boolean retainAll(ByteCollection byteCollection);

    int size();

    byte[] toArray();

    byte[] toArray(byte[] bArr);
}
