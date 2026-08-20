package com.applovin.exoplayer2;

import android.os.Bundle;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.l.m;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public interface an {

    /* loaded from: classes.dex */
    public static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        public static final a f1365a = new C0021a().a();

        /* renamed from: b  reason: collision with root package name */
        public static final g.a<a> f1366b = new g.a() { // from class: com.applovin.exoplayer2.an$a$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                an.a a2;
                a2 = an.a.a(bundle);
                return a2;
            }
        };

        /* renamed from: c  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.m f1367c;

        /* renamed from: com.applovin.exoplayer2.an$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0021a {

            /* renamed from: a  reason: collision with root package name */
            private static final int[] f1368a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28};

            /* renamed from: b  reason: collision with root package name */
            private final m.a f1369b = new m.a();

            public C0021a a(int i) {
                this.f1369b.a(i);
                return this;
            }

            public C0021a a(int i, boolean z) {
                this.f1369b.a(i, z);
                return this;
            }

            public C0021a a(a aVar) {
                this.f1369b.a(aVar.f1367c);
                return this;
            }

            public C0021a a(int... iArr) {
                this.f1369b.a(iArr);
                return this;
            }

            public a a() {
                return new a(this.f1369b.a());
            }
        }

        private a(com.applovin.exoplayer2.l.m mVar) {
            this.f1367c = mVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a a(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(b(0));
            if (integerArrayList == null) {
                return f1365a;
            }
            C0021a c0021a = new C0021a();
            for (int i = 0; i < integerArrayList.size(); i++) {
                c0021a.a(integerArrayList.get(i).intValue());
            }
            return c0021a.a();
        }

        private static String b(int i) {
            return Integer.toString(i, 36);
        }

        public boolean a(int i) {
            return this.f1367c.a(i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.f1367c.equals(((a) obj).f1367c);
            }
            return false;
        }

        public int hashCode() {
            return this.f1367c.hashCode();
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface b {
        default void a(ab abVar, int i) {
        }

        default void a(ac acVar) {
        }

        default void a(ak akVar) {
        }

        default void a(am amVar) {
        }

        default void a(a aVar) {
        }

        default void a(e eVar, e eVar2, int i) {
        }

        default void a(an anVar, c cVar) {
        }

        default void a(ba baVar, int i) {
        }

        default void a(com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.h hVar) {
        }

        @Deprecated
        default void a(boolean z, int i) {
        }

        @Deprecated
        default void b() {
        }

        default void b(int i) {
        }

        default void b(ak akVar) {
        }

        default void b(boolean z, int i) {
        }

        default void b_(boolean z) {
        }

        default void c(int i) {
        }

        @Deprecated
        default void c(boolean z) {
        }

        default void d(int i) {
        }

        default void d(boolean z) {
        }

        @Deprecated
        default void e(int i) {
        }

        default void e(boolean z) {
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.m f1370a;

        public c(com.applovin.exoplayer2.l.m mVar) {
            this.f1370a = mVar;
        }

        public boolean a(int i) {
            return this.f1370a.a(i);
        }

        public boolean a(int... iArr) {
            return this.f1370a.a(iArr);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.f1370a.equals(((c) obj).f1370a);
            }
            return false;
        }

        public int hashCode() {
            return this.f1370a.hashCode();
        }
    }

    /* loaded from: classes.dex */
    public interface d extends b {
        default void a() {
        }

        default void a(float f2) {
        }

        default void a(int i, int i2) {
        }

        default void a(int i, boolean z) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(ab abVar, int i) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(ac acVar) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(ak akVar) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(am amVar) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(a aVar) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(e eVar, e eVar2, int i) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(an anVar, c cVar) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(ba baVar, int i) {
        }

        default void a(com.applovin.exoplayer2.g.a aVar) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void a(com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.h hVar) {
        }

        default void a(com.applovin.exoplayer2.m.o oVar) {
        }

        default void a(o oVar) {
        }

        default void a(List<com.applovin.exoplayer2.i.a> list) {
        }

        default void a_(boolean z) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void b(int i) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void b(ak akVar) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void b(boolean z, int i) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void b_(boolean z) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void c(int i) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void d(int i) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void d(boolean z) {
        }

        @Override // com.applovin.exoplayer2.an.b
        default void e(boolean z) {
        }
    }

    /* loaded from: classes.dex */
    public static final class e implements g {
        public static final g.a<e> j = new g.a() { // from class: com.applovin.exoplayer2.an$e$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                an.e a2;
                a2 = an.e.a(bundle);
                return a2;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final Object f1371a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1372b;

        /* renamed from: c  reason: collision with root package name */
        public final ab f1373c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f1374d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1375e;

        /* renamed from: f  reason: collision with root package name */
        public final long f1376f;

        /* renamed from: g  reason: collision with root package name */
        public final long f1377g;

        /* renamed from: h  reason: collision with root package name */
        public final int f1378h;
        public final int i;

        public e(Object obj, int i, ab abVar, Object obj2, int i2, long j2, long j3, int i3, int i4) {
            this.f1371a = obj;
            this.f1372b = i;
            this.f1373c = abVar;
            this.f1374d = obj2;
            this.f1375e = i2;
            this.f1376f = j2;
            this.f1377g = j3;
            this.f1378h = i3;
            this.i = i4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static e a(Bundle bundle) {
            return new e(null, bundle.getInt(a(0), -1), (ab) com.applovin.exoplayer2.l.c.a(ab.f1230g, bundle.getBundle(a(1))), null, bundle.getInt(a(2), -1), bundle.getLong(a(3), C.TIME_UNSET), bundle.getLong(a(4), C.TIME_UNSET), bundle.getInt(a(5), -1), bundle.getInt(a(6), -1));
        }

        private static String a(int i) {
            return Integer.toString(i, 36);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f1372b == eVar.f1372b && this.f1375e == eVar.f1375e && this.f1376f == eVar.f1376f && this.f1377g == eVar.f1377g && this.f1378h == eVar.f1378h && this.i == eVar.i && Objects.equal(this.f1371a, eVar.f1371a) && Objects.equal(this.f1374d, eVar.f1374d) && Objects.equal(this.f1373c, eVar.f1373c);
        }

        public int hashCode() {
            return Objects.hashCode(this.f1371a, Integer.valueOf(this.f1372b), this.f1373c, this.f1374d, Integer.valueOf(this.f1375e), Integer.valueOf(this.f1372b), Long.valueOf(this.f1376f), Long.valueOf(this.f1377g), Integer.valueOf(this.f1378h), Integer.valueOf(this.i));
        }
    }

    long A();

    long B();

    long C();

    am D();

    int F();

    int G();

    long H();

    long I();

    long J();

    boolean K();

    int L();

    int M();

    long N();

    long O();

    com.applovin.exoplayer2.h.ad P();

    com.applovin.exoplayer2.j.h Q();

    ac R();

    ba S();

    com.applovin.exoplayer2.m.o T();

    List<com.applovin.exoplayer2.i.a> V();

    void a(int i, long j);

    void a(long j);

    void a(SurfaceView surfaceView);

    void a(TextureView textureView);

    void a(d dVar);

    void a(boolean z);

    boolean a();

    boolean a(int i);

    void b(SurfaceView surfaceView);

    void b(TextureView textureView);

    void b(d dVar);

    void b(boolean z);

    void c();

    void c(int i);

    void d();

    ak e();

    void g();

    void j();

    boolean o();

    Looper r();

    a s();

    int t();

    int u();

    void w();

    boolean x();

    int y();

    boolean z();
}
