package com.applovin.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.g;
import com.google.android.exoplayer2.C;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes.dex */
public final class ab implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final ab f1229a = new b().a();

    /* renamed from: g  reason: collision with root package name */
    public static final g.a<ab> f1230g = new g.a() { // from class: com.applovin.exoplayer2.ab$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            ab a2;
            a2 = ab.a(bundle);
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final String f1231b;

    /* renamed from: c  reason: collision with root package name */
    public final f f1232c;

    /* renamed from: d  reason: collision with root package name */
    public final e f1233d;

    /* renamed from: e  reason: collision with root package name */
    public final ac f1234e;

    /* renamed from: f  reason: collision with root package name */
    public final c f1235f;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f1236a;

        /* renamed from: b  reason: collision with root package name */
        public final Object f1237b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f1236a.equals(aVar.f1236a) && com.applovin.exoplayer2.l.ai.a(this.f1237b, aVar.f1237b);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f1236a.hashCode() * 31;
            Object obj = this.f1237b;
            return hashCode + (obj != null ? obj.hashCode() : 0);
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private String f1238a;

        /* renamed from: b  reason: collision with root package name */
        private Uri f1239b;

        /* renamed from: c  reason: collision with root package name */
        private String f1240c;

        /* renamed from: d  reason: collision with root package name */
        private long f1241d;

        /* renamed from: e  reason: collision with root package name */
        private long f1242e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f1243f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f1244g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f1245h;
        private d.a i;
        private List<Object> j;
        private String k;
        private List<Object> l;
        private a m;
        private Object n;
        private ac o;
        private e.a p;

        public b() {
            this.f1242e = Long.MIN_VALUE;
            this.i = new d.a();
            this.j = Collections.emptyList();
            this.l = Collections.emptyList();
            this.p = new e.a();
        }

        private b(ab abVar) {
            this();
            this.f1242e = abVar.f1235f.f1248b;
            this.f1243f = abVar.f1235f.f1249c;
            this.f1244g = abVar.f1235f.f1250d;
            this.f1241d = abVar.f1235f.f1247a;
            this.f1245h = abVar.f1235f.f1251e;
            this.f1238a = abVar.f1231b;
            this.o = abVar.f1234e;
            this.p = abVar.f1233d.a();
            f fVar = abVar.f1232c;
            if (fVar != null) {
                this.k = fVar.f1285f;
                this.f1240c = fVar.f1281b;
                this.f1239b = fVar.f1280a;
                this.j = fVar.f1284e;
                this.l = fVar.f1286g;
                this.n = fVar.f1287h;
                this.i = fVar.f1282c != null ? fVar.f1282c.b() : new d.a();
                this.m = fVar.f1283d;
            }
        }

        public b a(Uri uri) {
            this.f1239b = uri;
            return this;
        }

        public b a(Object obj) {
            this.n = obj;
            return this;
        }

        public b a(String str) {
            this.f1238a = (String) com.applovin.exoplayer2.l.a.b(str);
            return this;
        }

        public ab a() {
            f fVar;
            com.applovin.exoplayer2.l.a.b(this.i.f1261b == null || this.i.f1260a != null);
            Uri uri = this.f1239b;
            if (uri != null) {
                fVar = new f(uri, this.f1240c, this.i.f1260a != null ? this.i.a() : null, this.m, this.j, this.k, this.l, this.n);
            } else {
                fVar = null;
            }
            String str = this.f1238a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            c cVar = new c(this.f1241d, this.f1242e, this.f1243f, this.f1244g, this.f1245h);
            e a2 = this.p.a();
            ac acVar = this.o;
            if (acVar == null) {
                acVar = ac.f1288a;
            }
            return new ab(str2, cVar, fVar, a2, acVar);
        }

        public b b(String str) {
            this.k = str;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements g {

        /* renamed from: f  reason: collision with root package name */
        public static final g.a<c> f1246f = new g.a() { // from class: com.applovin.exoplayer2.ab$c$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                ab.c a2;
                a2 = ab.c.a(bundle);
                return a2;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f1247a;

        /* renamed from: b  reason: collision with root package name */
        public final long f1248b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f1249c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f1250d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f1251e;

        private c(long j, long j2, boolean z, boolean z2, boolean z3) {
            this.f1247a = j;
            this.f1248b = j2;
            this.f1249c = z;
            this.f1250d = z2;
            this.f1251e = z3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ c a(Bundle bundle) {
            return new c(bundle.getLong(a(0), 0L), bundle.getLong(a(1), Long.MIN_VALUE), bundle.getBoolean(a(2), false), bundle.getBoolean(a(3), false), bundle.getBoolean(a(4), false));
        }

        private static String a(int i) {
            return Integer.toString(i, 36);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f1247a == cVar.f1247a && this.f1248b == cVar.f1248b && this.f1249c == cVar.f1249c && this.f1250d == cVar.f1250d && this.f1251e == cVar.f1251e;
            }
            return false;
        }

        public int hashCode() {
            long j = this.f1247a;
            long j2 = this.f1248b;
            return (((((((((int) (j ^ (j >>> 32))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + (this.f1249c ? 1 : 0)) * 31) + (this.f1250d ? 1 : 0)) * 31) + (this.f1251e ? 1 : 0);
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f1252a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri f1253b;

        /* renamed from: c  reason: collision with root package name */
        public final com.applovin.exoplayer2.common.a.u<String, String> f1254c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f1255d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f1256e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f1257f;

        /* renamed from: g  reason: collision with root package name */
        public final com.applovin.exoplayer2.common.a.s<Integer> f1258g;

        /* renamed from: h  reason: collision with root package name */
        private final byte[] f1259h;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private UUID f1260a;

            /* renamed from: b  reason: collision with root package name */
            private Uri f1261b;

            /* renamed from: c  reason: collision with root package name */
            private com.applovin.exoplayer2.common.a.u<String, String> f1262c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f1263d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f1264e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f1265f;

            /* renamed from: g  reason: collision with root package name */
            private com.applovin.exoplayer2.common.a.s<Integer> f1266g;

            /* renamed from: h  reason: collision with root package name */
            private byte[] f1267h;

            @Deprecated
            private a() {
                this.f1262c = com.applovin.exoplayer2.common.a.u.a();
                this.f1266g = com.applovin.exoplayer2.common.a.s.g();
            }

            private a(d dVar) {
                this.f1260a = dVar.f1252a;
                this.f1261b = dVar.f1253b;
                this.f1262c = dVar.f1254c;
                this.f1263d = dVar.f1255d;
                this.f1264e = dVar.f1256e;
                this.f1265f = dVar.f1257f;
                this.f1266g = dVar.f1258g;
                this.f1267h = dVar.f1259h;
            }

            public d a() {
                return new d(this);
            }
        }

        private d(a aVar) {
            com.applovin.exoplayer2.l.a.b((aVar.f1265f && aVar.f1261b == null) ? false : true);
            this.f1252a = (UUID) com.applovin.exoplayer2.l.a.b(aVar.f1260a);
            this.f1253b = aVar.f1261b;
            this.f1254c = aVar.f1262c;
            this.f1255d = aVar.f1263d;
            this.f1257f = aVar.f1265f;
            this.f1256e = aVar.f1264e;
            this.f1258g = aVar.f1266g;
            this.f1259h = aVar.f1267h != null ? Arrays.copyOf(aVar.f1267h, aVar.f1267h.length) : null;
        }

        public byte[] a() {
            byte[] bArr = this.f1259h;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public a b() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof d) {
                d dVar = (d) obj;
                return this.f1252a.equals(dVar.f1252a) && com.applovin.exoplayer2.l.ai.a(this.f1253b, dVar.f1253b) && com.applovin.exoplayer2.l.ai.a(this.f1254c, dVar.f1254c) && this.f1255d == dVar.f1255d && this.f1257f == dVar.f1257f && this.f1256e == dVar.f1256e && this.f1258g.equals(dVar.f1258g) && Arrays.equals(this.f1259h, dVar.f1259h);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f1252a.hashCode() * 31;
            Uri uri = this.f1253b;
            return ((((((((((((hashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.f1254c.hashCode()) * 31) + (this.f1255d ? 1 : 0)) * 31) + (this.f1257f ? 1 : 0)) * 31) + (this.f1256e ? 1 : 0)) * 31) + this.f1258g.hashCode()) * 31) + Arrays.hashCode(this.f1259h);
        }
    }

    /* loaded from: classes.dex */
    public static final class e implements g {

        /* renamed from: a  reason: collision with root package name */
        public static final e f1268a = new a().a();

        /* renamed from: g  reason: collision with root package name */
        public static final g.a<e> f1269g = new g.a() { // from class: com.applovin.exoplayer2.ab$e$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                ab.e a2;
                a2 = ab.e.a(bundle);
                return a2;
            }
        };

        /* renamed from: b  reason: collision with root package name */
        public final long f1270b;

        /* renamed from: c  reason: collision with root package name */
        public final long f1271c;

        /* renamed from: d  reason: collision with root package name */
        public final long f1272d;

        /* renamed from: e  reason: collision with root package name */
        public final float f1273e;

        /* renamed from: f  reason: collision with root package name */
        public final float f1274f;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f1275a;

            /* renamed from: b  reason: collision with root package name */
            private long f1276b;

            /* renamed from: c  reason: collision with root package name */
            private long f1277c;

            /* renamed from: d  reason: collision with root package name */
            private float f1278d;

            /* renamed from: e  reason: collision with root package name */
            private float f1279e;

            public a() {
                this.f1275a = C.TIME_UNSET;
                this.f1276b = C.TIME_UNSET;
                this.f1277c = C.TIME_UNSET;
                this.f1278d = -3.4028235E38f;
                this.f1279e = -3.4028235E38f;
            }

            private a(e eVar) {
                this.f1275a = eVar.f1270b;
                this.f1276b = eVar.f1271c;
                this.f1277c = eVar.f1272d;
                this.f1278d = eVar.f1273e;
                this.f1279e = eVar.f1274f;
            }

            public e a() {
                return new e(this);
            }
        }

        @Deprecated
        public e(long j, long j2, long j3, float f2, float f3) {
            this.f1270b = j;
            this.f1271c = j2;
            this.f1272d = j3;
            this.f1273e = f2;
            this.f1274f = f3;
        }

        private e(a aVar) {
            this(aVar.f1275a, aVar.f1276b, aVar.f1277c, aVar.f1278d, aVar.f1279e);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e a(Bundle bundle) {
            return new e(bundle.getLong(a(0), C.TIME_UNSET), bundle.getLong(a(1), C.TIME_UNSET), bundle.getLong(a(2), C.TIME_UNSET), bundle.getFloat(a(3), -3.4028235E38f), bundle.getFloat(a(4), -3.4028235E38f));
        }

        private static String a(int i) {
            return Integer.toString(i, 36);
        }

        public a a() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof e) {
                e eVar = (e) obj;
                return this.f1270b == eVar.f1270b && this.f1271c == eVar.f1271c && this.f1272d == eVar.f1272d && this.f1273e == eVar.f1273e && this.f1274f == eVar.f1274f;
            }
            return false;
        }

        public int hashCode() {
            long j = this.f1270b;
            long j2 = this.f1271c;
            long j3 = this.f1272d;
            int i = ((((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31;
            float f2 = this.f1273e;
            int floatToIntBits = (i + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.f1274f;
            return floatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
        }
    }

    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f1280a;

        /* renamed from: b  reason: collision with root package name */
        public final String f1281b;

        /* renamed from: c  reason: collision with root package name */
        public final d f1282c;

        /* renamed from: d  reason: collision with root package name */
        public final a f1283d;

        /* renamed from: e  reason: collision with root package name */
        public final List<Object> f1284e;

        /* renamed from: f  reason: collision with root package name */
        public final String f1285f;

        /* renamed from: g  reason: collision with root package name */
        public final List<Object> f1286g;

        /* renamed from: h  reason: collision with root package name */
        public final Object f1287h;

        private f(Uri uri, String str, d dVar, a aVar, List<Object> list, String str2, List<Object> list2, Object obj) {
            this.f1280a = uri;
            this.f1281b = str;
            this.f1282c = dVar;
            this.f1283d = aVar;
            this.f1284e = list;
            this.f1285f = str2;
            this.f1286g = list2;
            this.f1287h = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof f) {
                f fVar = (f) obj;
                return this.f1280a.equals(fVar.f1280a) && com.applovin.exoplayer2.l.ai.a((Object) this.f1281b, (Object) fVar.f1281b) && com.applovin.exoplayer2.l.ai.a(this.f1282c, fVar.f1282c) && com.applovin.exoplayer2.l.ai.a(this.f1283d, fVar.f1283d) && this.f1284e.equals(fVar.f1284e) && com.applovin.exoplayer2.l.ai.a((Object) this.f1285f, (Object) fVar.f1285f) && this.f1286g.equals(fVar.f1286g) && com.applovin.exoplayer2.l.ai.a(this.f1287h, fVar.f1287h);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f1280a.hashCode() * 31;
            String str = this.f1281b;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            d dVar = this.f1282c;
            int hashCode3 = (hashCode2 + (dVar == null ? 0 : dVar.hashCode())) * 31;
            a aVar = this.f1283d;
            int hashCode4 = (((hashCode3 + (aVar == null ? 0 : aVar.hashCode())) * 31) + this.f1284e.hashCode()) * 31;
            String str2 = this.f1285f;
            int hashCode5 = (((hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f1286g.hashCode()) * 31;
            Object obj = this.f1287h;
            return hashCode5 + (obj != null ? obj.hashCode() : 0);
        }
    }

    private ab(String str, c cVar, f fVar, e eVar, ac acVar) {
        this.f1231b = str;
        this.f1232c = fVar;
        this.f1233d = eVar;
        this.f1234e = acVar;
        this.f1235f = cVar;
    }

    public static ab a(Uri uri) {
        return new b().a(uri).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ab a(Bundle bundle) {
        String str = (String) com.applovin.exoplayer2.l.a.b(bundle.getString(a(0), ""));
        Bundle bundle2 = bundle.getBundle(a(1));
        e fromBundle = bundle2 == null ? e.f1268a : e.f1269g.fromBundle(bundle2);
        Bundle bundle3 = bundle.getBundle(a(2));
        ac fromBundle2 = bundle3 == null ? ac.f1288a : ac.H.fromBundle(bundle3);
        Bundle bundle4 = bundle.getBundle(a(3));
        return new ab(str, bundle4 == null ? new c(0L, Long.MIN_VALUE, false, false, false) : c.f1246f.fromBundle(bundle4), null, fromBundle, fromBundle2);
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public b a() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ab) {
            ab abVar = (ab) obj;
            return com.applovin.exoplayer2.l.ai.a((Object) this.f1231b, (Object) abVar.f1231b) && this.f1235f.equals(abVar.f1235f) && com.applovin.exoplayer2.l.ai.a(this.f1232c, abVar.f1232c) && com.applovin.exoplayer2.l.ai.a(this.f1233d, abVar.f1233d) && com.applovin.exoplayer2.l.ai.a(this.f1234e, abVar.f1234e);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f1231b.hashCode() * 31;
        f fVar = this.f1232c;
        return ((((((hashCode + (fVar != null ? fVar.hashCode() : 0)) * 31) + this.f1233d.hashCode()) * 31) + this.f1235f.hashCode()) * 31) + this.f1234e.hashCode();
    }
}
