package org.apache.commons.collections;

import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import org.apache.commons.collections.iterators.ArrayIterator;
import org.apache.commons.collections.iterators.ArrayListIterator;
import org.apache.commons.collections.iterators.CollatingIterator;
import org.apache.commons.collections.iterators.EnumerationIterator;
import org.apache.commons.collections.iterators.FilterIterator;
import org.apache.commons.collections.iterators.FilterListIterator;
import org.apache.commons.collections.iterators.IteratorChain;
import org.apache.commons.collections.iterators.IteratorEnumeration;
import org.apache.commons.collections.iterators.ListIteratorWrapper;
import org.apache.commons.collections.iterators.LoopingIterator;
import org.apache.commons.collections.iterators.ObjectArrayIterator;
import org.apache.commons.collections.iterators.ObjectArrayListIterator;
import org.apache.commons.collections.iterators.SingletonIterator;
import org.apache.commons.collections.iterators.SingletonListIterator;
import org.apache.commons.collections.iterators.TransformIterator;
import org.apache.commons.collections.iterators.UnmodifiableIterator;
import org.apache.commons.collections.iterators.UnmodifiableListIterator;
import org.apache.commons.collections.iterators.UnmodifiableMapIterator;
/* loaded from: classes5.dex */
public class IteratorUtils {
    static /* synthetic */ Class class$java$util$Iterator;
    public static final ResettableIterator EMPTY_ITERATOR = new EmptyIterator();
    public static final ResettableListIterator EMPTY_LIST_ITERATOR = new EmptyListIterator();
    public static final OrderedIterator EMPTY_ORDERED_ITERATOR = new EmptyOrderedIterator();
    public static final MapIterator EMPTY_MAP_ITERATOR = new EmptyMapIterator();
    public static final OrderedMapIterator EMPTY_ORDERED_MAP_ITERATOR = new EmptyOrderedMapIterator();

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    public static ResettableIterator emptyIterator() {
        return EMPTY_ITERATOR;
    }

    public static ResettableListIterator emptyListIterator() {
        return EMPTY_LIST_ITERATOR;
    }

    public static OrderedIterator emptyOrderedIterator() {
        return EMPTY_ORDERED_ITERATOR;
    }

    public static MapIterator emptyMapIterator() {
        return EMPTY_MAP_ITERATOR;
    }

    public static OrderedMapIterator emptyOrderedMapIterator() {
        return EMPTY_ORDERED_MAP_ITERATOR;
    }

    public static ResettableIterator singletonIterator(Object obj) {
        return new SingletonIterator(obj);
    }

    public static ListIterator singletonListIterator(Object obj) {
        return new SingletonListIterator(obj);
    }

    public static ResettableIterator arrayIterator(Object[] objArr) {
        return new ObjectArrayIterator(objArr);
    }

    public static ResettableIterator arrayIterator(Object obj) {
        return new ArrayIterator(obj);
    }

    public static ResettableIterator arrayIterator(Object[] objArr, int i) {
        return new ObjectArrayIterator(objArr, i);
    }

    public static ResettableIterator arrayIterator(Object obj, int i) {
        return new ArrayIterator(obj, i);
    }

    public static ResettableIterator arrayIterator(Object[] objArr, int i, int i2) {
        return new ObjectArrayIterator(objArr, i, i2);
    }

    public static ResettableIterator arrayIterator(Object obj, int i, int i2) {
        return new ArrayIterator(obj, i, i2);
    }

    public static ResettableListIterator arrayListIterator(Object[] objArr) {
        return new ObjectArrayListIterator(objArr);
    }

    public static ResettableListIterator arrayListIterator(Object obj) {
        return new ArrayListIterator(obj);
    }

    public static ResettableListIterator arrayListIterator(Object[] objArr, int i) {
        return new ObjectArrayListIterator(objArr, i);
    }

    public static ResettableListIterator arrayListIterator(Object obj, int i) {
        return new ArrayListIterator(obj, i);
    }

    public static ResettableListIterator arrayListIterator(Object[] objArr, int i, int i2) {
        return new ObjectArrayListIterator(objArr, i, i2);
    }

    public static ResettableListIterator arrayListIterator(Object obj, int i, int i2) {
        return new ArrayListIterator(obj, i, i2);
    }

    public static Iterator unmodifiableIterator(Iterator it) {
        return UnmodifiableIterator.decorate(it);
    }

    public static ListIterator unmodifiableListIterator(ListIterator listIterator) {
        return UnmodifiableListIterator.decorate(listIterator);
    }

    public static MapIterator unmodifiableMapIterator(MapIterator mapIterator) {
        return UnmodifiableMapIterator.decorate(mapIterator);
    }

    public static Iterator chainedIterator(Iterator it, Iterator it2) {
        return new IteratorChain(it, it2);
    }

    public static Iterator chainedIterator(Iterator[] itArr) {
        return new IteratorChain(itArr);
    }

    public static Iterator chainedIterator(Collection collection) {
        return new IteratorChain(collection);
    }

    public static Iterator collatedIterator(Comparator comparator, Iterator it, Iterator it2) {
        return new CollatingIterator(comparator, it, it2);
    }

    public static Iterator collatedIterator(Comparator comparator, Iterator[] itArr) {
        return new CollatingIterator(comparator, itArr);
    }

    public static Iterator collatedIterator(Comparator comparator, Collection collection) {
        return new CollatingIterator(comparator, collection);
    }

    public static Iterator transformedIterator(Iterator it, Transformer transformer) {
        if (it != null) {
            if (transformer == null) {
                throw new NullPointerException("Transformer must not be null");
            }
            return new TransformIterator(it, transformer);
        }
        throw new NullPointerException("Iterator must not be null");
    }

    public static Iterator filteredIterator(Iterator it, Predicate predicate) {
        if (it != null) {
            if (predicate == null) {
                throw new NullPointerException("Predicate must not be null");
            }
            return new FilterIterator(it, predicate);
        }
        throw new NullPointerException("Iterator must not be null");
    }

    public static ListIterator filteredListIterator(ListIterator listIterator, Predicate predicate) {
        if (listIterator != null) {
            if (predicate == null) {
                throw new NullPointerException("Predicate must not be null");
            }
            return new FilterListIterator(listIterator, predicate);
        }
        throw new NullPointerException("ListIterator must not be null");
    }

    public static ResettableIterator loopingIterator(Collection collection) {
        if (collection == null) {
            throw new NullPointerException("Collection must not be null");
        }
        return new LoopingIterator(collection);
    }

    public static Iterator asIterator(Enumeration enumeration) {
        if (enumeration == null) {
            throw new NullPointerException("Enumeration must not be null");
        }
        return new EnumerationIterator(enumeration);
    }

    public static Iterator asIterator(Enumeration enumeration, Collection collection) {
        if (enumeration != null) {
            if (collection == null) {
                throw new NullPointerException("Collection must not be null");
            }
            return new EnumerationIterator(enumeration, collection);
        }
        throw new NullPointerException("Enumeration must not be null");
    }

    public static Enumeration asEnumeration(Iterator it) {
        if (it == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        return new IteratorEnumeration(it);
    }

    public static ListIterator toListIterator(Iterator it) {
        if (it == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        return new ListIteratorWrapper(it);
    }

    public static Object[] toArray(Iterator it) {
        if (it == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        return toList(it, 100).toArray();
    }

    public static Object[] toArray(Iterator it, Class cls) {
        if (it != null) {
            if (cls == null) {
                throw new NullPointerException("Array class must not be null");
            }
            List list = toList(it, 100);
            return list.toArray((Object[]) Array.newInstance(cls, list.size()));
        }
        throw new NullPointerException("Iterator must not be null");
    }

    public static List toList(Iterator it) {
        return toList(it, 10);
    }

    public static List toList(Iterator it, int i) {
        if (it != null) {
            if (i < 1) {
                throw new IllegalArgumentException("Estimated size must be greater than 0");
            }
            ArrayList arrayList = new ArrayList(i);
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            return arrayList;
        }
        throw new NullPointerException("Iterator must not be null");
    }

    public static Iterator getIterator(Object obj) {
        if (obj == null) {
            return emptyIterator();
        }
        if (obj instanceof Iterator) {
            return (Iterator) obj;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).iterator();
        }
        if (obj instanceof Object[]) {
            return new ObjectArrayIterator((Object[]) obj);
        }
        if (obj instanceof Enumeration) {
            return new EnumerationIterator((Enumeration) obj);
        }
        if (obj instanceof Map) {
            return ((Map) obj).values().iterator();
        }
        if (obj instanceof Dictionary) {
            return new EnumerationIterator(((Dictionary) obj).elements());
        }
        if (obj != null && obj.getClass().isArray()) {
            return new ArrayIterator(obj);
        }
        try {
            Method method = obj.getClass().getMethod("iterator", null);
            Class cls = class$java$util$Iterator;
            if (cls == null) {
                cls = class$("java.util.Iterator");
                class$java$util$Iterator = cls;
            }
            if (cls.isAssignableFrom(method.getReturnType())) {
                Iterator it = (Iterator) method.invoke(obj, null);
                if (it != null) {
                    return it;
                }
            }
        } catch (Exception unused) {
        }
        return singletonIterator(obj);
    }

    /* loaded from: classes5.dex */
    static class EmptyIterator implements ResettableIterator {
        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // org.apache.commons.collections.ResettableIterator
        public void reset() {
        }

        EmptyIterator() {
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException("Iterator contains no elements");
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new IllegalStateException("Iterator contains no elements");
        }
    }

    /* loaded from: classes5.dex */
    static class EmptyListIterator extends EmptyIterator implements ResettableListIterator {
        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return false;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return 0;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return -1;
        }

        EmptyListIterator() {
        }

        @Override // java.util.ListIterator
        public Object previous() {
            throw new NoSuchElementException("Iterator contains no elements");
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException("add() not supported for empty Iterator");
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new IllegalStateException("Iterator contains no elements");
        }
    }

    /* loaded from: classes5.dex */
    static class EmptyOrderedIterator extends EmptyIterator implements OrderedIterator, ResettableIterator {
        @Override // org.apache.commons.collections.OrderedIterator
        public boolean hasPrevious() {
            return false;
        }

        EmptyOrderedIterator() {
        }

        @Override // org.apache.commons.collections.OrderedIterator
        public Object previous() {
            throw new NoSuchElementException("Iterator contains no elements");
        }
    }

    /* loaded from: classes5.dex */
    static class EmptyMapIterator extends EmptyIterator implements MapIterator, ResettableIterator {
        EmptyMapIterator() {
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object getKey() {
            throw new IllegalStateException("Iterator contains no elements");
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object getValue() {
            throw new IllegalStateException("Iterator contains no elements");
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object setValue(Object obj) {
            throw new IllegalStateException("Iterator contains no elements");
        }
    }

    /* loaded from: classes5.dex */
    static class EmptyOrderedMapIterator extends EmptyMapIterator implements OrderedMapIterator, ResettableIterator {
        @Override // org.apache.commons.collections.OrderedMapIterator, org.apache.commons.collections.OrderedIterator
        public boolean hasPrevious() {
            return false;
        }

        EmptyOrderedMapIterator() {
        }

        @Override // org.apache.commons.collections.OrderedMapIterator, org.apache.commons.collections.OrderedIterator
        public Object previous() {
            throw new NoSuchElementException("Iterator contains no elements");
        }
    }
}
