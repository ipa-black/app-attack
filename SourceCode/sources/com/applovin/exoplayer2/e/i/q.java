package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class q implements j {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2588a;

    /* renamed from: b  reason: collision with root package name */
    private final r.a f2589b;

    /* renamed from: c  reason: collision with root package name */
    private final String f2590c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2591d;

    /* renamed from: e  reason: collision with root package name */
    private String f2592e;

    /* renamed from: f  reason: collision with root package name */
    private int f2593f;

    /* renamed from: g  reason: collision with root package name */
    private int f2594g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2595h;
    private boolean i;
    private long j;
    private int k;
    private long l;

    public q() {
        this(null);
    }

    public q(String str) {
        this.f2593f = 0;
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(4);
        this.f2588a = yVar;
        yVar.d()[0] = -1;
        this.f2589b = new r.a();
        this.l = C.TIME_UNSET;
        this.f2590c = str;
    }

    private void b(com.applovin.exoplayer2.l.y yVar) {
        byte[] d2 = yVar.d();
        int b2 = yVar.b();
        for (int c2 = yVar.c(); c2 < b2; c2++) {
            byte b3 = d2[c2];
            boolean z = (b3 & 255) == 255;
            boolean z2 = this.i && (b3 & 224) == 224;
            this.i = z;
            if (z2) {
                yVar.d(c2 + 1);
                this.i = false;
                this.f2588a.d()[1] = d2[c2];
                this.f2594g = 2;
                this.f2593f = 1;
                return;
            }
        }
        yVar.d(b2);
    }

    private void c(com.applovin.exoplayer2.l.y yVar) {
        int min = Math.min(yVar.a(), 4 - this.f2594g);
        yVar.a(this.f2588a.d(), this.f2594g, min);
        int i = this.f2594g + min;
        this.f2594g = i;
        if (i < 4) {
            return;
        }
        this.f2588a.d(0);
        if (!this.f2589b.a(this.f2588a.q())) {
            this.f2594g = 0;
            this.f2593f = 1;
            return;
        }
        this.k = this.f2589b.f1585c;
        if (!this.f2595h) {
            this.j = (this.f2589b.f1589g * 1000000) / this.f2589b.f1586d;
            this.f2591d.a(new v.a().a(this.f2592e).f(this.f2589b.f1584b).f(4096).k(this.f2589b.f1587e).l(this.f2589b.f1586d).c(this.f2590c).a());
            this.f2595h = true;
        }
        this.f2588a.d(0);
        this.f2591d.a(this.f2588a, 4);
        this.f2593f = 2;
    }

    private void d(com.applovin.exoplayer2.l.y yVar) {
        int min = Math.min(yVar.a(), this.k - this.f2594g);
        this.f2591d.a(yVar, min);
        int i = this.f2594g + min;
        this.f2594g = i;
        int i2 = this.k;
        if (i < i2) {
            return;
        }
        long j = this.l;
        if (j != C.TIME_UNSET) {
            this.f2591d.a(j, 1, i2, 0, null);
            this.l += this.j;
        }
        this.f2594g = 0;
        this.f2593f = 0;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.f2593f = 0;
        this.f2594g = 0;
        this.i = false;
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
        this.f2592e = dVar.c();
        this.f2591d = jVar.a(dVar.b(), 1);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.a(this.f2591d);
        while (yVar.a() > 0) {
            int i = this.f2593f;
            if (i == 0) {
                b(yVar);
            } else if (i == 1) {
                c(yVar);
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                d(yVar);
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
