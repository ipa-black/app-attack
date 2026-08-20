package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.b.a;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes.dex */
public final class f implements j {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f2475a = {73, 68, 51};

    /* renamed from: b  reason: collision with root package name */
    private final boolean f2476b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.x f2477c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2478d;

    /* renamed from: e  reason: collision with root package name */
    private final String f2479e;

    /* renamed from: f  reason: collision with root package name */
    private String f2480f;

    /* renamed from: g  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2481g;

    /* renamed from: h  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2482h;
    private int i;
    private int j;
    private int k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private long r;
    private int s;
    private long t;
    private com.applovin.exoplayer2.e.x u;
    private long v;

    public f(boolean z) {
        this(z, null);
    }

    public f(boolean z, String str) {
        this.f2477c = new com.applovin.exoplayer2.l.x(new byte[7]);
        this.f2478d = new com.applovin.exoplayer2.l.y(Arrays.copyOf(f2475a, 10));
        e();
        this.n = -1;
        this.o = -1;
        this.r = C.TIME_UNSET;
        this.t = C.TIME_UNSET;
        this.f2476b = z;
        this.f2479e = str;
    }

    private void a(com.applovin.exoplayer2.e.x xVar, long j, int i, int i2) {
        this.i = 4;
        this.j = i;
        this.u = xVar;
        this.v = j;
        this.s = i2;
    }

    private boolean a(byte b2, byte b3) {
        return a(((b2 & 255) << 8) | (b3 & 255));
    }

    public static boolean a(int i) {
        return (i & 65526) == 65520;
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, int i) {
        yVar.d(i + 1);
        if (b(yVar, this.f2477c.f3860a, 1)) {
            this.f2477c.a(4);
            int c2 = this.f2477c.c(1);
            int i2 = this.n;
            if (i2 == -1 || c2 == i2) {
                if (this.o != -1) {
                    if (!b(yVar, this.f2477c.f3860a, 1)) {
                        return true;
                    }
                    this.f2477c.a(2);
                    if (this.f2477c.c(4) != this.o) {
                        return false;
                    }
                    yVar.d(i + 2);
                }
                if (b(yVar, this.f2477c.f3860a, 4)) {
                    this.f2477c.a(14);
                    int c3 = this.f2477c.c(13);
                    if (c3 < 7) {
                        return false;
                    }
                    byte[] d2 = yVar.d();
                    int b2 = yVar.b();
                    int i3 = i + c3;
                    if (i3 >= b2) {
                        return true;
                    }
                    byte b3 = d2[i3];
                    if (b3 == -1) {
                        int i4 = i3 + 1;
                        if (i4 == b2) {
                            return true;
                        }
                        return a((byte) -1, d2[i4]) && ((d2[i4] & 8) >> 3) == c2;
                    } else if (b3 != 73) {
                        return false;
                    } else {
                        int i5 = i3 + 1;
                        if (i5 == b2) {
                            return true;
                        }
                        if (d2[i5] != 68) {
                            return false;
                        }
                        int i6 = i3 + 2;
                        return i6 == b2 || d2[i6] == 51;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, byte[] bArr, int i) {
        int min = Math.min(yVar.a(), i - this.j);
        yVar.a(bArr, this.j, min);
        int i2 = this.j + min;
        this.j = i2;
        return i2 == i;
    }

    private void b(com.applovin.exoplayer2.l.y yVar) {
        int i;
        byte[] d2 = yVar.d();
        int c2 = yVar.c();
        int b2 = yVar.b();
        while (c2 < b2) {
            int i2 = c2 + 1;
            byte b3 = d2[c2];
            int i3 = b3 & 255;
            if (this.k == 512 && a((byte) -1, (byte) i3) && (this.m || a(yVar, c2 - 1))) {
                this.p = (b3 & 8) >> 3;
                this.l = (b3 & 1) == 0;
                if (this.m) {
                    g();
                } else {
                    h();
                }
                yVar.d(i2);
                return;
            }
            int i4 = this.k;
            int i5 = i3 | i4;
            if (i5 != 329) {
                if (i5 == 511) {
                    this.k = 512;
                } else if (i5 == 836) {
                    i = 1024;
                } else if (i5 == 1075) {
                    f();
                    yVar.d(i2);
                    return;
                } else if (i4 != 256) {
                    this.k = 256;
                }
                c2 = i2;
            } else {
                i = 768;
            }
            this.k = i;
            c2 = i2;
        }
        yVar.d(c2);
    }

    private boolean b(com.applovin.exoplayer2.l.y yVar, byte[] bArr, int i) {
        if (yVar.a() < i) {
            return false;
        }
        yVar.a(bArr, 0, i);
        return true;
    }

    private void c(com.applovin.exoplayer2.l.y yVar) {
        if (yVar.a() == 0) {
            return;
        }
        this.f2477c.f3860a[0] = yVar.d()[yVar.c()];
        this.f2477c.a(2);
        int c2 = this.f2477c.c(4);
        int i = this.o;
        if (i != -1 && c2 != i) {
            d();
            return;
        }
        if (!this.m) {
            this.m = true;
            this.n = this.p;
            this.o = c2;
        }
        g();
    }

    private void d() {
        this.m = false;
        e();
    }

    private void d(com.applovin.exoplayer2.l.y yVar) {
        int min = Math.min(yVar.a(), this.s - this.j);
        this.u.a(yVar, min);
        int i = this.j + min;
        this.j = i;
        int i2 = this.s;
        if (i == i2) {
            long j = this.t;
            if (j != C.TIME_UNSET) {
                this.u.a(j, 1, i2, 0, null);
                this.t += this.v;
            }
            e();
        }
    }

    private void e() {
        this.i = 0;
        this.j = 0;
        this.k = 256;
    }

    private void f() {
        this.i = 2;
        this.j = f2475a.length;
        this.s = 0;
        this.f2478d.d(0);
    }

    private void g() {
        this.i = 3;
        this.j = 0;
    }

    private void h() {
        this.i = 1;
        this.j = 0;
    }

    private void i() {
        this.f2482h.a(this.f2478d, 10);
        this.f2478d.d(6);
        a(this.f2482h, 0L, 10, this.f2478d.v() + 10);
    }

    private void j() throws ai {
        this.f2477c.a(0);
        if (this.q) {
            this.f2477c.b(10);
        } else {
            int i = 2;
            int c2 = this.f2477c.c(2) + 1;
            if (c2 != 2) {
                com.applovin.exoplayer2.l.q.c("AdtsReader", "Detected audio object type: " + c2 + ", but assuming AAC LC.");
            } else {
                i = c2;
            }
            this.f2477c.b(5);
            byte[] a2 = com.applovin.exoplayer2.b.a.a(i, this.o, this.f2477c.c(3));
            a.C0022a a3 = com.applovin.exoplayer2.b.a.a(a2);
            com.applovin.exoplayer2.v a4 = new v.a().a(this.f2480f).f(MimeTypes.AUDIO_AAC).d(a3.f1448c).k(a3.f1447b).l(a3.f1446a).a(Collections.singletonList(a2)).c(this.f2479e).a();
            this.r = 1024000000 / a4.z;
            this.f2481g.a(a4);
            this.q = true;
        }
        this.f2477c.b(4);
        int c3 = this.f2477c.c(13);
        int i2 = c3 - 7;
        if (this.l) {
            i2 = c3 - 9;
        }
        a(this.f2481g, this.r, 0, i2);
    }

    private void k() {
        com.applovin.exoplayer2.l.a.b(this.f2481g);
        com.applovin.exoplayer2.l.ai.a(this.u);
        com.applovin.exoplayer2.l.ai.a(this.f2482h);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.t = C.TIME_UNSET;
        d();
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.t = j;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.a();
        this.f2480f = dVar.c();
        com.applovin.exoplayer2.e.x a2 = jVar.a(dVar.b(), 1);
        this.f2481g = a2;
        this.u = a2;
        if (!this.f2476b) {
            this.f2482h = new com.applovin.exoplayer2.e.g();
            return;
        }
        dVar.a();
        com.applovin.exoplayer2.e.x a3 = jVar.a(dVar.b(), 5);
        this.f2482h = a3;
        a3.a(new v.a().a(dVar.c()).f(MimeTypes.APPLICATION_ID3).a());
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) throws ai {
        k();
        while (yVar.a() > 0) {
            int i = this.i;
            if (i == 0) {
                b(yVar);
            } else if (i == 1) {
                c(yVar);
            } else if (i != 2) {
                if (i == 3) {
                    if (a(yVar, this.f2477c.f3860a, this.l ? 7 : 5)) {
                        j();
                    }
                } else if (i != 4) {
                    throw new IllegalStateException();
                } else {
                    d(yVar);
                }
            } else if (a(yVar, this.f2478d.d(), 10)) {
                i();
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }

    public long c() {
        return this.r;
    }
}
