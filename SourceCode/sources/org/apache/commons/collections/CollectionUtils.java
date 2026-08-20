package org.apache.commons.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.apache.commons.collections.collection.PredicatedCollection;
import org.apache.commons.collections.collection.SynchronizedCollection;
import org.apache.commons.collections.collection.TransformedCollection;
import org.apache.commons.collections.collection.TypedCollection;
import org.apache.commons.collections.collection.UnmodifiableBoundedCollection;
import org.apache.commons.collections.collection.UnmodifiableCollection;
/* loaded from: classes5.dex */
public class CollectionUtils {
    private static Integer INTEGER_ONE = new Integer(1);
    public static final Collection EMPTY_COLLECTION = UnmodifiableCollection.decorate(new ArrayList());

    public static Collection union(Collection collection, Collection collection2) {
        ArrayList arrayList = new ArrayList();
        Map cardinalityMap = getCardinalityMap(collection);
        Map cardinalityMap2 = getCardinalityMap(collection2);
        HashSet hashSet = new HashSet(collection);
        hashSet.addAll(collection2);
        for (Object obj : hashSet) {
            int max = Math.max(getFreq(obj, cardinalityMap), getFreq(obj, cardinalityMap2));
            for (int i = 0; i < max; i++) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Collection intersection(Collection collection, Collection collection2) {
        ArrayList arrayList = new ArrayList();
        Map cardinalityMap = getCardinalityMap(collection);
        Map cardinalityMap2 = getCardinalityMap(collection2);
        HashSet hashSet = new HashSet(collection);
        hashSet.addAll(collection2);
        for (Object obj : hashSet) {
            int min = Math.min(getFreq(obj, cardinalityMap), getFreq(obj, cardinalityMap2));
            for (int i = 0; i < min; i++) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Collection disjunction(Collection collection, Collection collection2) {
        ArrayList arrayList = new ArrayList();
        Map cardinalityMap = getCardinalityMap(collection);
        Map cardinalityMap2 = getCardinalityMap(collection2);
        HashSet hashSet = new HashSet(collection);
        hashSet.addAll(collection2);
        for (Object obj : hashSet) {
            int max = Math.max(getFreq(obj, cardinalityMap), getFreq(obj, cardinalityMap2)) - Math.min(getFreq(obj, cardinalityMap), getFreq(obj, cardinalityMap2));
            for (int i = 0; i < max; i++) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Collection subtract(Collection collection, Collection collection2) {
        ArrayList arrayList = new ArrayList(collection);
        for (Object obj : collection2) {
            arrayList.remove(obj);
        }
        return arrayList;
    }

    public static boolean containsAny(Collection collection, Collection collection2) {
        if (collection.size() < collection2.size()) {
            for (Object obj : collection) {
                if (collection2.contains(obj)) {
                    return true;
                }
            }
            return false;
        }
        for (Object obj2 : collection2) {
            if (collection.contains(obj2)) {
                return true;
            }
        }
        return false;
    }

    public static Map getCardinalityMap(Collection collection) {
        HashMap hashMap = new HashMap();
        for (Object obj : collection) {
            Integer num = (Integer) hashMap.get(obj);
            if (num == null) {
                hashMap.put(obj, INTEGER_ONE);
            } else {
                hashMap.put(obj, new Integer(num.intValue() + 1));
            }
        }
        return hashMap;
    }

    public static boolean isSubCollection(Collection collection, Collection collection2) {
        Map cardinalityMap = getCardinalityMap(collection);
        Map cardinalityMap2 = getCardinalityMap(collection2);
        for (Object obj : collection) {
            if (getFreq(obj, cardinalityMap) > getFreq(obj, cardinalityMap2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isProperSubCollection(Collection collection, Collection collection2) {
        return collection.size() < collection2.size() && isSubCollection(collection, collection2);
    }

    public static boolean isEqualCollection(Collection collection, Collection collection2) {
        if (collection.size() != collection2.size()) {
            return false;
        }
        Map cardinalityMap = getCardinalityMap(collection);
        Map cardinalityMap2 = getCardinalityMap(collection2);
        if (cardinalityMap.size() != cardinalityMap2.size()) {
            return false;
        }
        for (Object obj : cardinalityMap.keySet()) {
            if (getFreq(obj, cardinalityMap) != getFreq(obj, cardinalityMap2)) {
                return false;
            }
        }
        return true;
    }

    public static int cardinality(Object obj, Collection collection) {
        int i = 0;
        if (obj == null) {
            for (Object obj2 : collection) {
                if (obj2 == null) {
                    i++;
                }
            }
        } else {
            for (Object obj3 : collection) {
                if (obj.equals(obj3)) {
                    i++;
                }
            }
        }
        return i;
    }

    public static Object find(Collection collection, Predicate predicate) {
        if (collection == null || predicate == null) {
            return null;
        }
        for (Object obj : collection) {
            if (predicate.evaluate(obj)) {
                return obj;
            }
        }
        return null;
    }

    public static void forAllDo(Collection collection, Closure closure) {
        if (collection == null || closure == null) {
            return;
        }
        for (Object obj : collection) {
            closure.execute(obj);
        }
    }

    public static void filter(Collection collection, Predicate predicate) {
        if (collection == null || predicate == null) {
            return;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!predicate.evaluate(it.next())) {
                it.remove();
            }
        }
    }

    public static void transform(Collection collection, Transformer transformer) {
        if (collection == null || transformer == null) {
            return;
        }
        if (collection instanceof List) {
            ListIterator listIterator = ((List) collection).listIterator();
            while (listIterator.hasNext()) {
                listIterator.set(transformer.transform(listIterator.next()));
            }
            return;
        }
        Collection collect = collect(collection, transformer);
        collection.clear();
        collection.addAll(collect);
    }

    public static int countMatches(Collection collection, Predicate predicate) {
        int i = 0;
        if (collection != null && predicate != null) {
            for (Object obj : collection) {
                if (predicate.evaluate(obj)) {
                    i++;
                }
            }
        }
        return i;
    }

    public static boolean exists(Collection collection, Predicate predicate) {
        if (collection == null || predicate == null) {
            return false;
        }
        for (Object obj : collection) {
            if (predicate.evaluate(obj)) {
                return true;
            }
        }
        return false;
    }

    public static Collection select(Collection collection, Predicate predicate) {
        ArrayList arrayList = new ArrayList(collection.size());
        select(collection, predicate, arrayList);
        return arrayList;
    }

    public static void select(Collection collection, Predicate predicate, Collection collection2) {
        if (collection == null || predicate == null) {
            return;
        }
        for (Object obj : collection) {
            if (predicate.evaluate(obj)) {
                collection2.add(obj);
            }
        }
    }

    public static Collection selectRejected(Collection collection, Predicate predicate) {
        ArrayList arrayList = new ArrayList(collection.size());
        selectRejected(collection, predicate, arrayList);
        return arrayList;
    }

    public static void selectRejected(Collection collection, Predicate predicate, Collection collection2) {
        if (collection == null || predicate == null) {
            return;
        }
        for (Object obj : collection) {
            if (!predicate.evaluate(obj)) {
                collection2.add(obj);
            }
        }
    }

    public static Collection collect(Collection collection, Transformer transformer) {
        ArrayList arrayList = new ArrayList(collection.size());
        collect(collection, transformer, arrayList);
        return arrayList;
    }

    public static Collection collect(Iterator it, Transformer transformer) {
        ArrayList arrayList = new ArrayList();
        collect(it, transformer, arrayList);
        return arrayList;
    }

    public static Collection collect(Collection collection, Transformer transformer, Collection collection2) {
        return collection != null ? collect(collection.iterator(), transformer, collection2) : collection2;
    }

    public static Collection collect(Iterator it, Transformer transformer, Collection collection) {
        if (it != null && transformer != null) {
            while (it.hasNext()) {
                collection.add(transformer.transform(it.next()));
            }
        }
        return collection;
    }

    public static void addAll(Collection collection, Iterator it) {
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }

    public static void addAll(Collection collection, Enumeration enumeration) {
        while (enumeration.hasMoreElements()) {
            collection.add(enumeration.nextElement());
        }
    }

    public static void addAll(Collection collection, Object[] objArr) {
        for (Object obj : objArr) {
            collection.add(obj);
        }
    }

    public static Object index(Object obj, int i) {
        return index(obj, new Integer(i));
    }

    public static Object index(Object obj, Object obj2) {
        boolean z = obj instanceof Map;
        if (z) {
            Map map = (Map) obj;
            if (map.containsKey(obj2)) {
                return map.get(obj2);
            }
        }
        int intValue = obj2 instanceof Integer ? ((Integer) obj2).intValue() : -1;
        if (intValue < 0) {
            return obj;
        }
        if (z) {
            return index(((Map) obj).keySet().iterator(), intValue);
        }
        if (obj instanceof List) {
            return ((List) obj).get(intValue);
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj)[intValue];
        }
        if (obj instanceof Enumeration) {
            Enumeration enumeration = (Enumeration) obj;
            while (enumeration.hasMoreElements()) {
                intValue--;
                if (intValue == -1) {
                    return enumeration.nextElement();
                }
                enumeration.nextElement();
            }
            return obj;
        } else if (obj instanceof Iterator) {
            return index((Iterator) obj, intValue);
        } else {
            return obj instanceof Collection ? index(((Collection) obj).iterator(), intValue) : obj;
        }
    }

    private static Object index(Iterator it, int i) {
        while (it.hasNext()) {
            i--;
            if (i == -1) {
                return it.next();
            }
            it.next();
        }
        return it;
    }

    public static Object get(Object obj, int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Index cannot be negative.");
        }
        if (obj instanceof Map) {
            return get(((Map) obj).entrySet().iterator(), i);
        }
        if (obj instanceof List) {
            return ((List) obj).get(i);
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj)[i];
        }
        if (obj instanceof Enumeration) {
            Enumeration enumeration = (Enumeration) obj;
            while (enumeration.hasMoreElements()) {
                i--;
                if (i == -1) {
                    return enumeration.nextElement();
                }
                enumeration.nextElement();
            }
            throw new IndexOutOfBoundsException("Entry does not exist.");
        } else if (obj instanceof Iterator) {
            return get((Iterator) obj, i);
        } else {
            if (obj instanceof Collection) {
                return get(((Collection) obj).iterator(), i);
            }
            throw new IllegalArgumentException("Unsupported object type.");
        }
    }

    private static Object get(Iterator it, int i) {
        while (it.hasNext()) {
            i--;
            if (i == -1) {
                return it.next();
            }
            it.next();
        }
        throw new IndexOutOfBoundsException("Entry does not exist.");
    }

    public static void reverseArray(Object[] objArr) {
        int length = objArr.length - 1;
        for (int i = 0; length > i; i++) {
            Object obj = objArr[length];
            objArr[length] = objArr[i];
            objArr[i] = obj;
            length--;
        }
    }

    private static final int getFreq(Object obj, Map map) {
        Integer num = (Integer) map.get(obj);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public static boolean isFull(Collection collection) {
        if (collection == null) {
            throw new NullPointerException("The collection must not be null");
        }
        if (collection instanceof BoundedCollection) {
            return ((BoundedCollection) collection).isFull();
        }
        try {
            return UnmodifiableBoundedCollection.decorateUsing(collection).isFull();
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static int maxSize(Collection collection) {
        if (collection == null) {
            throw new NullPointerException("The collection must not be null");
        }
        if (collection instanceof BoundedCollection) {
            return ((BoundedCollection) collection).maxSize();
        }
        try {
            return UnmodifiableBoundedCollection.decorateUsing(collection).maxSize();
        } catch (IllegalArgumentException unused) {
            return -1;
        }
    }

    public static Collection synchronizedCollection(Collection collection) {
        return SynchronizedCollection.decorate(collection);
    }

    public static Collection unmodifiableCollection(Collection collection) {
        return UnmodifiableCollection.decorate(collection);
    }

    public static Collection predicatedCollection(Collection collection, Predicate predicate) {
        return PredicatedCollection.decorate(collection, predicate);
    }

    public static Collection typedCollection(Collection collection, Class cls) {
        return TypedCollection.decorate(collection, cls);
    }

    public static Collection transformedCollection(Collection collection, Transformer transformer) {
        return TransformedCollection.decorate(collection, transformer);
    }
}
