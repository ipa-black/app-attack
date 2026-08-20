package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.b.c;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
/* loaded from: classes.dex */
public final class d implements j {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.x f2459a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2460b;

    /* renamed from: c  reason: collision with root package name */
    private final String f2461c;

    /* renamed from: d  reason: collision with root package name */
    private String f2462d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2463e;

    /* renamed from: f  reason: collision with root package name */
    private int f2464f;

    /* renamed from: g  reason: collision with root package name */
    private int f2465g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2466h;
    private boolean i;
    private long j;
    private com.applovin.exoplayer2.v k;
    private int l;
    private long m;

    public d() {
        this(null);
    }

    public d(String str) {
        com.applovin.exoplayer2.l.x xVar = new com.applovin.exoplayer2.l.x(new byte[16]);
        this.f2459a = xVar;
        this.f2460b = new com.applovin.exoplayer2.l.y(xVar.f3860a);
        this.f2464f = 0;
        this.f2465g = 0;
        this.f2466h = false;
        this.i = false;
        this.m = C.TIME_UNSET;
        this.f2461c = str;
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, byte[] bArr, int i) {
        int min = Math.min(yVar.a(), i - this.f2465g);
        yVar.a(bArr, this.f2465g, min);
        int i2 = this.f2465g + min;
        this.f2465g = i2;
        return i2 == i;
    }

    private boolean b(com.applovin.exoplayer2.l.y yVar) {
        int h2;
        while (true) {
            if (yVar.a() <= 0) {
                return false;
            }
            if (this.f2466h) {
                h2 = yVar.h();
                this.f2466h = h2 == 172;
                if (h2 == 64 || h2 == 65) {
                    break;
                }
            } else {
                this.f2466h = yVar.h() == 172;
            }
        }
        this.i = h2 == 65;
        return true;
    }

    private void c() {
        this.f2459a.a(0);
        c.a a2 = com.applovin.exoplayer2.b.c.a(this.f2459a);
        if (this.k == null || a2.f1464c != this.k.y || a2.f1463b != this.k.z || !MimeTypes.AUDIO_AC4.equals(this.k.l)) {
            com.applovin.exoplayer2.v a3 = new v.a().a(this.f2462d).f(MimeTypes.AUDIO_AC4).k(a2.f1464c).l(a2.f1463b).c(this.f2461c).a();
            this.k = a3;
            this.f2463e.a(a3);
        }
        this.l = a2.f1465d;
        this.j = (a2.f1466e * 1000000) / this.k.z;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.f2464f = 0;
        this.f2465g = 0;
        this.f2466h = false;
        this.i = false;
        this.m = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.a();
        this.f2462d = dVar.c();
        this.f2463e = jVar.a(dVar.b(), 1);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.a(this.f2463e);
        while (yVar.a() > 0) {
            int i = this.f2464f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(yVar.a(), this.l - this.f2465g);
                        this.f2463e.a(yVar, min);
                        int i2 = this.f2465g + min;
                        this.f2465g = i2;
                        int i3 = this.l;
                        if (i2 == i3) {
                            long j = this.m;
                            if (j != C.TIME_UNSET) {
                                this.f2463e.a(j, 1, i3, 0, null);
                                this.m += this.j;
                            }
                            this.f2464f = 0;
                        }
                    }
                } else if (a(yVar, this.f2460b.d(), 16)) {
                    c();
                    this.f2460b.d(0);
                    this.f2463e.a(this.f2460b, 16);
                    this.f2464f = 2;
                }
            } else if (b(yVar)) {
                this.f2464f = 1;
                this.f2460b.d()[0] = -84;
                this.f2460b.d()[1] = (byte) (this.i ? 65 : 64);
                this.f2465g = 2;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
