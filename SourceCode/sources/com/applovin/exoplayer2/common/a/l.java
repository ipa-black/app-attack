package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l<K, V> extends AbstractMap<K, V> implements Serializable {
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    transient long[] f1805a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    transient Object[] f1806b;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    transient Object[] f1807c;

    /* renamed from: d  reason: collision with root package name */
    transient float f1808d;

    /* renamed from: e  reason: collision with root package name */
    transient int f1809e;
    @MonotonicNonNullDecl

    /* renamed from: f  reason: collision with root package name */
    private transient int[] f1810f;

    /* renamed from: g  reason: collision with root package name */
    private transient int f1811g;

    /* renamed from: h  reason: collision with root package name */
    private transient int f1812h;
    @MonotonicNonNullDecl
    private transient Set<K> i;
    @MonotonicNonNullDecl
    private transient Set<Map.Entry<K, V>> j;
    @MonotonicNonNullDecl
    private transient Collection<V> k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            l.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int a2 = l.this.a(entry.getKey());
                return a2 != -1 && Objects.equal(l.this.f1807c[a2], entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return l.this.f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int a2 = l.this.a(entry.getKey());
                if (a2 == -1 || !Objects.equal(l.this.f1807c[a2], entry.getValue())) {
                    return false;
                }
                l.this.j(a2);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return l.this.f1812h;
        }
    }

    /* loaded from: classes.dex */
    private abstract class b<T> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        int f1817b;

        /* renamed from: c  reason: collision with root package name */
        int f1818c;

        /* renamed from: d  reason: collision with root package name */
        int f1819d;

        private b() {
            this.f1817b = l.this.f1809e;
            this.f1818c = l.this.b();
            this.f1819d = -1;
        }

        private void a() {
            if (l.this.f1809e != this.f1817b) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T a(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1818c >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            if (hasNext()) {
                int i = this.f1818c;
                this.f1819d = i;
                T a2 = a(i);
                this.f1818c = l.this.e(this.f1818c);
                return a2;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            j.a(this.f1819d >= 0);
            this.f1817b++;
            l.this.j(this.f1819d);
            this.f1818c = l.this.a(this.f1818c, this.f1819d);
            this.f1819d = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends AbstractSet<K> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            l.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return l.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return l.this.d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int a2 = l.this.a(obj);
            if (a2 == -1) {
                return false;
            }
            l.this.j(a2);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return l.this.f1812h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class d extends com.applovin.exoplayer2.common.a.e<K, V> {
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        private final K f1823b;

        /* renamed from: c  reason: collision with root package name */
        private int f1824c;

        d(int i) {
            this.f1823b = (K) l.this.f1806b[i];
            this.f1824c = i;
        }

        private void a() {
            int i = this.f1824c;
            if (i == -1 || i >= l.this.size() || !Objects.equal(this.f1823b, l.this.f1806b[this.f1824c])) {
                this.f1824c = l.this.a(this.f1823b);
            }
        }

        @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
        public K getKey() {
            return this.f1823b;
        }

        @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
        public V getValue() {
            a();
            if (this.f1824c == -1) {
                return null;
            }
            return (V) l.this.f1807c[this.f1824c];
        }

        @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
        public V setValue(V v) {
            a();
            if (this.f1824c == -1) {
                l.this.put(this.f1823b, v);
                return null;
            }
            V v2 = (V) l.this.f1807c[this.f1824c];
            l.this.f1807c[this.f1824c] = v;
            return v2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e extends AbstractCollection<V> {
        e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            l.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return l.this.h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return l.this.f1812h;
        }
    }

    l() {
        a(3, 1.0f);
    }

    l(int i) {
        this(i, 1.0f);
    }

    l(int i, float f2) {
        a(i, f2);
    }

    private static int a(long j) {
        return (int) (j >>> 32);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(@NullableDecl Object obj) {
        int a2 = p.a(obj);
        int i = this.f1810f[i() & a2];
        while (i != -1) {
            long j = this.f1805a[i];
            if (a(j) == a2 && Objects.equal(obj, this.f1806b[i])) {
                return i;
            }
            i = b(j);
        }
        return -1;
    }

    private static long a(long j, int i) {
        return (j & (-4294967296L)) | (ArrayUnsignedIntList.MAX_VALUE & i);
    }

    public static <K, V> l<K, V> a() {
        return new l<>();
    }

    public static <K, V> l<K, V> a(int i) {
        return new l<>(i);
    }

    @NullableDecl
    private V a(@NullableDecl Object obj, int i) {
        int i2 = i() & i;
        int i3 = this.f1810f[i2];
        if (i3 == -1) {
            return null;
        }
        int i4 = -1;
        while (true) {
            if (a(this.f1805a[i3]) == i && Objects.equal(obj, this.f1806b[i3])) {
                V v = (V) this.f1807c[i3];
                if (i4 == -1) {
                    this.f1810f[i2] = b(this.f1805a[i3]);
                } else {
                    long[] jArr = this.f1805a;
                    jArr[i4] = a(jArr[i4], b(jArr[i3]));
                }
                d(i3);
                this.f1812h--;
                this.f1809e++;
                return v;
            }
            int b2 = b(this.f1805a[i3]);
            if (b2 == -1) {
                return null;
            }
            i4 = i3;
            i3 = b2;
        }
    }

    private static int b(long j) {
        return (int) j;
    }

    private static int[] f(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private static long[] g(int i) {
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private void h(int i) {
        int length = this.f1805a.length;
        if (i > length) {
            int max = Math.max(1, length >>> 1) + length;
            if (max < 0) {
                max = Integer.MAX_VALUE;
            }
            if (max != length) {
                c(max);
            }
        }
    }

    private int i() {
        return this.f1810f.length - 1;
    }

    private void i(int i) {
        if (this.f1810f.length >= 1073741824) {
            this.f1811g = Integer.MAX_VALUE;
            return;
        }
        int i2 = ((int) (i * this.f1808d)) + 1;
        int[] f2 = f(i);
        long[] jArr = this.f1805a;
        int length = f2.length - 1;
        for (int i3 = 0; i3 < this.f1812h; i3++) {
            int a2 = a(jArr[i3]);
            int i4 = a2 & length;
            int i5 = f2[i4];
            f2[i4] = i3;
            jArr[i3] = (a2 << 32) | (i5 & ArrayUnsignedIntList.MAX_VALUE);
        }
        this.f1811g = i2;
        this.f1810f = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V j(int i) {
        return a(this.f1806b[i], a(this.f1805a[i]));
    }

    int a(int i, int i2) {
        return i - 1;
    }

    void a(int i, float f2) {
        Preconditions.checkArgument(i >= 0, "Initial capacity must be non-negative");
        Preconditions.checkArgument(f2 > 0.0f, "Illegal load factor");
        int a2 = p.a(i, f2);
        this.f1810f = f(a2);
        this.f1808d = f2;
        this.f1806b = new Object[i];
        this.f1807c = new Object[i];
        this.f1805a = g(i);
        this.f1811g = Math.max(1, (int) (a2 * f2));
    }

    void a(int i, @NullableDecl K k, @NullableDecl V v, int i2) {
        this.f1805a[i] = (i2 << 32) | ArrayUnsignedIntList.MAX_VALUE;
        this.f1806b[i] = k;
        this.f1807c[i] = v;
    }

    int b() {
        return isEmpty() ? -1 : 0;
    }

    void b(int i) {
    }

    Set<K> c() {
        return new c();
    }

    void c(int i) {
        this.f1806b = Arrays.copyOf(this.f1806b, i);
        this.f1807c = Arrays.copyOf(this.f1807c, i);
        long[] jArr = this.f1805a;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(copyOf, length, i, -1L);
        }
        this.f1805a = copyOf;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f1809e++;
        Arrays.fill(this.f1806b, 0, this.f1812h, (Object) null);
        Arrays.fill(this.f1807c, 0, this.f1812h, (Object) null);
        Arrays.fill(this.f1810f, -1);
        Arrays.fill(this.f1805a, -1L);
        this.f1812h = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return a(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        for (int i = 0; i < this.f1812h; i++) {
            if (Objects.equal(obj, this.f1807c[i])) {
                return true;
            }
        }
        return false;
    }

    Iterator<K> d() {
        return new l<K, V>.b<K>() { // from class: com.applovin.exoplayer2.common.a.l.1
            @Override // com.applovin.exoplayer2.common.a.l.b
            K a(int i) {
                return (K) l.this.f1806b[i];
            }
        };
    }

    void d(int i) {
        int size = size() - 1;
        if (i >= size) {
            this.f1806b[i] = null;
            this.f1807c[i] = null;
            this.f1805a[i] = -1;
            return;
        }
        Object[] objArr = this.f1806b;
        objArr[i] = objArr[size];
        Object[] objArr2 = this.f1807c;
        objArr2[i] = objArr2[size];
        objArr[size] = null;
        objArr2[size] = null;
        long[] jArr = this.f1805a;
        long j = jArr[size];
        jArr[i] = j;
        jArr[size] = -1;
        int a2 = a(j) & i();
        int[] iArr = this.f1810f;
        int i2 = iArr[a2];
        if (i2 == size) {
            iArr[a2] = i;
            return;
        }
        while (true) {
            long j2 = this.f1805a[i2];
            int b2 = b(j2);
            if (b2 == size) {
                this.f1805a[i2] = a(j2, i);
                return;
            }
            i2 = b2;
        }
    }

    int e(int i) {
        int i2 = i + 1;
        if (i2 < this.f1812h) {
            return i2;
        }
        return -1;
    }

    Set<Map.Entry<K, V>> e() {
        return new a();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.j;
        if (set == null) {
            Set<Map.Entry<K, V>> e2 = e();
            this.j = e2;
            return e2;
        }
        return set;
    }

    Iterator<Map.Entry<K, V>> f() {
        return new l<K, V>.b<Map.Entry<K, V>>() { // from class: com.applovin.exoplayer2.common.a.l.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.applovin.exoplayer2.common.a.l.b
            /* renamed from: b */
            public Map.Entry<K, V> a(int i) {
                return new d(i);
            }
        };
    }

    Collection<V> g() {
        return new e();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        int a2 = a(obj);
        b(a2);
        if (a2 == -1) {
            return null;
        }
        return (V) this.f1807c[a2];
    }

    Iterator<V> h() {
        return new l<K, V>.b<V>() { // from class: com.applovin.exoplayer2.common.a.l.3
            @Override // com.applovin.exoplayer2.common.a.l.b
            V a(int i) {
                return (V) l.this.f1807c[i];
            }
        };
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.f1812h == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.i;
        if (set == null) {
            Set<K> c2 = c();
            this.i = c2;
            return c2;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V put(@NullableDecl K k, @NullableDecl V v) {
        long[] jArr = this.f1805a;
        Object[] objArr = this.f1806b;
        Object[] objArr2 = this.f1807c;
        int a2 = p.a(k);
        int i = i() & a2;
        int i2 = this.f1812h;
        int[] iArr = this.f1810f;
        int i3 = iArr[i];
        if (i3 == -1) {
            iArr[i] = i2;
        } else {
            while (true) {
                long j = jArr[i3];
                if (a(j) == a2 && Objects.equal(k, objArr[i3])) {
                    V v2 = (V) objArr2[i3];
                    objArr2[i3] = v;
                    b(i3);
                    return v2;
                }
                int b2 = b(j);
                if (b2 == -1) {
                    jArr[i3] = a(j, i2);
                    break;
                }
                i3 = b2;
            }
        }
        if (i2 != Integer.MAX_VALUE) {
            int i4 = i2 + 1;
            h(i4);
            a(i2, k, v, a2);
            this.f1812h = i4;
            if (i2 >= this.f1811g) {
                i(this.f1810f.length * 2);
            }
            this.f1809e++;
            return null;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V remove(@NullableDecl Object obj) {
        return a(obj, p.a(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f1812h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.k;
        if (collection == null) {
            Collection<V> g2 = g();
            this.k = g2;
            return g2;
        }
        return collection;
    }
}
