package org.apache.commons.collections.primitives;

import org.apache.commons.collections.primitives.decorators.UnmodifiableIntIterator;
import org.apache.commons.collections.primitives.decorators.UnmodifiableIntList;
import org.apache.commons.collections.primitives.decorators.UnmodifiableIntListIterator;
/* loaded from: classes5.dex */
public final class IntCollections {
    public static final IntIterator EMPTY_INT_ITERATOR;
    public static final IntList EMPTY_INT_LIST;
    public static final IntListIterator EMPTY_INT_LIST_ITERATOR;

    public static IntList singletonIntList(int i) {
        ArrayIntList arrayIntList = new ArrayIntList(1);
        arrayIntList.add(i);
        return UnmodifiableIntList.wrap(arrayIntList);
    }

    public static IntIterator singletonIntIterator(int i) {
        return singletonIntList(i).iterator();
    }

    public static IntListIterator singletonIntListIterator(int i) {
        return singletonIntList(i).listIterator();
    }

    public static IntList unmodifiableIntList(IntList intList) throws NullPointerException {
        if (intList == null) {
            throw null;
        }
        return UnmodifiableIntList.wrap(intList);
    }

    public static IntIterator unmodifiableIntIterator(IntIterator intIterator) {
        if (intIterator == null) {
            throw null;
        }
        return UnmodifiableIntIterator.wrap(intIterator);
    }

    public static IntListIterator unmodifiableIntListIterator(IntListIterator intListIterator) {
        if (intListIterator == null) {
            throw null;
        }
        return UnmodifiableIntListIterator.wrap(intListIterator);
    }

    public static IntList getEmptyIntList() {
        return EMPTY_INT_LIST;
    }

    public static IntIterator getEmptyIntIterator() {
        return EMPTY_INT_ITERATOR;
    }

    public static IntListIterator getEmptyIntListIterator() {
        return EMPTY_INT_LIST_ITERATOR;
    }

    static {
        IntList unmodifiableIntList = unmodifiableIntList(new ArrayIntList(0));
        EMPTY_INT_LIST = unmodifiableIntList;
        EMPTY_INT_ITERATOR = unmodifiableIntIterator(unmodifiableIntList.iterator());
        EMPTY_INT_LIST_ITERATOR = unmodifiableIntListIterator(unmodifiableIntList.listIterator());
    }
}
