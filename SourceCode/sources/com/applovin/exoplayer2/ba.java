package com.applovin.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.h.a.a;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public abstract class ba implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final ba f1615a = new ba() { // from class: com.applovin.exoplayer2.ba.1
        @Override // com.applovin.exoplayer2.ba
        public a a(int i, a aVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.applovin.exoplayer2.ba
        public c a(int i, c cVar, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.applovin.exoplayer2.ba
        public Object a(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.applovin.exoplayer2.ba
        public int b() {
            return 0;
        }

        @Override // com.applovin.exoplayer2.ba
        public int c() {
            return 0;
        }

        @Override // com.applovin.exoplayer2.ba
        public int c(Object obj) {
            return -1;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final g.a<ba> f1616b = new g.a() { // from class: com.applovin.exoplayer2.ba$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            ba a2;
            a2 = ba.a(bundle);
            return a2;
        }
    };

    /* loaded from: classes.dex */
    public static final class a implements g {

        /* renamed from: g  reason: collision with root package name */
        public static final g.a<a> f1617g = new g.a() { // from class: com.applovin.exoplayer2.ba$a$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                ba.a a2;
                a2 = ba.a.a(bundle);
                return a2;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public Object f1618a;

        /* renamed from: b  reason: collision with root package name */
        public Object f1619b;

        /* renamed from: c  reason: collision with root package name */
        public int f1620c;

        /* renamed from: d  reason: collision with root package name */
        public long f1621d;

        /* renamed from: e  reason: collision with root package name */
        public long f1622e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f1623f;

        /* renamed from: h  reason: collision with root package name */
        private com.applovin.exoplayer2.h.a.a f1624h = com.applovin.exoplayer2.h.a.a.f2979a;

        /* JADX INFO: Access modifiers changed from: private */
        public static a a(Bundle bundle) {
            int i = bundle.getInt(g(0), 0);
            long j = bundle.getLong(g(1), C.TIME_UNSET);
            long j2 = bundle.getLong(g(2), 0L);
            boolean z = bundle.getBoolean(g(3));
            Bundle bundle2 = bundle.getBundle(g(4));
            com.applovin.exoplayer2.h.a.a fromBundle = bundle2 != null ? com.applovin.exoplayer2.h.a.a.f2980g.fromBundle(bundle2) : com.applovin.exoplayer2.h.a.a.f2979a;
            a aVar = new a();
            aVar.a(null, null, i, j, j2, fromBundle, z);
            return aVar;
        }

        private static String g(int i) {
            return Integer.toString(i, 36);
        }

        public int a(int i, int i2) {
            return this.f1624h.a(i).a(i2);
        }

        public int a(long j) {
            return this.f1624h.a(j, this.f1621d);
        }

        public long a() {
            return this.f1621d;
        }

        public long a(int i) {
            return this.f1624h.a(i).f2988a;
        }

        public a a(Object obj, Object obj2, int i, long j, long j2) {
            return a(obj, obj2, i, j, j2, com.applovin.exoplayer2.h.a.a.f2979a, false);
        }

        public a a(Object obj, Object obj2, int i, long j, long j2, com.applovin.exoplayer2.h.a.a aVar, boolean z) {
            this.f1618a = obj;
            this.f1619b = obj2;
            this.f1620c = i;
            this.f1621d = j;
            this.f1622e = j2;
            this.f1624h = aVar;
            this.f1623f = z;
            return this;
        }

        public int b(int i) {
            return this.f1624h.a(i).a();
        }

        public int b(long j) {
            return this.f1624h.b(j, this.f1621d);
        }

        public long b() {
            return h.a(this.f1622e);
        }

        public long b(int i, int i2) {
            a.C0043a a2 = this.f1624h.a(i);
            return a2.f2989b != -1 ? a2.f2992e[i2] : C.TIME_UNSET;
        }

        public long c() {
            return this.f1622e;
        }

        public boolean c(int i) {
            return !this.f1624h.a(i).c();
        }

        public int d() {
            return this.f1624h.f2983c;
        }

        public int d(int i) {
            return this.f1624h.a(i).f2989b;
        }

        public int e() {
            return this.f1624h.f2986f;
        }

        public boolean e(int i) {
            return this.f1624h.a(i).f2994g;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !getClass().equals(obj.getClass())) {
                return false;
            }
            a aVar = (a) obj;
            return com.applovin.exoplayer2.l.ai.a(this.f1618a, aVar.f1618a) && com.applovin.exoplayer2.l.ai.a(this.f1619b, aVar.f1619b) && this.f1620c == aVar.f1620c && this.f1621d == aVar.f1621d && this.f1622e == aVar.f1622e && this.f1623f == aVar.f1623f && com.applovin.exoplayer2.l.ai.a(this.f1624h, aVar.f1624h);
        }

        public long f() {
            return this.f1624h.f2984d;
        }

        public long f(int i) {
            return this.f1624h.a(i).f2993f;
        }

        public int hashCode() {
            Object obj = this.f1618a;
            int hashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f1619b;
            int hashCode2 = obj2 != null ? obj2.hashCode() : 0;
            long j = this.f1621d;
            long j2 = this.f1622e;
            return ((((((((((hashCode + hashCode2) * 31) + this.f1620c) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.f1623f ? 1 : 0)) * 31) + this.f1624h.hashCode();
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends ba {

        /* renamed from: c  reason: collision with root package name */
        private final com.applovin.exoplayer2.common.a.s<c> f1625c;

        /* renamed from: d  reason: collision with root package name */
        private final com.applovin.exoplayer2.common.a.s<a> f1626d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f1627e;

        /* renamed from: f  reason: collision with root package name */
        private final int[] f1628f;

        public b(com.applovin.exoplayer2.common.a.s<c> sVar, com.applovin.exoplayer2.common.a.s<a> sVar2, int[] iArr) {
            com.applovin.exoplayer2.l.a.a(sVar.size() == iArr.length);
            this.f1625c = sVar;
            this.f1626d = sVar2;
            this.f1627e = iArr;
            this.f1628f = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.f1628f[iArr[i]] = i;
            }
        }

        @Override // com.applovin.exoplayer2.ba
        public int a(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != a(z)) {
                return z ? this.f1627e[this.f1628f[i] + 1] : i + 1;
            } else if (i2 == 2) {
                return b(z);
            } else {
                return -1;
            }
        }

        @Override // com.applovin.exoplayer2.ba
        public int a(boolean z) {
            if (d()) {
                return -1;
            }
            return z ? this.f1627e[b() - 1] : b() - 1;
        }

        @Override // com.applovin.exoplayer2.ba
        public a a(int i, a aVar, boolean z) {
            a aVar2 = this.f1626d.get(i);
            aVar.a(aVar2.f1618a, aVar2.f1619b, aVar2.f1620c, aVar2.f1621d, aVar2.f1622e, aVar2.f1624h, aVar2.f1623f);
            return aVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public c a(int i, c cVar, long j) {
            c cVar2 = this.f1625c.get(i);
            cVar.a(cVar2.f1630b, cVar2.f1632d, cVar2.f1633e, cVar2.f1634f, cVar2.f1635g, cVar2.f1636h, cVar2.i, cVar2.j, cVar2.l, cVar2.n, cVar2.o, cVar2.p, cVar2.q, cVar2.r);
            cVar.m = cVar2.m;
            return cVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public Object a(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.applovin.exoplayer2.ba
        public int b() {
            return this.f1625c.size();
        }

        @Override // com.applovin.exoplayer2.ba
        public int b(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != b(z)) {
                return z ? this.f1627e[this.f1628f[i] - 1] : i - 1;
            } else if (i2 == 2) {
                return a(z);
            } else {
                return -1;
            }
        }

        @Override // com.applovin.exoplayer2.ba
        public int b(boolean z) {
            if (d()) {
                return -1;
            }
            if (z) {
                return this.f1627e[0];
            }
            return 0;
        }

        @Override // com.applovin.exoplayer2.ba
        public int c() {
            return this.f1626d.size();
        }

        @Override // com.applovin.exoplayer2.ba
        public int c(Object obj) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements g {
        @Deprecated

        /* renamed from: c  reason: collision with root package name */
        public Object f1631c;

        /* renamed from: e  reason: collision with root package name */
        public Object f1633e;

        /* renamed from: f  reason: collision with root package name */
        public long f1634f;

        /* renamed from: g  reason: collision with root package name */
        public long f1635g;

        /* renamed from: h  reason: collision with root package name */
        public long f1636h;
        public boolean i;
        public boolean j;
        @Deprecated
        public boolean k;
        public ab.e l;
        public boolean m;
        public long n;
        public long o;
        public int p;
        public int q;
        public long r;

        /* renamed from: a  reason: collision with root package name */
        public static final Object f1629a = new Object();
        private static final Object t = new Object();
        private static final ab u = new ab.b().a("com.applovin.exoplayer2.Timeline").a(Uri.EMPTY).a();
        public static final g.a<c> s = new g.a() { // from class: com.applovin.exoplayer2.ba$c$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                ba.c a2;
                a2 = ba.c.a(bundle);
                return a2;
            }
        };

        /* renamed from: b  reason: collision with root package name */
        public Object f1630b = f1629a;

        /* renamed from: d  reason: collision with root package name */
        public ab f1632d = u;

        /* JADX INFO: Access modifiers changed from: private */
        public static c a(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(a(1));
            ab fromBundle = bundle2 != null ? ab.f1230g.fromBundle(bundle2) : null;
            long j = bundle.getLong(a(2), C.TIME_UNSET);
            long j2 = bundle.getLong(a(3), C.TIME_UNSET);
            long j3 = bundle.getLong(a(4), C.TIME_UNSET);
            boolean z = bundle.getBoolean(a(5), false);
            boolean z2 = bundle.getBoolean(a(6), false);
            Bundle bundle3 = bundle.getBundle(a(7));
            ab.e fromBundle2 = bundle3 != null ? ab.e.f1269g.fromBundle(bundle3) : null;
            boolean z3 = bundle.getBoolean(a(8), false);
            long j4 = bundle.getLong(a(9), 0L);
            long j5 = bundle.getLong(a(10), C.TIME_UNSET);
            int i = bundle.getInt(a(11), 0);
            int i2 = bundle.getInt(a(12), 0);
            long j6 = bundle.getLong(a(13), 0L);
            c cVar = new c();
            cVar.a(t, fromBundle, null, j, j2, j3, z, z2, fromBundle2, j4, j5, i, i2, j6);
            cVar.m = z3;
            return cVar;
        }

        private static String a(int i) {
            return Integer.toString(i, 36);
        }

        public long a() {
            return h.a(this.n);
        }

        public c a(Object obj, ab abVar, Object obj2, long j, long j2, long j3, boolean z, boolean z2, ab.e eVar, long j4, long j5, int i, int i2, long j6) {
            this.f1630b = obj;
            this.f1632d = abVar != null ? abVar : u;
            this.f1631c = (abVar == null || abVar.f1232c == null) ? null : abVar.f1232c.f1287h;
            this.f1633e = obj2;
            this.f1634f = j;
            this.f1635g = j2;
            this.f1636h = j3;
            this.i = z;
            this.j = z2;
            this.k = eVar != null;
            this.l = eVar;
            this.n = j4;
            this.o = j5;
            this.p = i;
            this.q = i2;
            this.r = j6;
            this.m = false;
            return this;
        }

        public long b() {
            return this.n;
        }

        public long c() {
            return h.a(this.o);
        }

        public long d() {
            return com.applovin.exoplayer2.l.ai.c(this.f1636h);
        }

        public boolean e() {
            com.applovin.exoplayer2.l.a.b(this.k == (this.l != null));
            return this.l != null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !getClass().equals(obj.getClass())) {
                return false;
            }
            c cVar = (c) obj;
            return com.applovin.exoplayer2.l.ai.a(this.f1630b, cVar.f1630b) && com.applovin.exoplayer2.l.ai.a(this.f1632d, cVar.f1632d) && com.applovin.exoplayer2.l.ai.a(this.f1633e, cVar.f1633e) && com.applovin.exoplayer2.l.ai.a(this.l, cVar.l) && this.f1634f == cVar.f1634f && this.f1635g == cVar.f1635g && this.f1636h == cVar.f1636h && this.i == cVar.i && this.j == cVar.j && this.m == cVar.m && this.n == cVar.n && this.o == cVar.o && this.p == cVar.p && this.q == cVar.q && this.r == cVar.r;
        }

        public int hashCode() {
            int hashCode = (((217 + this.f1630b.hashCode()) * 31) + this.f1632d.hashCode()) * 31;
            Object obj = this.f1633e;
            int hashCode2 = (hashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            ab.e eVar = this.l;
            int hashCode3 = eVar != null ? eVar.hashCode() : 0;
            long j = this.f1634f;
            long j2 = this.f1635g;
            long j3 = this.f1636h;
            long j4 = this.n;
            long j5 = this.o;
            long j6 = this.r;
            return ((((((((((((((((((((((hashCode2 + hashCode3) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.i ? 1 : 0)) * 31) + (this.j ? 1 : 0)) * 31) + (this.m ? 1 : 0)) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.p) * 31) + this.q) * 31) + ((int) (j6 ^ (j6 >>> 32)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ba a(Bundle bundle) {
        com.applovin.exoplayer2.common.a.s a2 = a(c.s, com.applovin.exoplayer2.l.b.a(bundle, b(0)));
        com.applovin.exoplayer2.common.a.s a3 = a(a.f1617g, com.applovin.exoplayer2.l.b.a(bundle, b(1)));
        int[] intArray = bundle.getIntArray(b(2));
        if (intArray == null) {
            intArray = c(a2.size());
        }
        return new b(a2, a3, intArray);
    }

    private static <T extends g> com.applovin.exoplayer2.common.a.s<T> a(g.a<T> aVar, IBinder iBinder) {
        if (iBinder == null) {
            return com.applovin.exoplayer2.common.a.s.g();
        }
        s.a aVar2 = new s.a();
        com.applovin.exoplayer2.common.a.s<Bundle> a2 = f.a(iBinder);
        for (int i = 0; i < a2.size(); i++) {
            aVar2.a(aVar.fromBundle(a2.get(i)));
        }
        return aVar2.a();
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    private static int[] c(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    public int a(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == a(z)) {
                return -1;
            }
            return i + 1;
        } else if (i2 != 1) {
            if (i2 == 2) {
                return i == a(z) ? b(z) : i + 1;
            }
            throw new IllegalStateException();
        } else {
            return i;
        }
    }

    public final int a(int i, a aVar, c cVar, int i2, boolean z) {
        int i3 = a(i, aVar).f1620c;
        if (a(i3, cVar).q == i) {
            int a2 = a(i3, i2, z);
            if (a2 == -1) {
                return -1;
            }
            return a(a2, cVar).p;
        }
        return i + 1;
    }

    public int a(boolean z) {
        if (d()) {
            return -1;
        }
        return b() - 1;
    }

    public final Pair<Object, Long> a(c cVar, a aVar, int i, long j) {
        return (Pair) com.applovin.exoplayer2.l.a.b(a(cVar, aVar, i, j, 0L));
    }

    public final Pair<Object, Long> a(c cVar, a aVar, int i, long j, long j2) {
        com.applovin.exoplayer2.l.a.a(i, 0, b());
        a(i, cVar, j2);
        if (j == C.TIME_UNSET) {
            j = cVar.b();
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = cVar.p;
        a(i2, aVar);
        while (i2 < cVar.q && aVar.f1622e != j) {
            int i3 = i2 + 1;
            if (a(i3, aVar).f1622e > j) {
                break;
            }
            i2 = i3;
        }
        a(i2, aVar, true);
        long j3 = j - aVar.f1622e;
        if (aVar.f1621d != C.TIME_UNSET) {
            j3 = Math.min(j3, aVar.f1621d - 1);
        }
        return Pair.create(com.applovin.exoplayer2.l.a.b(aVar.f1619b), Long.valueOf(Math.max(0L, j3)));
    }

    public final a a(int i, a aVar) {
        return a(i, aVar, false);
    }

    public abstract a a(int i, a aVar, boolean z);

    public a a(Object obj, a aVar) {
        return a(c(obj), aVar, true);
    }

    public final c a(int i, c cVar) {
        return a(i, cVar, 0L);
    }

    public abstract c a(int i, c cVar, long j);

    public abstract Object a(int i);

    public abstract int b();

    public int b(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == b(z)) {
                return -1;
            }
            return i - 1;
        } else if (i2 != 1) {
            if (i2 == 2) {
                return i == b(z) ? a(z) : i - 1;
            }
            throw new IllegalStateException();
        } else {
            return i;
        }
    }

    public int b(boolean z) {
        return d() ? -1 : 0;
    }

    public final boolean b(int i, a aVar, c cVar, int i2, boolean z) {
        return a(i, aVar, cVar, i2, z) == -1;
    }

    public abstract int c();

    public abstract int c(Object obj);

    public final boolean d() {
        return b() == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ba) {
            ba baVar = (ba) obj;
            if (baVar.b() == b() && baVar.c() == c()) {
                c cVar = new c();
                a aVar = new a();
                c cVar2 = new c();
                a aVar2 = new a();
                for (int i = 0; i < b(); i++) {
                    if (!a(i, cVar).equals(baVar.a(i, cVar2))) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < c(); i2++) {
                    if (!a(i2, aVar, true).equals(baVar.a(i2, aVar2, true))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        c cVar = new c();
        a aVar = new a();
        int b2 = 217 + b();
        int i2 = 0;
        while (true) {
            i = b2 * 31;
            if (i2 >= b()) {
                break;
            }
            b2 = i + a(i2, cVar).hashCode();
            i2++;
        }
        int c2 = i + c();
        for (int i3 = 0; i3 < c(); i3++) {
            c2 = (c2 * 31) + a(i3, aVar, true).hashCode();
        }
        return c2;
    }
}
