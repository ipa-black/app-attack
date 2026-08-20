package com.applovin.exoplayer2;

import com.applovin.exoplayer2.h.p;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
final class ad {

    /* renamed from: a  reason: collision with root package name */
    public final com.applovin.exoplayer2.h.n f1304a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f1305b;

    /* renamed from: c  reason: collision with root package name */
    public final com.applovin.exoplayer2.h.x[] f1306c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1307d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1308e;

    /* renamed from: f  reason: collision with root package name */
    public ae f1309f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1310g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f1311h;
    private final as[] i;
    private final com.applovin.exoplayer2.j.j j;
    private final ah k;
    private ad l;
    private com.applovin.exoplayer2.h.ad m = com.applovin.exoplayer2.h.ad.f3008a;
    private com.applovin.exoplayer2.j.k n;
    private long o;

    public ad(as[] asVarArr, long j, com.applovin.exoplayer2.j.j jVar, com.applovin.exoplayer2.k.b bVar, ah ahVar, ae aeVar, com.applovin.exoplayer2.j.k kVar) {
        this.i = asVarArr;
        this.o = j;
        this.j = jVar;
        this.k = ahVar;
        this.f1305b = aeVar.f1312a.f3085a;
        this.f1309f = aeVar;
        this.n = kVar;
        this.f1306c = new com.applovin.exoplayer2.h.x[asVarArr.length];
        this.f1311h = new boolean[asVarArr.length];
        this.f1304a = a(aeVar.f1312a, ahVar, bVar, aeVar.f1313b, aeVar.f1315d);
    }

    private static com.applovin.exoplayer2.h.n a(p.a aVar, ah ahVar, com.applovin.exoplayer2.k.b bVar, long j, long j2) {
        com.applovin.exoplayer2.h.n a2 = ahVar.a(aVar, bVar, j);
        return j2 != C.TIME_UNSET ? new com.applovin.exoplayer2.h.d(a2, true, 0L, j2) : a2;
    }

    private static void a(ah ahVar, com.applovin.exoplayer2.h.n nVar) {
        try {
            if (nVar instanceof com.applovin.exoplayer2.h.d) {
                nVar = ((com.applovin.exoplayer2.h.d) nVar).f3017a;
            }
            ahVar.a(nVar);
        } catch (RuntimeException e2) {
            com.applovin.exoplayer2.l.q.c("MediaPeriodHolder", "Period release failed.", e2);
        }
    }

    private void a(com.applovin.exoplayer2.h.x[] xVarArr) {
        int i = 0;
        while (true) {
            as[] asVarArr = this.i;
            if (i >= asVarArr.length) {
                return;
            }
            if (asVarArr[i].a() == -2) {
                xVarArr[i] = null;
            }
            i++;
        }
    }

    private void b(com.applovin.exoplayer2.h.x[] xVarArr) {
        int i = 0;
        while (true) {
            as[] asVarArr = this.i;
            if (i >= asVarArr.length) {
                return;
            }
            if (asVarArr[i].a() == -2 && this.n.a(i)) {
                xVarArr[i] = new com.applovin.exoplayer2.h.g();
            }
            i++;
        }
    }

    private void k() {
        if (m()) {
            for (int i = 0; i < this.n.f3567a; i++) {
                boolean a2 = this.n.a(i);
                com.applovin.exoplayer2.j.d dVar = this.n.f3569c[i];
                if (a2 && dVar != null) {
                    dVar.a();
                }
            }
        }
    }

    private void l() {
        if (m()) {
            for (int i = 0; i < this.n.f3567a; i++) {
                boolean a2 = this.n.a(i);
                com.applovin.exoplayer2.j.d dVar = this.n.f3569c[i];
                if (a2 && dVar != null) {
                    dVar.b();
                }
            }
        }
    }

    private boolean m() {
        return this.l == null;
    }

    public long a() {
        return this.o;
    }

    public long a(long j) {
        return j + a();
    }

    public long a(com.applovin.exoplayer2.j.k kVar, long j, boolean z) {
        return a(kVar, j, z, new boolean[this.i.length]);
    }

    public long a(com.applovin.exoplayer2.j.k kVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= kVar.f3567a) {
                break;
            }
            boolean[] zArr2 = this.f1311h;
            if (z || !kVar.a(this.n, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        a(this.f1306c);
        l();
        this.n = kVar;
        k();
        long a2 = this.f1304a.a(kVar.f3569c, this.f1311h, this.f1306c, zArr, j);
        b(this.f1306c);
        this.f1308e = false;
        int i2 = 0;
        while (true) {
            com.applovin.exoplayer2.h.x[] xVarArr = this.f1306c;
            if (i2 >= xVarArr.length) {
                return a2;
            }
            if (xVarArr[i2] != null) {
                com.applovin.exoplayer2.l.a.b(kVar.a(i2));
                if (this.i[i2].a() != -2) {
                    this.f1308e = true;
                }
            } else {
                com.applovin.exoplayer2.l.a.b(kVar.f3569c[i2] == null);
            }
            i2++;
        }
    }

    public void a(float f2, ba baVar) throws p {
        this.f1307d = true;
        this.m = this.f1304a.b();
        com.applovin.exoplayer2.j.k b2 = b(f2, baVar);
        long j = this.f1309f.f1313b;
        if (this.f1309f.f1316e != C.TIME_UNSET && j >= this.f1309f.f1316e) {
            j = Math.max(0L, this.f1309f.f1316e - 1);
        }
        long a2 = a(b2, j, false);
        this.o += this.f1309f.f1313b - a2;
        this.f1309f = this.f1309f.a(a2);
    }

    public void a(ad adVar) {
        if (adVar == this.l) {
            return;
        }
        l();
        this.l = adVar;
        k();
    }

    public long b() {
        return this.f1309f.f1313b + this.o;
    }

    public long b(long j) {
        return j - a();
    }

    public com.applovin.exoplayer2.j.k b(float f2, ba baVar) throws p {
        com.applovin.exoplayer2.j.d[] dVarArr;
        com.applovin.exoplayer2.j.k a2 = this.j.a(this.i, h(), this.f1309f.f1312a, baVar);
        for (com.applovin.exoplayer2.j.d dVar : a2.f3569c) {
            if (dVar != null) {
                dVar.a(f2);
            }
        }
        return a2;
    }

    public void c(long j) {
        this.o = j;
    }

    public boolean c() {
        return this.f1307d && (!this.f1308e || this.f1304a.d() == Long.MIN_VALUE);
    }

    public long d() {
        if (this.f1307d) {
            long d2 = this.f1308e ? this.f1304a.d() : Long.MIN_VALUE;
            return d2 == Long.MIN_VALUE ? this.f1309f.f1316e : d2;
        }
        return this.f1309f.f1313b;
    }

    public void d(long j) {
        com.applovin.exoplayer2.l.a.b(m());
        if (this.f1307d) {
            this.f1304a.a(b(j));
        }
    }

    public long e() {
        if (this.f1307d) {
            return this.f1304a.e();
        }
        return 0L;
    }

    public void e(long j) {
        com.applovin.exoplayer2.l.a.b(m());
        this.f1304a.c(b(j));
    }

    public void f() {
        l();
        a(this.k, this.f1304a);
    }

    public ad g() {
        return this.l;
    }

    public com.applovin.exoplayer2.h.ad h() {
        return this.m;
    }

    public com.applovin.exoplayer2.j.k i() {
        return this.n;
    }

    public void j() {
        if (this.f1304a instanceof com.applovin.exoplayer2.h.d) {
            ((com.applovin.exoplayer2.h.d) this.f1304a).a(0L, this.f1309f.f1315d == C.TIME_UNSET ? Long.MIN_VALUE : this.f1309f.f1315d);
        }
    }
}
