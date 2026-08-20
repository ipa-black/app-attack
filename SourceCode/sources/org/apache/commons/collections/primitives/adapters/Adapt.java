package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections.primitives.ByteCollection;
import org.apache.commons.collections.primitives.ByteIterator;
import org.apache.commons.collections.primitives.ByteList;
import org.apache.commons.collections.primitives.ByteListIterator;
import org.apache.commons.collections.primitives.CharCollection;
import org.apache.commons.collections.primitives.CharIterator;
import org.apache.commons.collections.primitives.CharList;
import org.apache.commons.collections.primitives.CharListIterator;
import org.apache.commons.collections.primitives.DoubleCollection;
import org.apache.commons.collections.primitives.DoubleIterator;
import org.apache.commons.collections.primitives.DoubleList;
import org.apache.commons.collections.primitives.DoubleListIterator;
import org.apache.commons.collections.primitives.FloatCollection;
import org.apache.commons.collections.primitives.FloatIterator;
import org.apache.commons.collections.primitives.FloatList;
import org.apache.commons.collections.primitives.FloatListIterator;
import org.apache.commons.collections.primitives.IntCollection;
import org.apache.commons.collections.primitives.IntIterator;
import org.apache.commons.collections.primitives.IntList;
import org.apache.commons.collections.primitives.IntListIterator;
import org.apache.commons.collections.primitives.LongCollection;
import org.apache.commons.collections.primitives.LongIterator;
import org.apache.commons.collections.primitives.LongList;
import org.apache.commons.collections.primitives.LongListIterator;
import org.apache.commons.collections.primitives.ShortCollection;
import org.apache.commons.collections.primitives.ShortIterator;
import org.apache.commons.collections.primitives.ShortList;
import org.apache.commons.collections.primitives.ShortListIterator;
/* loaded from: classes5.dex */
public final class Adapt {
    public static final Collection toCollection(ByteCollection byteCollection) {
        return ByteCollectionCollection.wrap(byteCollection);
    }

    public static final Collection toCollection(CharCollection charCollection) {
        return CharCollectionCollection.wrap(charCollection);
    }

    public static final Collection toCollection(DoubleCollection doubleCollection) {
        return DoubleCollectionCollection.wrap(doubleCollection);
    }

    public static final Collection toCollection(FloatCollection floatCollection) {
        return FloatCollectionCollection.wrap(floatCollection);
    }

    public static final Collection toCollection(IntCollection intCollection) {
        return IntCollectionCollection.wrap(intCollection);
    }

    public static final Collection toCollection(LongCollection longCollection) {
        return LongCollectionCollection.wrap(longCollection);
    }

    public static final Collection toCollection(ShortCollection shortCollection) {
        return ShortCollectionCollection.wrap(shortCollection);
    }

    public static final List toList(ByteList byteList) {
        return ByteListList.wrap(byteList);
    }

    public static final List toList(CharList charList) {
        return CharListList.wrap(charList);
    }

    public static final List toList(DoubleList doubleList) {
        return DoubleListList.wrap(doubleList);
    }

    public static final List toList(FloatList floatList) {
        return FloatListList.wrap(floatList);
    }

    public static final List toList(IntList intList) {
        return IntListList.wrap(intList);
    }

    public static final List toList(LongList longList) {
        return LongListList.wrap(longList);
    }

    public static final List toList(ShortList shortList) {
        return ShortListList.wrap(shortList);
    }

    public static final Iterator toIterator(ByteIterator byteIterator) {
        return ByteIteratorIterator.wrap(byteIterator);
    }

    public static final Iterator toIterator(CharIterator charIterator) {
        return CharIteratorIterator.wrap(charIterator);
    }

    public static final Iterator toIterator(DoubleIterator doubleIterator) {
        return DoubleIteratorIterator.wrap(doubleIterator);
    }

    public static final Iterator toIterator(FloatIterator floatIterator) {
        return FloatIteratorIterator.wrap(floatIterator);
    }

    public static final Iterator toIterator(IntIterator intIterator) {
        return IntIteratorIterator.wrap(intIterator);
    }

    public static final Iterator toIterator(LongIterator longIterator) {
        return LongIteratorIterator.wrap(longIterator);
    }

    public static final Iterator toIterator(ShortIterator shortIterator) {
        return ShortIteratorIterator.wrap(shortIterator);
    }

    public static final ListIterator toListIterator(ByteListIterator byteListIterator) {
        return ByteListIteratorListIterator.wrap(byteListIterator);
    }

    public static final ListIterator toListIterator(CharListIterator charListIterator) {
        return CharListIteratorListIterator.wrap(charListIterator);
    }

    public static final ListIterator toListIterator(DoubleListIterator doubleListIterator) {
        return DoubleListIteratorListIterator.wrap(doubleListIterator);
    }

    public static final ListIterator toListIterator(FloatListIterator floatListIterator) {
        return FloatListIteratorListIterator.wrap(floatListIterator);
    }

    public static final ListIterator toListIterator(IntListIterator intListIterator) {
        return IntListIteratorListIterator.wrap(intListIterator);
    }

    public static final ListIterator toListIterator(LongListIterator longListIterator) {
        return LongListIteratorListIterator.wrap(longListIterator);
    }

    public static final ListIterator toListIterator(ShortListIterator shortListIterator) {
        return ShortListIteratorListIterator.wrap(shortListIterator);
    }

    public static final ByteCollection toByteCollection(Collection collection) {
        return CollectionByteCollection.wrap(collection);
    }

    public static final ByteList toByteList(List list) {
        return ListByteList.wrap(list);
    }

    public static final ByteIterator toByteIterator(Iterator it) {
        return IteratorByteIterator.wrap(it);
    }

    public static final ByteListIterator toByteListIterator(ListIterator listIterator) {
        return ListIteratorByteListIterator.wrap(listIterator);
    }

    public static final CharCollection toCharCollection(Collection collection) {
        return CollectionCharCollection.wrap(collection);
    }

    public static final CharList toCharList(List list) {
        return ListCharList.wrap(list);
    }

    public static final CharIterator toCharIterator(Iterator it) {
        return IteratorCharIterator.wrap(it);
    }

    public static final CharListIterator toCharListIterator(ListIterator listIterator) {
        return ListIteratorCharListIterator.wrap(listIterator);
    }

    public static final DoubleCollection toDoubleCollection(Collection collection) {
        return CollectionDoubleCollection.wrap(collection);
    }

    public static final DoubleList toDoubleList(List list) {
        return ListDoubleList.wrap(list);
    }

    public static final DoubleIterator toDoubleIterator(Iterator it) {
        return IteratorDoubleIterator.wrap(it);
    }

    public static final DoubleListIterator toDoubleListIterator(ListIterator listIterator) {
        return ListIteratorDoubleListIterator.wrap(listIterator);
    }

    public static final FloatCollection toFloatCollection(Collection collection) {
        return CollectionFloatCollection.wrap(collection);
    }

    public static final FloatList toFloatList(List list) {
        return ListFloatList.wrap(list);
    }

    public static final FloatIterator toFloatIterator(Iterator it) {
        return IteratorFloatIterator.wrap(it);
    }

    public static final FloatListIterator toFloatListIterator(ListIterator listIterator) {
        return ListIteratorFloatListIterator.wrap(listIterator);
    }

    public static final IntCollection toIntCollection(Collection collection) {
        return CollectionIntCollection.wrap(collection);
    }

    public static final IntList toIntList(List list) {
        return ListIntList.wrap(list);
    }

    public static final IntIterator toIntIterator(Iterator it) {
        return IteratorIntIterator.wrap(it);
    }

    public static final IntListIterator toIntListIterator(ListIterator listIterator) {
        return ListIteratorIntListIterator.wrap(listIterator);
    }

    public static final LongCollection toLongCollection(Collection collection) {
        return CollectionLongCollection.wrap(collection);
    }

    public static final LongList toLongList(List list) {
        return ListLongList.wrap(list);
    }

    public static final LongIterator toLongIterator(Iterator it) {
        return IteratorLongIterator.wrap(it);
    }

    public static final LongListIterator toLongListIterator(ListIterator listIterator) {
        return ListIteratorLongListIterator.wrap(listIterator);
    }

    public static final ShortCollection toShortCollection(Collection collection) {
        return CollectionShortCollection.wrap(collection);
    }

    public static final ShortList toShortList(List list) {
        return ListShortList.wrap(list);
    }

    public static final ShortIterator toShortIterator(Iterator it) {
        return IteratorShortIterator.wrap(it);
    }

    public static final ShortListIterator toShortListIterator(ListIterator listIterator) {
        return ListIteratorShortListIterator.wrap(listIterator);
    }
}
