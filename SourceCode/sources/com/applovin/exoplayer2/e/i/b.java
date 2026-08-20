package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.b.b;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class b implements j {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.x f2447a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2448b;

    /* renamed from: c  reason: collision with root package name */
    private final String f2449c;

    /* renamed from: d  reason: collision with root package name */
    private String f2450d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2451e;

    /* renamed from: f  reason: collision with root package name */
    private int f2452f;

    /* renamed from: g  reason: collision with root package name */
    private int f2453g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2454h;
    private long i;
    private com.applovin.exoplayer2.v j;
    private int k;
    private long l;

    public b() {
        this(null);
    }

    public b(String str) {
        com.applovin.exoplayer2.l.x xVar = new com.applovin.exoplayer2.l.x(new byte[128]);
        this.f2447a = xVar;
        this.f2448b = new com.applovin.exoplayer2.l.y(xVar.f3860a);
        this.f2452f = 0;
        this.l = C.TIME_UNSET;
        this.f2449c = str;
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, byte[] bArr, int i) {
        int min = Math.min(yVar.a(), i - this.f2453g);
        yVar.a(bArr, this.f2453g, min);
        int i2 = this.f2453g + min;
        this.f2453g = i2;
        return i2 == i;
    }

    private boolean b(com.applovin.exoplayer2.l.y yVar) {
        while (true) {
            boolean z = false;
            if (yVar.a() <= 0) {
                return false;
            }
            if (this.f2454h) {
                int h2 = yVar.h();
                if (h2 == 119) {
                    this.f2454h = false;
                    return true;
                }
                if (h2 != 11) {
                    this.f2454h = z;
                }
                z = true;
                this.f2454h = z;
            } else {
                if (yVar.h() != 11) {
                    this.f2454h = z;
                }
                z = true;
                this.f2454h = z;
            }
        }
    }

    private void c() {
        this.f2447a.a(0);
        b.a a2 = com.applovin.exoplayer2.b.b.a(this.f2447a);
        if (this.j == null || a2.f1458d != this.j.y || a2.f1457c != this.j.z || !ai.a((Object) a2.f1455a, (Object) this.j.l)) {
            com.applovin.exoplayer2.v a3 = new v.a().a(this.f2450d).f(a2.f1455a).k(a2.f1458d).l(a2.f1457c).c(this.f2449c).a();
            this.j = a3;
            this.f2451e.a(a3);
        }
        this.k = a2.f1459e;
        this.i = (a2.f1460f * 1000000) / this.j.z;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.f2452f = 0;
        this.f2453g = 0;
        this.f2454h = false;
        this.l = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.l = j;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.a();
        this.f2450d = dVar.c();
        this.f2451e = jVar.a(dVar.b(), 1);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.a(this.f2451e);
        while (yVar.a() > 0) {
            int i = this.f2452f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(yVar.a(), this.k - this.f2453g);
                        this.f2451e.a(yVar, min);
                        int i2 = this.f2453g + min;
                        this.f2453g = i2;
                        int i3 = this.k;
                        if (i2 == i3) {
                            long j = this.l;
                            if (j != C.TIME_UNSET) {
                                this.f2451e.a(j, 1, i3, 0, null);
                                this.l += this.i;
                            }
                            this.f2452f = 0;
                        }
                    }
                } else if (a(yVar, this.f2448b.d(), 128)) {
                    c();
                    this.f2448b.d(0);
                    this.f2451e.a(this.f2448b, 128);
                    this.f2452f = 2;
                }
            } else if (b(yVar)) {
                this.f2452f = 1;
                this.f2448b.d()[0] = 11;
                this.f2448b.d()[1] = 119;
                this.f2453g = 2;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
