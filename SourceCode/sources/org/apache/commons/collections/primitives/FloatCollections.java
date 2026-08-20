package org.apache.commons.collections.primitives;

import org.apache.commons.collections.primitives.decorators.UnmodifiableFloatIterator;
import org.apache.commons.collections.primitives.decorators.UnmodifiableFloatList;
import org.apache.commons.collections.primitives.decorators.UnmodifiableFloatListIterator;
/* loaded from: classes5.dex */
public final class FloatCollections {
    public static final FloatIterator EMPTY_FLOAT_ITERATOR;
    public static final FloatList EMPTY_FLOAT_LIST;
    public static final FloatListIterator EMPTY_FLOAT_LIST_ITERATOR;

    public static FloatList singletonFloatList(float f2) {
        ArrayFloatList arrayFloatList = new ArrayFloatList(1);
        arrayFloatList.add(f2);
        return UnmodifiableFloatList.wrap(arrayFloatList);
    }

    public static FloatIterator singletonFloatIterator(float f2) {
        return singletonFloatList(f2).iterator();
    }

    public static FloatListIterator singletonFloatListIterator(float f2) {
        return singletonFloatList(f2).listIterator();
    }

    public static FloatList unmodifiableFloatList(FloatList floatList) throws NullPointerException {
        if (floatList == null) {
            throw null;
        }
        return UnmodifiableFloatList.wrap(floatList);
    }

    public static FloatIterator unmodifiableFloatIterator(FloatIterator floatIterator) {
        if (floatIterator == null) {
            throw null;
        }
        return UnmodifiableFloatIterator.wrap(floatIterator);
    }

    public static FloatListIterator unmodifiableFloatListIterator(FloatListIterator floatListIterator) {
        if (floatListIterator == null) {
            throw null;
        }
        return UnmodifiableFloatListIterator.wrap(floatListIterator);
    }

    public static FloatList getEmptyFloatList() {
        return EMPTY_FLOAT_LIST;
    }

    public static FloatIterator getEmptyFloatIterator() {
        return EMPTY_FLOAT_ITERATOR;
    }

    public static FloatListIterator getEmptyFloatListIterator() {
        return EMPTY_FLOAT_LIST_ITERATOR;
    }

    static {
        FloatList unmodifiableFloatList = unmodifiableFloatList(new ArrayFloatList(0));
        EMPTY_FLOAT_LIST = unmodifiableFloatList;
        EMPTY_FLOAT_ITERATOR = unmodifiableFloatIterator(unmodifiableFloatList.iterator());
        EMPTY_FLOAT_LIST_ITERATOR = unmodifiableFloatListIterator(unmodifiableFloatList.listIterator());
    }
}
