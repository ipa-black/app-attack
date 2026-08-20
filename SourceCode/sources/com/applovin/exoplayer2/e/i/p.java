package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.b.a;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Collections;
/* loaded from: classes.dex */
public final class p implements j {

    /* renamed from: a  reason: collision with root package name */
    private final String f2580a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2581b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.x f2582c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2583d;

    /* renamed from: e  reason: collision with root package name */
    private String f2584e;

    /* renamed from: f  reason: collision with root package name */
    private com.applovin.exoplayer2.v f2585f;

    /* renamed from: g  reason: collision with root package name */
    private int f2586g;

    /* renamed from: h  reason: collision with root package name */
    private int f2587h;
    private int i;
    private int j;
    private long k;
    private boolean l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private long q;
    private int r;
    private long s;
    private int t;
    private String u;

    public p(String str) {
        this.f2580a = str;
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(1024);
        this.f2581b = yVar;
        this.f2582c = new com.applovin.exoplayer2.l.x(yVar.d());
        this.k = C.TIME_UNSET;
    }

    private void a(int i) {
        this.f2581b.a(i);
        this.f2582c.a(this.f2581b.d());
    }

    private void a(com.applovin.exoplayer2.l.x xVar) throws ai {
        if (!xVar.e()) {
            this.l = true;
            b(xVar);
        } else if (!this.l) {
            return;
        }
        if (this.m != 0) {
            throw ai.b(null, null);
        }
        if (this.n != 0) {
            throw ai.b(null, null);
        }
        a(xVar, e(xVar));
        if (this.p) {
            xVar.b((int) this.q);
        }
    }

    private void a(com.applovin.exoplayer2.l.x xVar, int i) {
        int b2 = xVar.b();
        if ((b2 & 7) == 0) {
            this.f2581b.d(b2 >> 3);
        } else {
            xVar.a(this.f2581b.d(), 0, i * 8);
            this.f2581b.d(0);
        }
        this.f2583d.a(this.f2581b, i);
        long j = this.k;
        if (j != C.TIME_UNSET) {
            this.f2583d.a(j, 1, i, 0, null);
            this.k += this.s;
        }
    }

    private void b(com.applovin.exoplayer2.l.x xVar) throws ai {
        boolean e2;
        int c2 = xVar.c(1);
        int c3 = c2 == 1 ? xVar.c(1) : 0;
        this.m = c3;
        if (c3 != 0) {
            throw ai.b(null, null);
        }
        if (c2 == 1) {
            f(xVar);
        }
        if (!xVar.e()) {
            throw ai.b(null, null);
        }
        this.n = xVar.c(6);
        int c4 = xVar.c(4);
        int c5 = xVar.c(3);
        if (c4 != 0 || c5 != 0) {
            throw ai.b(null, null);
        }
        if (c2 == 0) {
            int b2 = xVar.b();
            int d2 = d(xVar);
            xVar.a(b2);
            byte[] bArr = new byte[(d2 + 7) / 8];
            xVar.a(bArr, 0, d2);
            com.applovin.exoplayer2.v a2 = new v.a().a(this.f2584e).f(MimeTypes.AUDIO_AAC).d(this.u).k(this.t).l(this.r).a(Collections.singletonList(bArr)).c(this.f2580a).a();
            if (!a2.equals(this.f2585f)) {
                this.f2585f = a2;
                this.s = 1024000000 / a2.z;
                this.f2583d.a(a2);
            }
        } else {
            xVar.b(((int) f(xVar)) - d(xVar));
        }
        c(xVar);
        boolean e3 = xVar.e();
        this.p = e3;
        this.q = 0L;
        if (e3) {
            if (c2 == 1) {
                this.q = f(xVar);
            } else {
                do {
                    e2 = xVar.e();
                    this.q = (this.q << 8) + xVar.c(8);
                } while (e2);
            }
        }
        if (xVar.e()) {
            xVar.b(8);
        }
    }

    private void c(com.applovin.exoplayer2.l.x xVar) {
        int i;
        int c2 = xVar.c(3);
        this.o = c2;
        if (c2 == 0) {
            i = 8;
        } else if (c2 != 1) {
            if (c2 == 3 || c2 == 4 || c2 == 5) {
                xVar.b(6);
                return;
            } else if (c2 != 6 && c2 != 7) {
                throw new IllegalStateException();
            } else {
                xVar.b(1);
                return;
            }
        } else {
            i = 9;
        }
        xVar.b(i);
    }

    private int d(com.applovin.exoplayer2.l.x xVar) throws ai {
        int a2 = xVar.a();
        a.C0022a a3 = com.applovin.exoplayer2.b.a.a(xVar, true);
        this.u = a3.f1448c;
        this.r = a3.f1446a;
        this.t = a3.f1447b;
        return a2 - xVar.a();
    }

    private int e(com.applovin.exoplayer2.l.x xVar) throws ai {
        int c2;
        if (this.o == 0) {
            int i = 0;
            do {
                c2 = xVar.c(8);
                i += c2;
            } while (c2 == 255);
            return i;
        }
        throw ai.b(null, null);
    }

    private static long f(com.applovin.exoplayer2.l.x xVar) {
        return xVar.c((xVar.c(2) + 1) * 8);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.f2586g = 0;
        this.k = C.TIME_UNSET;
        this.l = false;
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
        this.f2583d = jVar.a(dVar.b(), 1);
        this.f2584e = dVar.c();
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) throws ai {
        com.applovin.exoplayer2.l.a.a(this.f2583d);
        while (yVar.a() > 0) {
            int i = this.f2586g;
            if (i != 0) {
                if (i == 1) {
                    int h2 = yVar.h();
                    if ((h2 & 224) == 224) {
                        this.j = h2;
                        this.f2586g = 2;
                    } else if (h2 != 86) {
                        this.f2586g = 0;
                    }
                } else if (i == 2) {
                    int h3 = ((this.j & (-225)) << 8) | yVar.h();
                    this.i = h3;
                    if (h3 > this.f2581b.d().length) {
                        a(this.i);
                    }
                    this.f2587h = 0;
                    this.f2586g = 3;
                } else if (i != 3) {
                    throw new IllegalStateException();
                } else {
                    int min = Math.min(yVar.a(), this.i - this.f2587h);
                    yVar.a(this.f2582c.f3860a, this.f2587h, min);
                    int i2 = this.f2587h + min;
                    this.f2587h = i2;
                    if (i2 == this.i) {
                        this.f2582c.a(0);
                        a(this.f2582c);
                        this.f2586g = 0;
                    }
                }
            } else if (yVar.h() == 86) {
                this.f2586g = 1;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
