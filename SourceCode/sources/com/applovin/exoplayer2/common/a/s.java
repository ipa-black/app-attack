package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.a.q;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public abstract class s<E> extends q<E> implements List<E>, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final ay<Object> f1838a = new b(ak.f1716a, 0);

    /* loaded from: classes.dex */
    public static final class a<E> extends q.a<E> {
        public a() {
            this(4);
        }

        a(int i) {
            super(i);
        }

        public s<E> a() {
            this.f1835c = true;
            return s.b(this.f1833a, this.f1834b);
        }

        @Override // com.applovin.exoplayer2.common.a.q.a
        /* renamed from: b */
        public a<E> a(E e2) {
            super.a((a<E>) e2);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b<E> extends com.applovin.exoplayer2.common.a.a<E> {

        /* renamed from: a  reason: collision with root package name */
        private final s<E> f1839a;

        b(s<E> sVar, int i) {
            super(sVar.size(), i);
            this.f1839a = sVar;
        }

        @Override // com.applovin.exoplayer2.common.a.a
        protected E a(int i) {
            return this.f1839a.get(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends s<E> {

        /* renamed from: a  reason: collision with root package name */
        final transient int f1840a;

        /* renamed from: b  reason: collision with root package name */
        final transient int f1841b;

        c(int i, int i2) {
            this.f1840a = i;
            this.f1841b = i2;
        }

        @Override // com.applovin.exoplayer2.common.a.s, java.util.List
        /* renamed from: a */
        public s<E> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, this.f1841b);
            s sVar = s.this;
            int i3 = this.f1840a;
            return sVar.subList(i + i3, i2 + i3);
        }

        @Override // com.applovin.exoplayer2.common.a.q
        Object[] b() {
            return s.this.b();
        }

        @Override // com.applovin.exoplayer2.common.a.q
        int c() {
            return s.this.c() + this.f1840a;
        }

        @Override // com.applovin.exoplayer2.common.a.q
        int d() {
            return s.this.c() + this.f1840a + this.f1841b;
        }

        @Override // com.applovin.exoplayer2.common.a.q
        boolean f() {
            return true;
        }

        @Override // java.util.List
        public E get(int i) {
            Preconditions.checkElementIndex(i, this.f1841b);
            return s.this.get(i + this.f1840a);
        }

        @Override // com.applovin.exoplayer2.common.a.s, com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.applovin.exoplayer2.common.a.s, java.util.List
        public /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.applovin.exoplayer2.common.a.s, java.util.List
        public /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f1841b;
        }
    }

    public static <E> s<E> a(E e2) {
        return c(e2);
    }

    public static <E> s<E> a(E e2, E e3) {
        return c(e2, e3);
    }

    public static <E> s<E> a(E e2, E e3, E e4, E e5, E e6) {
        return c(e2, e3, e4, e5, e6);
    }

    public static <E> s<E> a(E e2, E e3, E e4, E e5, E e6, E e7) {
        return c(e2, e3, e4, e5, e6, e7);
    }

    public static <E> s<E> a(Collection<? extends E> collection) {
        if (collection instanceof q) {
            s<E> e2 = ((q) collection).e();
            return e2.f() ? b(e2.toArray()) : e2;
        }
        return c(collection.toArray());
    }

    public static <E> s<E> a(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(comparator);
        Object[] b2 = x.b(iterable);
        ah.a(b2);
        Arrays.sort(b2, comparator);
        return b(b2);
    }

    public static <E> s<E> a(E[] eArr) {
        return eArr.length == 0 ? g() : c((Object[]) eArr.clone());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> s<E> b(Object[] objArr) {
        return b(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> s<E> b(Object[] objArr, int i) {
        return i == 0 ? g() : new ak(objArr, i);
    }

    private static <E> s<E> c(Object... objArr) {
        return b(ah.a(objArr));
    }

    public static <E> s<E> g() {
        return (s<E>) ak.f1716a;
    }

    public static <E> a<E> i() {
        return new a<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.q
    public int a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: a */
    public ax<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    /* renamed from: a */
    public ay<E> listIterator(int i) {
        Preconditions.checkPositionIndex(i, size());
        return isEmpty() ? (ay<E>) f1838a : new b(this, i);
    }

    @Override // java.util.List
    /* renamed from: a */
    public s<E> subList(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? g() : b(i, i2);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    s<E> b(int i, int i2) {
        return new c(i, i2 - i);
    }

    @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    public final s<E> e() {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return aa.a(this, obj);
    }

    @Override // java.util.List
    /* renamed from: h */
    public ay<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~((i * 31) + get(i2).hashCode()));
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return aa.b(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return aa.c(this, obj);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e2) {
        throw new UnsupportedOperationException();
    }
}
