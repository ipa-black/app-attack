package com.applovin.exoplayer2;

import android.os.Handler;
import android.util.Pair;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.h.p;
import com.google.android.exoplayer2.C;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    private final ba.a f1320a = new ba.a();

    /* renamed from: b  reason: collision with root package name */
    private final ba.c f1321b = new ba.c();

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.a.a f1322c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f1323d;

    /* renamed from: e  reason: collision with root package name */
    private long f1324e;

    /* renamed from: f  reason: collision with root package name */
    private int f1325f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1326g;

    /* renamed from: h  reason: collision with root package name */
    private ad f1327h;
    private ad i;
    private ad j;
    private int k;
    private Object l;
    private long m;

    public af(com.applovin.exoplayer2.a.a aVar, Handler handler) {
        this.f1322c = aVar;
        this.f1323d = handler;
    }

    private long a(ba baVar, Object obj) {
        int c2;
        int i = baVar.a(obj, this.f1320a).f1620c;
        Object obj2 = this.l;
        if (obj2 == null || (c2 = baVar.c(obj2)) == -1 || baVar.a(c2, this.f1320a).f1620c != i) {
            ad adVar = this.f1327h;
            while (true) {
                if (adVar == null) {
                    adVar = this.f1327h;
                    while (adVar != null) {
                        int c3 = baVar.c(adVar.f1305b);
                        if (c3 == -1 || baVar.a(c3, this.f1320a).f1620c != i) {
                            adVar = adVar.g();
                        }
                    }
                    long j = this.f1324e;
                    this.f1324e = 1 + j;
                    if (this.f1327h == null) {
                        this.l = obj;
                        this.m = j;
                    }
                    return j;
                } else if (adVar.f1305b.equals(obj)) {
                    break;
                } else {
                    adVar = adVar.g();
                }
            }
            return adVar.f1309f.f1312a.f3088d;
        }
        return this.m;
    }

    private long a(ba baVar, Object obj, int i) {
        baVar.a(obj, this.f1320a);
        long a2 = this.f1320a.a(i);
        return a2 == Long.MIN_VALUE ? this.f1320a.f1621d : a2 + this.f1320a.f(i);
    }

    private ae a(al alVar) {
        return a(alVar.f1352a, alVar.f1353b, alVar.f1354c, alVar.s);
    }

    private ae a(ba baVar, ad adVar, long j) {
        long j2;
        ae aeVar = adVar.f1309f;
        long a2 = (adVar.a() + aeVar.f1316e) - j;
        if (aeVar.f1318g) {
            long j3 = 0;
            int a3 = baVar.a(baVar.c(aeVar.f1312a.f3085a), this.f1320a, this.f1321b, this.f1325f, this.f1326g);
            if (a3 == -1) {
                return null;
            }
            int i = baVar.a(a3, this.f1320a, true).f1620c;
            Object obj = this.f1320a.f1619b;
            long j4 = aeVar.f1312a.f3088d;
            if (baVar.a(i, this.f1321b).p == a3) {
                Pair<Object, Long> a4 = baVar.a(this.f1321b, this.f1320a, i, C.TIME_UNSET, Math.max(0L, a2));
                if (a4 == null) {
                    return null;
                }
                obj = a4.first;
                long longValue = ((Long) a4.second).longValue();
                ad g2 = adVar.g();
                if (g2 == null || !g2.f1305b.equals(obj)) {
                    j4 = this.f1324e;
                    this.f1324e = 1 + j4;
                } else {
                    j4 = g2.f1309f.f1312a.f3088d;
                }
                j2 = longValue;
                j3 = C.TIME_UNSET;
            } else {
                j2 = 0;
            }
            return a(baVar, a(baVar, obj, j2, j4, this.f1320a), j3, j2);
        }
        p.a aVar = aeVar.f1312a;
        baVar.a(aVar.f3085a, this.f1320a);
        if (!aVar.a()) {
            int b2 = this.f1320a.b(aVar.f3089e);
            if (b2 == this.f1320a.d(aVar.f3089e)) {
                return a(baVar, aVar.f3085a, a(baVar, aVar.f3085a, aVar.f3089e), aeVar.f1316e, aVar.f3088d);
            }
            return a(baVar, aVar.f3085a, aVar.f3089e, b2, aeVar.f1316e, aVar.f3088d);
        }
        int i2 = aVar.f3086b;
        int d2 = this.f1320a.d(i2);
        if (d2 == -1) {
            return null;
        }
        int a5 = this.f1320a.a(i2, aVar.f3087c);
        if (a5 < d2) {
            return a(baVar, aVar.f3085a, i2, a5, aeVar.f1314c, aVar.f3088d);
        }
        long j5 = aeVar.f1314c;
        if (j5 == C.TIME_UNSET) {
            ba.c cVar = this.f1321b;
            ba.a aVar2 = this.f1320a;
            Pair<Object, Long> a6 = baVar.a(cVar, aVar2, aVar2.f1620c, C.TIME_UNSET, Math.max(0L, a2));
            if (a6 == null) {
                return null;
            }
            j5 = ((Long) a6.second).longValue();
        }
        return a(baVar, aVar.f3085a, Math.max(a(baVar, aVar.f3085a, aVar.f3086b), j5), aeVar.f1314c, aVar.f3088d);
    }

    private ae a(ba baVar, p.a aVar, long j, long j2) {
        baVar.a(aVar.f3085a, this.f1320a);
        boolean a2 = aVar.a();
        Object obj = aVar.f3085a;
        return a2 ? a(baVar, obj, aVar.f3086b, aVar.f3087c, j, aVar.f3088d) : a(baVar, obj, j2, j, aVar.f3088d);
    }

    private ae a(ba baVar, Object obj, int i, int i2, long j, long j2) {
        p.a aVar = new p.a(obj, i, i2, j2);
        long b2 = baVar.a(aVar.f3085a, this.f1320a).b(aVar.f3086b, aVar.f3087c);
        long f2 = i2 == this.f1320a.b(i) ? this.f1320a.f() : 0L;
        return new ae(aVar, (b2 == C.TIME_UNSET || f2 < b2) ? f2 : Math.max(0L, b2 - 1), j, C.TIME_UNSET, b2, this.f1320a.e(aVar.f3086b), false, false, false);
    }

    private ae a(ba baVar, Object obj, long j, long j2, long j3) {
        long j4 = j;
        baVar.a(obj, this.f1320a);
        int b2 = this.f1320a.b(j4);
        p.a aVar = new p.a(obj, j3, b2);
        boolean a2 = a(aVar);
        boolean a3 = a(baVar, aVar);
        boolean a4 = a(baVar, aVar, a2);
        boolean z = b2 != -1 && this.f1320a.e(b2);
        long a5 = b2 != -1 ? this.f1320a.a(b2) : -9223372036854775807L;
        long j5 = (a5 == C.TIME_UNSET || a5 == Long.MIN_VALUE) ? this.f1320a.f1621d : a5;
        if (j5 != C.TIME_UNSET && j4 >= j5) {
            j4 = Math.max(0L, j5 - 1);
        }
        return new ae(aVar, j4, j2, a5, j5, z, a2, a3, a4);
    }

    private static p.a a(ba baVar, Object obj, long j, long j2, ba.a aVar) {
        baVar.a(obj, aVar);
        int a2 = aVar.a(j);
        return a2 == -1 ? new p.a(obj, j2, aVar.b(j)) : new p.a(obj, a2, aVar.b(a2), j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(s.a aVar, p.a aVar2) {
        this.f1322c.a(aVar.a(), aVar2);
    }

    private boolean a(long j, long j2) {
        return j == C.TIME_UNSET || j == j2;
    }

    private boolean a(ae aeVar, ae aeVar2) {
        return aeVar.f1313b == aeVar2.f1313b && aeVar.f1312a.equals(aeVar2.f1312a);
    }

    private boolean a(ba baVar) {
        ad adVar = this.f1327h;
        if (adVar == null) {
            return true;
        }
        int c2 = baVar.c(adVar.f1305b);
        while (true) {
            c2 = baVar.a(c2, this.f1320a, this.f1321b, this.f1325f, this.f1326g);
            while (adVar.g() != null && !adVar.f1309f.f1318g) {
                adVar = adVar.g();
            }
            ad g2 = adVar.g();
            if (c2 == -1 || g2 == null || baVar.c(g2.f1305b) != c2) {
                break;
            }
            adVar = g2;
        }
        boolean a2 = a(adVar);
        adVar.f1309f = a(baVar, adVar.f1309f);
        return !a2;
    }

    private boolean a(ba baVar, p.a aVar) {
        if (a(aVar)) {
            return baVar.a(baVar.a(aVar.f3085a, this.f1320a).f1620c, this.f1321b).q == baVar.c(aVar.f3085a);
        }
        return false;
    }

    private boolean a(ba baVar, p.a aVar, boolean z) {
        int c2 = baVar.c(aVar.f3085a);
        return !baVar.a(baVar.a(c2, this.f1320a).f1620c, this.f1321b).j && baVar.b(c2, this.f1320a, this.f1321b, this.f1325f, this.f1326g) && z;
    }

    private boolean a(p.a aVar) {
        return !aVar.a() && aVar.f3089e == -1;
    }

    private void h() {
        if (this.f1322c != null) {
            final s.a i = com.applovin.exoplayer2.common.a.s.i();
            for (ad adVar = this.f1327h; adVar != null; adVar = adVar.g()) {
                i.a(adVar.f1309f.f1312a);
            }
            ad adVar2 = this.i;
            final p.a aVar = adVar2 == null ? null : adVar2.f1309f.f1312a;
            this.f1323d.post(new Runnable() { // from class: com.applovin.exoplayer2.af$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    af.this.a(i, aVar);
                }
            });
        }
    }

    public ad a(as[] asVarArr, com.applovin.exoplayer2.j.j jVar, com.applovin.exoplayer2.k.b bVar, ah ahVar, ae aeVar, com.applovin.exoplayer2.j.k kVar) {
        ad adVar = this.j;
        ad adVar2 = new ad(asVarArr, adVar == null ? (!aeVar.f1312a.a() || aeVar.f1314c == C.TIME_UNSET) ? 0L : aeVar.f1314c : (adVar.a() + this.j.f1309f.f1316e) - aeVar.f1313b, jVar, bVar, ahVar, aeVar, kVar);
        ad adVar3 = this.j;
        if (adVar3 != null) {
            adVar3.a(adVar2);
        } else {
            this.f1327h = adVar2;
            this.i = adVar2;
        }
        this.l = null;
        this.j = adVar2;
        this.k++;
        h();
        return adVar2;
    }

    public ae a(long j, al alVar) {
        return this.j == null ? a(alVar) : a(alVar.f1352a, this.j, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.applovin.exoplayer2.ae a(com.applovin.exoplayer2.ba r19, com.applovin.exoplayer2.ae r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.applovin.exoplayer2.h.p$a r3 = r2.f1312a
            boolean r12 = r0.a(r3)
            boolean r13 = r0.a(r1, r3)
            boolean r14 = r0.a(r1, r3, r12)
            com.applovin.exoplayer2.h.p$a r4 = r2.f1312a
            java.lang.Object r4 = r4.f3085a
            com.applovin.exoplayer2.ba$a r5 = r0.f1320a
            r1.a(r4, r5)
            boolean r1 = r3.a()
            r4 = -1
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L37
            int r1 = r3.f3089e
            if (r1 != r4) goto L2e
            goto L37
        L2e:
            com.applovin.exoplayer2.ba$a r1 = r0.f1320a
            int r7 = r3.f3089e
            long r7 = r1.a(r7)
            goto L38
        L37:
            r7 = r5
        L38:
            boolean r1 = r3.a()
            if (r1 == 0) goto L4a
            com.applovin.exoplayer2.ba$a r1 = r0.f1320a
            int r5 = r3.f3086b
            int r6 = r3.f3087c
            long r5 = r1.b(r5, r6)
        L48:
            r9 = r5
            goto L5e
        L4a:
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 == 0) goto L57
            r5 = -9223372036854775808
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 != 0) goto L55
            goto L57
        L55:
            r9 = r7
            goto L5e
        L57:
            com.applovin.exoplayer2.ba$a r1 = r0.f1320a
            long r5 = r1.a()
            goto L48
        L5e:
            boolean r1 = r3.a()
            if (r1 == 0) goto L6e
            com.applovin.exoplayer2.ba$a r1 = r0.f1320a
            int r4 = r3.f3086b
            boolean r1 = r1.e(r4)
        L6c:
            r11 = r1
            goto L80
        L6e:
            int r1 = r3.f3089e
            if (r1 == r4) goto L7e
            com.applovin.exoplayer2.ba$a r1 = r0.f1320a
            int r4 = r3.f3089e
            boolean r1 = r1.e(r4)
            if (r1 == 0) goto L7e
            r1 = 1
            goto L6c
        L7e:
            r1 = 0
            goto L6c
        L80:
            com.applovin.exoplayer2.ae r15 = new com.applovin.exoplayer2.ae
            long r4 = r2.f1313b
            long r1 = r2.f1314c
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.af.a(com.applovin.exoplayer2.ba, com.applovin.exoplayer2.ae):com.applovin.exoplayer2.ae");
    }

    public p.a a(ba baVar, Object obj, long j) {
        return a(baVar, obj, j, a(baVar, obj), this.f1320a);
    }

    public void a(long j) {
        ad adVar = this.j;
        if (adVar != null) {
            adVar.d(j);
        }
    }

    public boolean a() {
        ad adVar = this.j;
        return adVar == null || (!adVar.f1309f.i && this.j.c() && this.j.f1309f.f1316e != C.TIME_UNSET && this.k < 100);
    }

    public boolean a(ad adVar) {
        boolean z = false;
        com.applovin.exoplayer2.l.a.b(adVar != null);
        if (adVar.equals(this.j)) {
            return false;
        }
        this.j = adVar;
        while (adVar.g() != null) {
            adVar = adVar.g();
            if (adVar == this.i) {
                this.i = this.f1327h;
                z = true;
            }
            adVar.f();
            this.k--;
        }
        this.j.a((ad) null);
        h();
        return z;
    }

    public boolean a(ba baVar, int i) {
        this.f1325f = i;
        return a(baVar);
    }

    public boolean a(ba baVar, long j, long j2) {
        ae aeVar;
        ad adVar = this.f1327h;
        ad adVar2 = null;
        while (adVar != null) {
            ae aeVar2 = adVar.f1309f;
            if (adVar2 != null) {
                ae a2 = a(baVar, adVar2, j);
                if (a2 != null && a(aeVar2, a2)) {
                    aeVar = a2;
                }
                return !a(adVar2);
            }
            aeVar = a(baVar, aeVar2);
            adVar.f1309f = aeVar.b(aeVar2.f1314c);
            if (!a(aeVar2.f1316e, aeVar.f1316e)) {
                adVar.j();
                return (a(adVar) || (adVar == this.i && !adVar.f1309f.f1317f && ((j2 > Long.MIN_VALUE ? 1 : (j2 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j2 > ((aeVar.f1316e > C.TIME_UNSET ? 1 : (aeVar.f1316e == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : adVar.a(aeVar.f1316e)) ? 1 : (j2 == ((aeVar.f1316e > C.TIME_UNSET ? 1 : (aeVar.f1316e == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : adVar.a(aeVar.f1316e)) ? 0 : -1)) >= 0))) ? false : true;
            }
            adVar2 = adVar;
            adVar = adVar.g();
        }
        return true;
    }

    public boolean a(ba baVar, boolean z) {
        this.f1326g = z;
        return a(baVar);
    }

    public boolean a(com.applovin.exoplayer2.h.n nVar) {
        ad adVar = this.j;
        return adVar != null && adVar.f1304a == nVar;
    }

    public ad b() {
        return this.j;
    }

    public ad c() {
        return this.f1327h;
    }

    public ad d() {
        return this.i;
    }

    public ad e() {
        ad adVar = this.i;
        com.applovin.exoplayer2.l.a.b((adVar == null || adVar.g() == null) ? false : true);
        this.i = this.i.g();
        h();
        return this.i;
    }

    public ad f() {
        ad adVar = this.f1327h;
        if (adVar == null) {
            return null;
        }
        if (adVar == this.i) {
            this.i = adVar.g();
        }
        this.f1327h.f();
        int i = this.k - 1;
        this.k = i;
        if (i == 0) {
            this.j = null;
            this.l = this.f1327h.f1305b;
            this.m = this.f1327h.f1309f.f1312a.f3088d;
        }
        this.f1327h = this.f1327h.g();
        h();
        return this.f1327h;
    }

    public void g() {
        if (this.k == 0) {
            return;
        }
        ad adVar = (ad) com.applovin.exoplayer2.l.a.a(this.f1327h);
        this.l = adVar.f1305b;
        this.m = adVar.f1309f.f1312a.f3088d;
        while (adVar != null) {
            adVar.f();
            adVar = adVar.g();
        }
        this.f1327h = null;
        this.j = null;
        this.i = null;
        this.k = 0;
        h();
    }
}
