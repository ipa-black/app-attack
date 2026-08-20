package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public final class y {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a<T> extends com.applovin.exoplayer2.common.a.a<T> {

        /* renamed from: a  reason: collision with root package name */
        static final ay<Object> f1868a = new a(new Object[0], 0, 0, 0);

        /* renamed from: b  reason: collision with root package name */
        private final T[] f1869b;

        /* renamed from: c  reason: collision with root package name */
        private final int f1870c;

        a(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.f1869b = tArr;
            this.f1870c = i;
        }

        @Override // com.applovin.exoplayer2.common.a.a
        protected T a(int i) {
            return this.f1869b[this.f1870c + i];
        }
    }

    /* loaded from: classes.dex */
    private enum b implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            j.a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ax<T> a() {
        return b();
    }

    public static <T> ax<T> a(@NullableDecl final T t) {
        return new ax<T>() { // from class: com.applovin.exoplayer2.common.a.y.1

            /* renamed from: a  reason: collision with root package name */
            boolean f1866a;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f1866a;
            }

            @Override // java.util.Iterator
            public T next() {
                if (this.f1866a) {
                    throw new NoSuchElementException();
                }
                this.f1866a = true;
                return (T) t;
            }
        };
    }

    @NullableDecl
    public static <T> T a(Iterator<? extends T> it, @NullableDecl T t) {
        return it.hasNext() ? it.next() : t;
    }

    public static String a(Iterator<?> it) {
        StringBuilder sb = new StringBuilder("[");
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it.next());
            z = false;
        }
        return sb.append(']').toString();
    }

    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        Preconditions.checkNotNull(collection);
        Preconditions.checkNotNull(it);
        boolean z = false;
        while (it.hasNext()) {
            z |= collection.add(it.next());
        }
        return z;
    }

    public static boolean a(Iterator<?> it, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.util.Iterator<?> r3, java.util.Iterator<?> r4) {
        /*
        L0:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L1d
            boolean r0 = r4.hasNext()
            r1 = 0
            if (r0 != 0) goto Le
            return r1
        Le:
            java.lang.Object r0 = r3.next()
            java.lang.Object r2 = r4.next()
            boolean r0 = com.applovin.exoplayer2.common.base.Objects.equal(r0, r2)
            if (r0 != 0) goto L0
            return r1
        L1d:
            boolean r3 = r4.hasNext()
            r3 = r3 ^ 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.common.a.y.a(java.util.Iterator, java.util.Iterator):boolean");
    }

    static <T> ay<T> b() {
        return (ay<T>) a.f1868a;
    }

    public static <T> T b(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NullableDecl
    public static <T> T c(Iterator<T> it) {
        if (it.hasNext()) {
            T next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Iterator<T> c() {
        return b.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(Iterator<?> it) {
        Preconditions.checkNotNull(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }
}
