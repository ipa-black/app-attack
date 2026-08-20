package org.apache.commons.collections.primitives;

import org.apache.commons.collections.primitives.decorators.UnmodifiableCharIterator;
import org.apache.commons.collections.primitives.decorators.UnmodifiableCharList;
import org.apache.commons.collections.primitives.decorators.UnmodifiableCharListIterator;
/* loaded from: classes5.dex */
public final class CharCollections {
    public static final CharIterator EMPTY_CHAR_ITERATOR;
    public static final CharList EMPTY_CHAR_LIST;
    public static final CharListIterator EMPTY_CHAR_LIST_ITERATOR;

    public static CharList singletonCharList(char c2) {
        ArrayCharList arrayCharList = new ArrayCharList(1);
        arrayCharList.add(c2);
        return UnmodifiableCharList.wrap(arrayCharList);
    }

    public static CharIterator singletonCharIterator(char c2) {
        return singletonCharList(c2).iterator();
    }

    public static CharListIterator singletonCharListIterator(char c2) {
        return singletonCharList(c2).listIterator();
    }

    public static CharList unmodifiableCharList(CharList charList) throws NullPointerException {
        if (charList == null) {
            throw null;
        }
        return UnmodifiableCharList.wrap(charList);
    }

    public static CharIterator unmodifiableCharIterator(CharIterator charIterator) {
        if (charIterator == null) {
            throw null;
        }
        return UnmodifiableCharIterator.wrap(charIterator);
    }

    public static CharListIterator unmodifiableCharListIterator(CharListIterator charListIterator) {
        if (charListIterator == null) {
            throw null;
        }
        return UnmodifiableCharListIterator.wrap(charListIterator);
    }

    public static CharList getEmptyCharList() {
        return EMPTY_CHAR_LIST;
    }

    public static CharIterator getEmptyCharIterator() {
        return EMPTY_CHAR_ITERATOR;
    }

    public static CharListIterator getEmptyCharListIterator() {
        return EMPTY_CHAR_LIST_ITERATOR;
    }

    static {
        CharList unmodifiableCharList = unmodifiableCharList(new ArrayCharList(0));
        EMPTY_CHAR_LIST = unmodifiableCharList;
        EMPTY_CHAR_ITERATOR = unmodifiableCharIterator(unmodifiableCharList.iterator());
        EMPTY_CHAR_LIST_ITERATOR = unmodifiableCharListIterator(unmodifiableCharList.listIterator());
    }
}
