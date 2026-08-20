package org.apache.commons.collections.primitives;

import org.apache.commons.collections.primitives.decorators.UnmodifiableLongIterator;
import org.apache.commons.collections.primitives.decorators.UnmodifiableLongList;
import org.apache.commons.collections.primitives.decorators.UnmodifiableLongListIterator;
/* loaded from: classes5.dex */
public final class LongCollections {
    public static final LongIterator EMPTY_LONG_ITERATOR;
    public static final LongList EMPTY_LONG_LIST;
    public static final LongListIterator EMPTY_LONG_LIST_ITERATOR;

    public static LongList singletonLongList(long j) {
        ArrayLongList arrayLongList = new ArrayLongList(1);
        arrayLongList.add(j);
        return UnmodifiableLongList.wrap(arrayLongList);
    }

    public static LongIterator singletonLongIterator(long j) {
        return singletonLongList(j).iterator();
    }

    public static LongListIterator singletonLongListIterator(long j) {
        return singletonLongList(j).listIterator();
    }

    public static LongList unmodifiableLongList(LongList longList) throws NullPointerException {
        if (longList == null) {
            throw null;
        }
        return UnmodifiableLongList.wrap(longList);
    }

    public static LongIterator unmodifiableLongIterator(LongIterator longIterator) {
        if (longIterator == null) {
            throw null;
        }
        return UnmodifiableLongIterator.wrap(longIterator);
    }

    public static LongListIterator unmodifiableLongListIterator(LongListIterator longListIterator) {
        if (longListIterator == null) {
            throw null;
        }
        return UnmodifiableLongListIterator.wrap(longListIterator);
    }

    public static LongList getEmptyLongList() {
        return EMPTY_LONG_LIST;
    }

    public static LongIterator getEmptyLongIterator() {
        return EMPTY_LONG_ITERATOR;
    }

    public static LongListIterator getEmptyLongListIterator() {
        return EMPTY_LONG_LIST_ITERATOR;
    }

    static {
        LongList unmodifiableLongList = unmodifiableLongList(new ArrayLongList(0));
        EMPTY_LONG_LIST = unmodifiableLongList;
        EMPTY_LONG_ITERATOR = unmodifiableLongIterator(unmodifiableLongList.iterator());
        EMPTY_LONG_LIST_ITERATOR = unmodifiableLongListIterator(unmodifiableLongList.listIterator());
    }
}
