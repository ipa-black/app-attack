package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.a.ae;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
abstract class f<K, V> implements ac<K, V> {
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    private transient Collection<Map.Entry<K, V>> f1796a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient Set<K> f1797b;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    private transient Collection<V> f1798c;
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    private transient Map<K, Collection<V>> f1799d;

    /* loaded from: classes.dex */
    class a extends ae.b<K, V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @Override // com.applovin.exoplayer2.common.a.ae.b
        ac<K, V> a() {
            return f.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return f.this.m();
        }
    }

    /* loaded from: classes.dex */
    class b extends f<K, V>.a implements Set<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return aq.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return aq.a(this);
        }
    }

    /* loaded from: classes.dex */
    class c extends AbstractCollection<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            f.this.e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return f.this.d(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return f.this.j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return f.this.d();
        }
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    public boolean a(@NullableDecl K k, @NullableDecl V v) {
        return b(k).add(v);
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    public Map<K, Collection<V>> b() {
        Map<K, Collection<V>> map = this.f1799d;
        if (map == null) {
            Map<K, Collection<V>> n = n();
            this.f1799d = n;
            return n;
        }
        return map;
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    public boolean b(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Collection<V> collection = b().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    public boolean c(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Collection<V> collection = b().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public boolean d(@NullableDecl Object obj) {
        for (Collection<V> collection : b().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(@NullableDecl Object obj) {
        return ae.a(this, obj);
    }

    abstract Set<K> f();

    @Override // com.applovin.exoplayer2.common.a.ac
    public Collection<V> h() {
        Collection<V> collection = this.f1798c;
        if (collection == null) {
            Collection<V> i = i();
            this.f1798c = i;
            return i;
        }
        return collection;
    }

    public int hashCode() {
        return b().hashCode();
    }

    abstract Collection<V> i();

    Iterator<V> j() {
        return ab.b(k().iterator());
    }

    public Collection<Map.Entry<K, V>> k() {
        Collection<Map.Entry<K, V>> collection = this.f1796a;
        if (collection == null) {
            Collection<Map.Entry<K, V>> l = l();
            this.f1796a = l;
            return l;
        }
        return collection;
    }

    abstract Collection<Map.Entry<K, V>> l();

    abstract Iterator<Map.Entry<K, V>> m();

    abstract Map<K, Collection<V>> n();

    public Set<K> p() {
        Set<K> set = this.f1797b;
        if (set == null) {
            Set<K> f2 = f();
            this.f1797b = f2;
            return f2;
        }
        return set;
    }

    public String toString() {
        return b().toString();
    }
}
