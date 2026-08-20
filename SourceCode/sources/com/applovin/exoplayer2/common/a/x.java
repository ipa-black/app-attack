package com.applovin.exoplayer2.common.a;

import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public final class x {
    @NullableDecl
    public static <T> T a(Iterable<? extends T> iterable, @NullableDecl T t) {
        return (T) y.a(iterable.iterator(), t);
    }

    private static <T> T a(List<T> list) {
        return list.get(list.size() - 1);
    }

    public static String a(Iterable<?> iterable) {
        return y.a(iterable.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] b(Iterable<?> iterable) {
        return d(iterable).toArray();
    }

    public static <T> T c(Iterable<T> iterable) {
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                throw new NoSuchElementException();
            }
            return (T) a((List<Object>) list);
        }
        return (T) y.b(iterable.iterator());
    }

    private static <E> Collection<E> d(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : aa.a(iterable.iterator());
    }
}
