package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.AbstractMap;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class al<K, V> extends u<K, V> {

    /* renamed from: b  reason: collision with root package name */
    static final u<Object, Object> f1719b = new al(null, new Object[0], 0);

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f1720c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int[] f1721d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f1722e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a<K, V> extends w<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final transient u<K, V> f1723a;

        /* renamed from: b  reason: collision with root package name */
        private final transient Object[] f1724b;

        /* renamed from: c  reason: collision with root package name */
        private final transient int f1725c;

        /* renamed from: d  reason: collision with root package name */
        private final transient int f1726d;

        a(u<K, V> uVar, Object[] objArr, int i, int i2) {
            this.f1723a = uVar;
            this.f1724b = objArr;
            this.f1725c = i;
            this.f1726d = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.q
        public int a(Object[] objArr, int i) {
            return e().a(objArr, i);
        }

        @Override // com.applovin.exoplayer2.common.a.w, com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public ax<Map.Entry<K, V>> iterator() {
            return e().iterator();
        }

        @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                return value != null && value.equals(this.f1723a.get(key));
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.q
        public boolean f() {
            return true;
        }

        @Override // com.applovin.exoplayer2.common.a.w
        s<Map.Entry<K, V>> i() {
            return new s<Map.Entry<K, V>>() { // from class: com.applovin.exoplayer2.common.a.al.a.1
                @Override // java.util.List
                /* renamed from: b */
                public Map.Entry<K, V> get(int i) {
                    Preconditions.checkElementIndex(i, a.this.f1726d);
                    int i2 = i * 2;
                    return new AbstractMap.SimpleImmutableEntry(a.this.f1724b[a.this.f1725c + i2], a.this.f1724b[i2 + (a.this.f1725c ^ 1)]);
                }

                @Override // com.applovin.exoplayer2.common.a.q
                public boolean f() {
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return a.this.f1726d;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f1726d;
        }
    }

    /* loaded from: classes.dex */
    static final class b<K> extends w<K> {

        /* renamed from: a  reason: collision with root package name */
        private final transient u<K, ?> f1728a;

        /* renamed from: b  reason: collision with root package name */
        private final transient s<K> f1729b;

        b(u<K, ?> uVar, s<K> sVar) {
            this.f1728a = uVar;
            this.f1729b = sVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.q
        public int a(Object[] objArr, int i) {
            return e().a(objArr, i);
        }

        @Override // com.applovin.exoplayer2.common.a.w, com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public ax<K> iterator() {
            return e().iterator();
        }

        @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return this.f1728a.get(obj) != null;
        }

        @Override // com.applovin.exoplayer2.common.a.w, com.applovin.exoplayer2.common.a.q
        public s<K> e() {
            return this.f1729b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.q
        public boolean f() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f1728a.size();
        }
    }

    /* loaded from: classes.dex */
    static final class c extends s<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final transient Object[] f1730a;

        /* renamed from: b  reason: collision with root package name */
        private final transient int f1731b;

        /* renamed from: c  reason: collision with root package name */
        private final transient int f1732c;

        c(Object[] objArr, int i, int i2) {
            this.f1730a = objArr;
            this.f1731b = i;
            this.f1732c = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.q
        public boolean f() {
            return true;
        }

        @Override // java.util.List
        public Object get(int i) {
            Preconditions.checkElementIndex(i, this.f1732c);
            return this.f1730a[(i * 2) + this.f1731b];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f1732c;
        }
    }

    private al(int[] iArr, Object[] objArr, int i) {
        this.f1721d = iArr;
        this.f1720c = objArr;
        this.f1722e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> al<K, V> a(int i, Object[] objArr) {
        if (i == 0) {
            return (al) f1719b;
        }
        if (i == 1) {
            j.a(objArr[0], objArr[1]);
            return new al<>(null, objArr, 1);
        }
        Preconditions.checkPositionIndex(i, objArr.length >> 1);
        return new al<>(a(objArr, i, w.a(i), 0), objArr, i);
    }

    static Object a(@NullableDecl int[] iArr, @NullableDecl Object[] objArr, int i, int i2, @NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[i2].equals(obj)) {
                return objArr[i2 ^ 1];
            }
            return null;
        } else if (iArr == null) {
            return null;
        } else {
            int length = iArr.length - 1;
            int a2 = p.a(obj.hashCode());
            while (true) {
                int i3 = a2 & length;
                int i4 = iArr[i3];
                if (i4 == -1) {
                    return null;
                }
                if (objArr[i4].equals(obj)) {
                    return objArr[i4 ^ 1];
                }
                a2 = i3 + 1;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        r12[r7] = r5;
        r3 = r3 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int[] a(java.lang.Object[] r10, int r11, int r12, int r13) {
        /*
            r0 = 1
            if (r11 != r0) goto Le
            r11 = r10[r13]
            r12 = r13 ^ 1
            r10 = r10[r12]
            com.applovin.exoplayer2.common.a.j.a(r11, r10)
            r10 = 0
            return r10
        Le:
            int r1 = r12 + (-1)
            int[] r12 = new int[r12]
            r2 = -1
            java.util.Arrays.fill(r12, r2)
            r3 = 0
        L17:
            if (r3 >= r11) goto L7b
            int r4 = r3 * 2
            int r5 = r4 + r13
            r6 = r10[r5]
            r7 = r13 ^ 1
            int r4 = r4 + r7
            r4 = r10[r4]
            com.applovin.exoplayer2.common.a.j.a(r6, r4)
            int r7 = r6.hashCode()
            int r7 = com.applovin.exoplayer2.common.a.p.a(r7)
        L2f:
            r7 = r7 & r1
            r8 = r12[r7]
            if (r8 != r2) goto L39
            r12[r7] = r5
            int r3 = r3 + 1
            goto L17
        L39:
            r9 = r10[r8]
            boolean r9 = r9.equals(r6)
            if (r9 != 0) goto L44
            int r7 = r7 + 1
            goto L2f
        L44:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r13 = "Multiple entries with same key: "
            r12.<init>(r13)
            java.lang.StringBuilder r12 = r12.append(r6)
            java.lang.String r13 = "="
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.StringBuilder r12 = r12.append(r4)
            java.lang.String r1 = " and "
            java.lang.StringBuilder r12 = r12.append(r1)
            r1 = r10[r8]
            java.lang.StringBuilder r12 = r12.append(r1)
            java.lang.StringBuilder r12 = r12.append(r13)
            r13 = r8 ^ 1
            r10 = r10[r13]
            java.lang.StringBuilder r10 = r12.append(r10)
            java.lang.String r10 = r10.toString()
            r11.<init>(r10)
            throw r11
        L7b:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.common.a.al.a(java.lang.Object[], int, int, int):int[]");
    }

    @Override // com.applovin.exoplayer2.common.a.u
    w<Map.Entry<K, V>> d() {
        return new a(this, this.f1720c, 0, this.f1722e);
    }

    @Override // com.applovin.exoplayer2.common.a.u
    w<K> f() {
        return new b(this, new c(this.f1720c, 0, this.f1722e));
    }

    @Override // com.applovin.exoplayer2.common.a.u, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        return (V) a(this.f1721d, this.f1720c, this.f1722e, 0, obj);
    }

    @Override // com.applovin.exoplayer2.common.a.u
    q<V> h() {
        return new c(this.f1720c, 1, this.f1722e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.u
    public boolean i() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f1722e;
    }
}
