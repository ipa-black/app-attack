package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.a.q;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public abstract class u<K, V> implements Serializable, Map<K, V> {

    /* renamed from: a  reason: collision with root package name */
    static final Map.Entry<?, ?>[] f1843a = new Map.Entry[0];
    @LazyInit

    /* renamed from: b  reason: collision with root package name */
    private transient w<Map.Entry<K, V>> f1844b;
    @LazyInit

    /* renamed from: c  reason: collision with root package name */
    private transient w<K> f1845c;
    @LazyInit

    /* renamed from: d  reason: collision with root package name */
    private transient q<V> f1846d;

    /* loaded from: classes.dex */
    public static class a<K, V> {
        @MonotonicNonNullDecl

        /* renamed from: a  reason: collision with root package name */
        Comparator<? super V> f1847a;

        /* renamed from: b  reason: collision with root package name */
        Object[] f1848b;

        /* renamed from: c  reason: collision with root package name */
        int f1849c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1850d;

        public a() {
            this(4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i) {
            this.f1848b = new Object[i * 2];
            this.f1849c = 0;
            this.f1850d = false;
        }

        private void a(int i) {
            int i2 = i * 2;
            Object[] objArr = this.f1848b;
            if (i2 > objArr.length) {
                this.f1848b = Arrays.copyOf(objArr, q.b.a(objArr.length, i2));
                this.f1850d = false;
            }
        }

        public a<K, V> a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                a(this.f1849c + ((Collection) iterable).size());
            }
            for (Map.Entry<? extends K, ? extends V> entry : iterable) {
                a(entry);
            }
            return this;
        }

        public a<K, V> a(K k, V v) {
            a(this.f1849c + 1);
            j.a(k, v);
            Object[] objArr = this.f1848b;
            int i = this.f1849c;
            objArr[i * 2] = k;
            objArr[(i * 2) + 1] = v;
            this.f1849c = i + 1;
            return this;
        }

        public a<K, V> a(Map.Entry<? extends K, ? extends V> entry) {
            return a(entry.getKey(), entry.getValue());
        }

        public u<K, V> a() {
            b();
            this.f1850d = true;
            return al.a(this.f1849c, this.f1848b);
        }

        void b() {
            int i;
            if (this.f1847a != null) {
                if (this.f1850d) {
                    this.f1848b = Arrays.copyOf(this.f1848b, this.f1849c * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.f1849c];
                int i2 = 0;
                while (true) {
                    i = this.f1849c;
                    if (i2 >= i) {
                        break;
                    }
                    Object[] objArr = this.f1848b;
                    int i3 = i2 * 2;
                    entryArr[i2] = new AbstractMap.SimpleImmutableEntry(objArr[i3], objArr[i3 + 1]);
                    i2++;
                }
                Arrays.sort(entryArr, 0, i, ai.a(this.f1847a).a(ab.b()));
                for (int i4 = 0; i4 < this.f1849c; i4++) {
                    int i5 = i4 * 2;
                    this.f1848b[i5] = entryArr[i4].getKey();
                    this.f1848b[i5 + 1] = entryArr[i4].getValue();
                }
            }
        }
    }

    public static <K, V> u<K, V> a() {
        return (u<K, V>) al.f1719b;
    }

    public static <K, V> u<K, V> a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        a aVar = new a(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        aVar.a(iterable);
        return aVar.a();
    }

    public static <K, V> u<K, V> a(Map<? extends K, ? extends V> map) {
        if ((map instanceof u) && !(map instanceof SortedMap)) {
            u<K, V> uVar = (u) map;
            if (!uVar.i()) {
                return uVar;
            }
        }
        return a(map.entrySet());
    }

    public static <K, V> a<K, V> b() {
        return new a<>();
    }

    @Override // java.util.Map
    /* renamed from: c */
    public w<Map.Entry<K, V>> entrySet() {
        w<Map.Entry<K, V>> wVar = this.f1844b;
        if (wVar == null) {
            w<Map.Entry<K, V>> d2 = d();
            this.f1844b = d2;
            return d2;
        }
        return wVar;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    abstract w<Map.Entry<K, V>> d();

    @Override // java.util.Map
    /* renamed from: e */
    public w<K> keySet() {
        w<K> wVar = this.f1845c;
        if (wVar == null) {
            w<K> f2 = f();
            this.f1845c = f2;
            return f2;
        }
        return wVar;
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        return ab.d(this, obj);
    }

    abstract w<K> f();

    @Override // java.util.Map
    /* renamed from: g */
    public q<V> values() {
        q<V> qVar = this.f1846d;
        if (qVar == null) {
            q<V> h2 = h();
            this.f1846d = h2;
            return h2;
        }
        return qVar;
    }

    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    abstract q<V> h();

    @Override // java.util.Map
    public int hashCode() {
        return aq.a(entrySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean i();

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return ab.a(this);
    }
}
