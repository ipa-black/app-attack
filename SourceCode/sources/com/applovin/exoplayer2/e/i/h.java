package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class h implements j {

    /* renamed from: b  reason: collision with root package name */
    private final String f2486b;

    /* renamed from: c  reason: collision with root package name */
    private String f2487c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2488d;

    /* renamed from: f  reason: collision with root package name */
    private int f2490f;

    /* renamed from: g  reason: collision with root package name */
    private int f2491g;

    /* renamed from: h  reason: collision with root package name */
    private long f2492h;
    private com.applovin.exoplayer2.v i;
    private int j;

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2485a = new com.applovin.exoplayer2.l.y(new byte[18]);

    /* renamed from: e  reason: collision with root package name */
    private int f2489e = 0;
    private long k = C.TIME_UNSET;

    public h(String str) {
        this.f2486b = str;
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, byte[] bArr, int i) {
        int min = Math.min(yVar.a(), i - this.f2490f);
        yVar.a(bArr, this.f2490f, min);
        int i2 = this.f2490f + min;
        this.f2490f = i2;
        return i2 == i;
    }

    private boolean b(com.applovin.exoplayer2.l.y yVar) {
        while (yVar.a() > 0) {
            int i = this.f2491g << 8;
            this.f2491g = i;
            int h2 = i | yVar.h();
            this.f2491g = h2;
            if (com.applovin.exoplayer2.b.o.a(h2)) {
                byte[] d2 = this.f2485a.d();
                int i2 = this.f2491g;
                d2[0] = (byte) ((i2 >> 24) & 255);
                d2[1] = (byte) ((i2 >> 16) & 255);
                d2[2] = (byte) ((i2 >> 8) & 255);
                d2[3] = (byte) (i2 & 255);
                this.f2490f = 4;
                this.f2491g = 0;
                return true;
            }
        }
        return false;
    }

    private void c() {
        byte[] d2 = this.f2485a.d();
        if (this.i == null) {
            com.applovin.exoplayer2.v a2 = com.applovin.exoplayer2.b.o.a(d2, this.f2487c, this.f2486b, null);
            this.i = a2;
            this.f2488d.a(a2);
        }
        this.j = com.applovin.exoplayer2.b.o.b(d2);
        this.f2492h = (int) ((com.applovin.exoplayer2.b.o.a(d2) * 1000000) / this.i.z);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.f2489e = 0;
        this.f2490f = 0;
        this.f2491g = 0;
        this.k = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.a();
        this.f2487c = dVar.c();
        this.f2488d = jVar.a(dVar.b(), 1);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.a(this.f2488d);
        while (yVar.a() > 0) {
            int i = this.f2489e;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException();
                    }
                    int min = Math.min(yVar.a(), this.j - this.f2490f);
                    this.f2488d.a(yVar, min);
                    int i2 = this.f2490f + min;
                    this.f2490f = i2;
                    int i3 = this.j;
                    if (i2 == i3) {
                        long j = this.k;
                        if (j != C.TIME_UNSET) {
                            this.f2488d.a(j, 1, i3, 0, null);
                            this.k += this.f2492h;
                        }
                        this.f2489e = 0;
                    }
                } else if (a(yVar, this.f2485a.d(), 18)) {
                    c();
                    this.f2485a.d(0);
                    this.f2488d.a(this.f2485a, 18);
                    this.f2489e = 2;
                }
            } else if (b(yVar)) {
                this.f2489e = 1;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
