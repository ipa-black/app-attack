package org.apache.commons.collections.primitives;

import org.apache.commons.collections.primitives.decorators.UnmodifiableByteIterator;
import org.apache.commons.collections.primitives.decorators.UnmodifiableByteList;
import org.apache.commons.collections.primitives.decorators.UnmodifiableByteListIterator;
/* loaded from: classes5.dex */
public final class ByteCollections {
    public static final ByteIterator EMPTY_BYTE_ITERATOR;
    public static final ByteList EMPTY_BYTE_LIST;
    public static final ByteListIterator EMPTY_BYTE_LIST_ITERATOR;

    public static ByteList singletonByteList(byte b2) {
        ArrayByteList arrayByteList = new ArrayByteList(1);
        arrayByteList.add(b2);
        return UnmodifiableByteList.wrap(arrayByteList);
    }

    public static ByteIterator singletonByteIterator(byte b2) {
        return singletonByteList(b2).iterator();
    }

    public static ByteListIterator singletonByteListIterator(byte b2) {
        return singletonByteList(b2).listIterator();
    }

    public static ByteList unmodifiableByteList(ByteList byteList) throws NullPointerException {
        if (byteList == null) {
            throw null;
        }
        return UnmodifiableByteList.wrap(byteList);
    }

    public static ByteIterator unmodifiableByteIterator(ByteIterator byteIterator) {
        if (byteIterator == null) {
            throw null;
        }
        return UnmodifiableByteIterator.wrap(byteIterator);
    }

    public static ByteListIterator unmodifiableByteListIterator(ByteListIterator byteListIterator) {
        if (byteListIterator == null) {
            throw null;
        }
        return UnmodifiableByteListIterator.wrap(byteListIterator);
    }

    public static ByteList getEmptyByteList() {
        return EMPTY_BYTE_LIST;
    }

    public static ByteIterator getEmptyByteIterator() {
        return EMPTY_BYTE_ITERATOR;
    }

    public static ByteListIterator getEmptyByteListIterator() {
        return EMPTY_BYTE_LIST_ITERATOR;
    }

    static {
        ByteList unmodifiableByteList = unmodifiableByteList(new ArrayByteList(0));
        EMPTY_BYTE_LIST = unmodifiableByteList;
        EMPTY_BYTE_ITERATOR = unmodifiableByteIterator(unmodifiableByteList.iterator());
        EMPTY_BYTE_LIST_ITERATOR = unmodifiableByteListIterator(unmodifiableByteList.listIterator());
    }
}
