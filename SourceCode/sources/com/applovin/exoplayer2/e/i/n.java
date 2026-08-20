package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import java.util.Collections;
/* loaded from: classes.dex */
public final class n implements j {

    /* renamed from: a  reason: collision with root package name */
    private final z f2558a;

    /* renamed from: b  reason: collision with root package name */
    private String f2559b;

    /* renamed from: c  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2560c;

    /* renamed from: d  reason: collision with root package name */
    private a f2561d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2562e;
    private long l;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f2563f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    private final r f2564g = new r(32, 128);

    /* renamed from: h  reason: collision with root package name */
    private final r f2565h = new r(33, 128);
    private final r i = new r(34, 128);
    private final r j = new r(39, 128);
    private final r k = new r(40, 128);
    private long m = C.TIME_UNSET;
    private final com.applovin.exoplayer2.l.y n = new com.applovin.exoplayer2.l.y();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.exoplayer2.e.x f2566a;

        /* renamed from: b  reason: collision with root package name */
        private long f2567b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f2568c;

        /* renamed from: d  reason: collision with root package name */
        private int f2569d;

        /* renamed from: e  reason: collision with root package name */
        private long f2570e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f2571f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f2572g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f2573h;
        private boolean i;
        private boolean j;
        private long k;
        private long l;
        private boolean m;

        public a(com.applovin.exoplayer2.e.x xVar) {
            this.f2566a = xVar;
        }

        private void a(int i) {
            long j = this.l;
            if (j == C.TIME_UNSET) {
                return;
            }
            boolean z = this.m;
            this.f2566a.a(j, z ? 1 : 0, (int) (this.f2567b - this.k), i, null);
        }

        private static boolean b(int i) {
            return (32 <= i && i <= 35) || i == 39;
        }

        private static boolean c(int i) {
            return i < 32 || i == 40;
        }

        public void a() {
            this.f2571f = false;
            this.f2572g = false;
            this.f2573h = false;
            this.i = false;
            this.j = false;
        }

        public void a(long j, int i, int i2, long j2, boolean z) {
            boolean z2 = false;
            this.f2572g = false;
            this.f2573h = false;
            this.f2570e = j2;
            this.f2569d = 0;
            this.f2567b = j;
            if (!c(i2)) {
                if (this.i && !this.j) {
                    if (z) {
                        a(i);
                    }
                    this.i = false;
                }
                if (b(i2)) {
                    this.f2573h = !this.j;
                    this.j = true;
                }
            }
            boolean z3 = i2 >= 16 && i2 <= 21;
            this.f2568c = z3;
            if (z3 || i2 <= 9) {
                z2 = true;
            }
            this.f2571f = z2;
        }

        public void a(long j, int i, boolean z) {
            if (this.j && this.f2572g) {
                this.m = this.f2568c;
                this.j = false;
            } else if (this.f2573h || this.f2572g) {
                if (z && this.i) {
                    a(i + ((int) (j - this.f2567b)));
                }
                this.k = this.f2567b;
                this.l = this.f2570e;
                this.m = this.f2568c;
                this.i = true;
            }
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.f2571f) {
                int i3 = this.f2569d;
                int i4 = (i + 2) - i3;
                if (i4 >= i2) {
                    this.f2569d = i3 + (i2 - i);
                    return;
                }
                this.f2572g = (bArr[i4] & 128) != 0;
                this.f2571f = false;
            }
        }
    }

    public n(z zVar) {
        this.f2558a = zVar;
    }

    private static com.applovin.exoplayer2.v a(String str, r rVar, r rVar2, r rVar3) {
        byte[] bArr = new byte[rVar.f2597b + rVar2.f2597b + rVar3.f2597b];
        System.arraycopy(rVar.f2596a, 0, bArr, 0, rVar.f2597b);
        System.arraycopy(rVar2.f2596a, 0, bArr, rVar.f2597b, rVar2.f2597b);
        System.arraycopy(rVar3.f2596a, 0, bArr, rVar.f2597b + rVar2.f2597b, rVar3.f2597b);
        com.applovin.exoplayer2.l.z zVar = new com.applovin.exoplayer2.l.z(rVar2.f2596a, 0, rVar2.f2597b);
        zVar.a(44);
        int c2 = zVar.c(3);
        zVar.a();
        zVar.a(88);
        zVar.a(8);
        int i = 0;
        for (int i2 = 0; i2 < c2; i2++) {
            if (zVar.b()) {
                i += 89;
            }
            if (zVar.b()) {
                i += 8;
            }
        }
        zVar.a(i);
        if (c2 > 0) {
            zVar.a((8 - c2) * 2);
        }
        zVar.d();
        int d2 = zVar.d();
        if (d2 == 3) {
            zVar.a();
        }
        int d3 = zVar.d();
        int d4 = zVar.d();
        if (zVar.b()) {
            int d5 = zVar.d();
            int d6 = zVar.d();
            int d7 = zVar.d();
            int d8 = zVar.d();
            d3 -= ((d2 == 1 || d2 == 2) ? 2 : 1) * (d5 + d6);
            d4 -= (d2 == 1 ? 2 : 1) * (d7 + d8);
        }
        zVar.d();
        zVar.d();
        int d9 = zVar.d();
        int i3 = zVar.b() ? 0 : c2;
        while (true) {
            zVar.d();
            zVar.d();
            zVar.d();
            if (i3 > c2) {
                break;
            }
            i3++;
        }
        zVar.d();
        zVar.d();
        zVar.d();
        if (zVar.b() && zVar.b()) {
            a(zVar);
        }
        zVar.a(2);
        if (zVar.b()) {
            zVar.a(8);
            zVar.d();
            zVar.d();
            zVar.a();
        }
        b(zVar);
        if (zVar.b()) {
            for (int i4 = 0; i4 < zVar.d(); i4++) {
                zVar.a(d9 + 5);
            }
        }
        zVar.a(2);
        float f2 = 1.0f;
        if (zVar.b()) {
            if (zVar.b()) {
                int c3 = zVar.c(8);
                if (c3 == 255) {
                    int c4 = zVar.c(16);
                    int c5 = zVar.c(16);
                    if (c4 != 0 && c5 != 0) {
                        f2 = c4 / c5;
                    }
                } else if (c3 < com.applovin.exoplayer2.l.v.f3838b.length) {
                    f2 = com.applovin.exoplayer2.l.v.f3838b[c3];
                } else {
                    com.applovin.exoplayer2.l.q.c("H265Reader", "Unexpected aspect_ratio_idc value: " + c3);
                }
            }
            if (zVar.b()) {
                zVar.a();
            }
            if (zVar.b()) {
                zVar.a(4);
                if (zVar.b()) {
                    zVar.a(24);
                }
            }
            if (zVar.b()) {
                zVar.d();
                zVar.d();
            }
            zVar.a();
            if (zVar.b()) {
                d4 *= 2;
            }
        }
        zVar.a(rVar2.f2596a, 0, rVar2.f2597b);
        zVar.a(24);
        return new v.a().a(str).f("video/hevc").d(com.applovin.exoplayer2.l.e.a(zVar)).g(d3).h(d4).b(f2).a(Collections.singletonList(bArr)).a();
    }

    private void a(long j, int i, int i2, long j2) {
        this.f2561d.a(j, i, i2, j2, this.f2562e);
        if (!this.f2562e) {
            this.f2564g.a(i2);
            this.f2565h.a(i2);
            this.i.a(i2);
        }
        this.j.a(i2);
        this.k.a(i2);
    }

    private static void a(com.applovin.exoplayer2.l.z zVar) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (zVar.b()) {
                    int min = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        zVar.e();
                    }
                    for (int i4 = 0; i4 < min; i4++) {
                        zVar.e();
                    }
                } else {
                    zVar.d();
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    private void a(byte[] bArr, int i, int i2) {
        this.f2561d.a(bArr, i, i2);
        if (!this.f2562e) {
            this.f2564g.a(bArr, i, i2);
            this.f2565h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    private void b(long j, int i, int i2, long j2) {
        this.f2561d.a(j, i, this.f2562e);
        if (!this.f2562e) {
            this.f2564g.b(i2);
            this.f2565h.b(i2);
            this.i.b(i2);
            if (this.f2564g.b() && this.f2565h.b() && this.i.b()) {
                this.f2560c.a(a(this.f2559b, this.f2564g, this.f2565h, this.i));
                this.f2562e = true;
            }
        }
        if (this.j.b(i2)) {
            this.n.a(this.j.f2596a, com.applovin.exoplayer2.l.v.a(this.j.f2596a, this.j.f2597b));
            this.n.e(5);
            this.f2558a.a(j2, this.n);
        }
        if (this.k.b(i2)) {
            this.n.a(this.k.f2596a, com.applovin.exoplayer2.l.v.a(this.k.f2596a, this.k.f2597b));
            this.n.e(5);
            this.f2558a.a(j2, this.n);
        }
    }

    private static void b(com.applovin.exoplayer2.l.z zVar) {
        int d2 = zVar.d();
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < d2; i2++) {
            if (i2 != 0) {
                z = zVar.b();
            }
            if (z) {
                zVar.a();
                zVar.d();
                for (int i3 = 0; i3 <= i; i3++) {
                    if (zVar.b()) {
                        zVar.a();
                    }
                }
            } else {
                int d3 = zVar.d();
                int d4 = zVar.d();
                int i4 = d3 + d4;
                for (int i5 = 0; i5 < d3; i5++) {
                    zVar.d();
                    zVar.a();
                }
                for (int i6 = 0; i6 < d4; i6++) {
                    zVar.d();
                    zVar.a();
                }
                i = i4;
            }
        }
    }

    private void c() {
        com.applovin.exoplayer2.l.a.a(this.f2560c);
        ai.a(this.f2561d);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.l = 0L;
        this.m = C.TIME_UNSET;
        com.applovin.exoplayer2.l.v.a(this.f2563f);
        this.f2564g.a();
        this.f2565h.a();
        this.i.a();
        this.j.a();
        this.k.a();
        a aVar = this.f2561d;
        if (aVar != null) {
            aVar.a();
        }
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
        this.f2559b = dVar.c();
        this.f2560c = jVar.a(dVar.b(), 2);
        this.f2561d = new a(this.f2560c);
        this.f2558a.a(jVar, dVar);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        c();
        while (yVar.a() > 0) {
            int c2 = yVar.c();
            int b2 = yVar.b();
            byte[] d2 = yVar.d();
            this.l += yVar.a();
            this.f2560c.a(yVar, yVar.a());
            while (c2 < b2) {
                int a2 = com.applovin.exoplayer2.l.v.a(d2, c2, b2, this.f2563f);
                if (a2 == b2) {
                    a(d2, c2, b2);
                    return;
                }
                int c3 = com.applovin.exoplayer2.l.v.c(d2, a2);
                int i = a2 - c2;
                if (i > 0) {
                    a(d2, c2, a2);
                }
                int i2 = b2 - a2;
                long j = this.l - i2;
                b(j, i2, i < 0 ? -i : 0, this.m);
                a(j, i2, c3, this.m);
                c2 = a2 + 3;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
