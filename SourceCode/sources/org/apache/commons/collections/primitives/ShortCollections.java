package org.apache.commons.collections.primitives;

import org.apache.commons.collections.primitives.decorators.UnmodifiableShortIterator;
import org.apache.commons.collections.primitives.decorators.UnmodifiableShortList;
import org.apache.commons.collections.primitives.decorators.UnmodifiableShortListIterator;
/* loaded from: classes5.dex */
public final class ShortCollections {
    public static final ShortIterator EMPTY_SHORT_ITERATOR;
    public static final ShortList EMPTY_SHORT_LIST;
    public static final ShortListIterator EMPTY_SHORT_LIST_ITERATOR;

    public static ShortList singletonShortList(short s) {
        ArrayShortList arrayShortList = new ArrayShortList(1);
        arrayShortList.add(s);
        return UnmodifiableShortList.wrap(arrayShortList);
    }

    public static ShortIterator singletonShortIterator(short s) {
        return singletonShortList(s).iterator();
    }

    public static ShortListIterator singletonShortListIterator(short s) {
        return singletonShortList(s).listIterator();
    }

    public static ShortList unmodifiableShortList(ShortList shortList) throws NullPointerException {
        if (shortList == null) {
            throw null;
        }
        return UnmodifiableShortList.wrap(shortList);
    }

    public static ShortIterator unmodifiableShortIterator(ShortIterator shortIterator) {
        if (shortIterator == null) {
            throw null;
        }
        return UnmodifiableShortIterator.wrap(shortIterator);
    }

    public static ShortListIterator unmodifiableShortListIterator(ShortListIterator shortListIterator) {
        if (shortListIterator == null) {
            throw null;
        }
        return UnmodifiableShortListIterator.wrap(shortListIterator);
    }

    public static ShortList getEmptyShortList() {
        return EMPTY_SHORT_LIST;
    }

    public static ShortIterator getEmptyShortIterator() {
        return EMPTY_SHORT_ITERATOR;
    }

    public static ShortListIterator getEmptyShortListIterator() {
        return EMPTY_SHORT_LIST_ITERATOR;
    }

    static {
        ShortList unmodifiableShortList = unmodifiableShortList(new ArrayShortList(0));
        EMPTY_SHORT_LIST = unmodifiableShortList;
        EMPTY_SHORT_ITERATOR = unmodifiableShortIterator(unmodifiableShortList.iterator());
        EMPTY_SHORT_LIST_ITERATOR = unmodifiableShortListIterator(unmodifiableShortList.listIterator());
    }
}
