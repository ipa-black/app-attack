package org.apache.commons.collections.primitives;

import org.apache.commons.collections.primitives.decorators.UnmodifiableDoubleIterator;
import org.apache.commons.collections.primitives.decorators.UnmodifiableDoubleList;
import org.apache.commons.collections.primitives.decorators.UnmodifiableDoubleListIterator;
/* loaded from: classes5.dex */
public final class DoubleCollections {
    public static final DoubleIterator EMPTY_DOUBLE_ITERATOR;
    public static final DoubleList EMPTY_DOUBLE_LIST;
    public static final DoubleListIterator EMPTY_DOUBLE_LIST_ITERATOR;

    public static DoubleList singletonDoubleList(double d2) {
        ArrayDoubleList arrayDoubleList = new ArrayDoubleList(1);
        arrayDoubleList.add(d2);
        return UnmodifiableDoubleList.wrap(arrayDoubleList);
    }

    public static DoubleIterator singletonDoubleIterator(double d2) {
        return singletonDoubleList(d2).iterator();
    }

    public static DoubleListIterator singletonDoubleListIterator(double d2) {
        return singletonDoubleList(d2).listIterator();
    }

    public static DoubleList unmodifiableDoubleList(DoubleList doubleList) throws NullPointerException {
        if (doubleList == null) {
            throw null;
        }
        return UnmodifiableDoubleList.wrap(doubleList);
    }

    public static DoubleIterator unmodifiableDoubleIterator(DoubleIterator doubleIterator) {
        if (doubleIterator == null) {
            throw null;
        }
        return UnmodifiableDoubleIterator.wrap(doubleIterator);
    }

    public static DoubleListIterator unmodifiableDoubleListIterator(DoubleListIterator doubleListIterator) {
        if (doubleListIterator == null) {
            throw null;
        }
        return UnmodifiableDoubleListIterator.wrap(doubleListIterator);
    }

    public static DoubleList getEmptyDoubleList() {
        return EMPTY_DOUBLE_LIST;
    }

    public static DoubleIterator getEmptyDoubleIterator() {
        return EMPTY_DOUBLE_ITERATOR;
    }

    public static DoubleListIterator getEmptyDoubleListIterator() {
        return EMPTY_DOUBLE_LIST_ITERATOR;
    }

    static {
        DoubleList unmodifiableDoubleList = unmodifiableDoubleList(new ArrayDoubleList(0));
        EMPTY_DOUBLE_LIST = unmodifiableDoubleList;
        EMPTY_DOUBLE_ITERATOR = unmodifiableDoubleIterator(unmodifiableDoubleList.iterator());
        EMPTY_DOUBLE_LIST_ITERATOR = unmodifiableDoubleListIterator(unmodifiableDoubleList.listIterator());
    }
}
