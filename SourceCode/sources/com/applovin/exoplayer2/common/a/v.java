package com.applovin.exoplayer2.common.a;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public abstract class v<K, V> extends g<K, V> implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    final transient u<K, ? extends q<V>> f1851b;

    /* renamed from: c  reason: collision with root package name */
    final transient int f1852c;

    /* loaded from: classes.dex */
    public static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        Map<K, Collection<V>> f1860a = aj.a();
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        Comparator<? super K> f1861b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        Comparator<? super V> f1862c;

        public a<K, V> b(K k, Iterable<? extends V> iterable) {
            if (k != null) {
                Collection<V> collection = this.f1860a.get(k);
                Iterator<? extends V> it = iterable.iterator();
                if (collection != null) {
                    while (it.hasNext()) {
                        V next = it.next();
                        j.a(k, next);
                        collection.add(next);
                    }
                    return this;
                } else if (it.hasNext()) {
                    Collection<V> c2 = c();
                    while (it.hasNext()) {
                        V next2 = it.next();
                        j.a(k, next2);
                        c2.add(next2);
                    }
                    this.f1860a.put(k, c2);
                    return this;
                } else {
                    return this;
                }
            }
            throw new NullPointerException("null key in entry: null=" + x.a(iterable));
        }

        public a<K, V> b(K k, V... vArr) {
            return b((a<K, V>) k, Arrays.asList(vArr));
        }

        public v<K, V> b() {
            Collection entrySet = this.f1860a.entrySet();
            Comparator<? super K> comparator = this.f1861b;
            if (comparator != null) {
                entrySet = ai.a(comparator).c().a(entrySet);
            }
            return t.a(entrySet, (Comparator) this.f1862c);
        }

        Collection<V> c() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b<K, V> extends q<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final v<K, V> f1863a;

        b(v<K, V> vVar) {
            this.f1863a = vVar;
        }

        @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public ax<Map.Entry<K, V>> iterator() {
            return this.f1863a.m();
        }

        @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f1863a.b(entry.getKey(), entry.getValue());
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.q
        public boolean f() {
            return this.f1863a.g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f1863a.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c<K, V> extends q<V> {

        /* renamed from: a  reason: collision with root package name */
        private final transient v<K, V> f1864a;

        c(v<K, V> vVar) {
            this.f1864a = vVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.q
        public int a(Object[] objArr, int i) {
            ax<? extends q<V>> it = this.f1864a.f1851b.values().iterator();
            while (it.hasNext()) {
                i = it.next().a(objArr, i);
            }
            return i;
        }

        @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public ax<V> iterator() {
            return this.f1864a.j();
        }

        @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return this.f1864a.d(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.q
        public boolean f() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f1864a.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(u<K, ? extends q<V>> uVar, int i) {
        this.f1851b = uVar;
        this.f1852c = i;
    }

    @Override // com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    @Deprecated
    public boolean a(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    public /* bridge */ /* synthetic */ boolean b(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.b(obj, obj2);
    }

    @Override // com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    @Deprecated
    public boolean c(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    public int d() {
        return this.f1852c;
    }

    @Override // com.applovin.exoplayer2.common.a.f
    public boolean d(@NullableDecl Object obj) {
        return obj != null && super.d(obj);
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    /* renamed from: e */
    public abstract q<V> b(K k);

    @Override // com.applovin.exoplayer2.common.a.ac
    @Deprecated
    public void e() {
        throw new UnsupportedOperationException();
    }

    @Override // com.applovin.exoplayer2.common.a.f
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.applovin.exoplayer2.common.a.f
    Set<K> f() {
        throw new AssertionError("unreachable");
    }

    boolean g() {
        return this.f1851b.i();
    }

    @Override // com.applovin.exoplayer2.common.a.f
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.applovin.exoplayer2.common.a.f
    Map<K, Collection<V>> n() {
        throw new AssertionError("should never be called");
    }

    @Override // com.applovin.exoplayer2.common.a.f
    /* renamed from: o */
    public w<K> p() {
        return this.f1851b.keySet();
    }

    @Override // com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    /* renamed from: q */
    public u<K, Collection<V>> b() {
        return (u<K, ? extends q<V>>) this.f1851b;
    }

    @Override // com.applovin.exoplayer2.common.a.f
    /* renamed from: r */
    public q<Map.Entry<K, V>> k() {
        return (q) super.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.f
    /* renamed from: s */
    public q<Map.Entry<K, V>> l() {
        return new b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.f
    /* renamed from: t */
    public ax<Map.Entry<K, V>> m() {
        return new ax<Map.Entry<K, V>>() { // from class: com.applovin.exoplayer2.common.a.v.1

            /* renamed from: a  reason: collision with root package name */
            final Iterator<? extends Map.Entry<K, ? extends q<V>>> f1853a;

            /* renamed from: b  reason: collision with root package name */
            K f1854b = null;

            /* renamed from: c  reason: collision with root package name */
            Iterator<V> f1855c = y.a();

            {
                this.f1853a = v.this.f1851b.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<K, V> next() {
                if (!this.f1855c.hasNext()) {
                    Map.Entry<K, ? extends q<V>> next = this.f1853a.next();
                    this.f1854b = next.getKey();
                    this.f1855c = next.getValue().iterator();
                }
                return ab.a(this.f1854b, this.f1855c.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f1855c.hasNext() || this.f1853a.hasNext();
            }
        };
    }

    @Override // com.applovin.exoplayer2.common.a.f
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    /* renamed from: u */
    public q<V> h() {
        return (q) super.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.f
    /* renamed from: v */
    public q<V> i() {
        return new c(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.f
    /* renamed from: w */
    public ax<V> j() {
        return new ax<V>() { // from class: com.applovin.exoplayer2.common.a.v.2

            /* renamed from: a  reason: collision with root package name */
            Iterator<? extends q<V>> f1857a;

            /* renamed from: b  reason: collision with root package name */
            Iterator<V> f1858b = y.a();

            {
                this.f1857a = v.this.f1851b.values().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f1858b.hasNext() || this.f1857a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                if (!this.f1858b.hasNext()) {
                    this.f1858b = this.f1857a.next().iterator();
                }
                return this.f1858b.next();
            }
        };
    }
}
