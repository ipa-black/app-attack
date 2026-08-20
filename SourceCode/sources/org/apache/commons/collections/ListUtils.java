package org.apache.commons.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.collections.list.FixedSizeList;
import org.apache.commons.collections.list.LazyList;
import org.apache.commons.collections.list.PredicatedList;
import org.apache.commons.collections.list.SynchronizedList;
import org.apache.commons.collections.list.TransformedList;
import org.apache.commons.collections.list.TypedList;
import org.apache.commons.collections.list.UnmodifiableList;
/* loaded from: classes5.dex */
public class ListUtils {
    public static final List EMPTY_LIST = Collections.EMPTY_LIST;

    public static List intersection(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (list.contains(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static List subtract(List list, List list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Object obj : list2) {
            arrayList.remove(obj);
        }
        return arrayList;
    }

    public static List sum(List list, List list2) {
        return subtract(union(list, list2), intersection(list, list2));
    }

    public static List union(List list, List list2) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    public static boolean isEqualList(Collection collection, Collection collection2) {
        boolean equals;
        if (collection == collection2) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        Iterator it = collection.iterator();
        Iterator it2 = collection2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Object next = it.next();
            Object next2 = it2.next();
            if (next != null) {
                equals = next.equals(next2);
                continue;
            } else if (next2 == null) {
                equals = true;
                continue;
            } else {
                equals = false;
                continue;
            }
            if (!equals) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public static int hashCodeForList(Collection collection) {
        if (collection == null) {
            return 0;
        }
        Iterator it = collection.iterator();
        int i = 1;
        while (it.hasNext()) {
            Object next = it.next();
            i = (i * 31) + (next == null ? 0 : next.hashCode());
        }
        return i;
    }

    public static List synchronizedList(List list) {
        return SynchronizedList.decorate(list);
    }

    public static List unmodifiableList(List list) {
        return UnmodifiableList.decorate(list);
    }

    public static List predicatedList(List list, Predicate predicate) {
        return PredicatedList.decorate(list, predicate);
    }

    public static List typedList(List list, Class cls) {
        return TypedList.decorate(list, cls);
    }

    public static List transformedList(List list, Transformer transformer) {
        return TransformedList.decorate(list, transformer);
    }

    public static List lazyList(List list, Factory factory) {
        return LazyList.decorate(list, factory);
    }

    public static List fixedSizeList(List list) {
        return FixedSizeList.decorate(list);
    }
}
