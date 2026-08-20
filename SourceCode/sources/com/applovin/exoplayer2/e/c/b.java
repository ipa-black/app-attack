package com.applovin.exoplayer2.e.c;

import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* loaded from: classes.dex */
public final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f2111a = new l() { // from class: com.applovin.exoplayer2.e.c.b$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            h[] d2;
            d2 = b.d();
            return d2;
        }
    };

    /* renamed from: g  reason: collision with root package name */
    private j f2117g;
    private boolean i;
    private long j;
    private int k;
    private int l;
    private int m;
    private long n;
    private boolean o;
    private a p;
    private e q;

    /* renamed from: b  reason: collision with root package name */
    private final y f2112b = new y(4);

    /* renamed from: c  reason: collision with root package name */
    private final y f2113c = new y(9);

    /* renamed from: d  reason: collision with root package name */
    private final y f2114d = new y(11);

    /* renamed from: e  reason: collision with root package name */
    private final y f2115e = new y();

    /* renamed from: f  reason: collision with root package name */
    private final c f2116f = new c();

    /* renamed from: h  reason: collision with root package name */
    private int f2118h = 1;

    private void a() {
        if (this.o) {
            return;
        }
        this.f2117g.a(new v.b(C.TIME_UNSET));
        this.o = true;
    }

    private long b() {
        if (this.i) {
            return this.j + this.n;
        }
        if (this.f2116f.a() == C.TIME_UNSET) {
            return 0L;
        }
        return this.n;
    }

    private boolean b(i iVar) throws IOException {
        if (iVar.a(this.f2113c.d(), 0, 9, true)) {
            this.f2113c.d(0);
            this.f2113c.e(4);
            int h2 = this.f2113c.h();
            boolean z = (h2 & 4) != 0;
            boolean z2 = (h2 & 1) != 0;
            if (z && this.p == null) {
                this.p = new a(this.f2117g.a(8, 1));
            }
            if (z2 && this.q == null) {
                this.q = new e(this.f2117g.a(9, 2));
            }
            this.f2117g.a();
            this.k = this.f2113c.q() - 5;
            this.f2118h = 2;
            return true;
        }
        return false;
    }

    private void c(i iVar) throws IOException {
        iVar.b(this.k);
        this.k = 0;
        this.f2118h = 3;
    }

    private boolean d(i iVar) throws IOException {
        if (iVar.a(this.f2114d.d(), 0, 11, true)) {
            this.f2114d.d(0);
            this.l = this.f2114d.h();
            this.m = this.f2114d.m();
            this.n = this.f2114d.m();
            this.n = ((this.f2114d.h() << 24) | this.n) * 1000;
            this.f2114d.e(3);
            this.f2118h = 4;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] d() {
        return new h[]{new b()};
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean e(com.applovin.exoplayer2.e.i r10) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.b()
            int r2 = r9.l
            r3 = 8
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = 1
            if (r2 != r3) goto L23
            com.applovin.exoplayer2.e.c.a r3 = r9.p
            if (r3 == 0) goto L23
            r9.a()
            com.applovin.exoplayer2.e.c.a r2 = r9.p
            com.applovin.exoplayer2.l.y r10 = r9.f(r10)
            boolean r10 = r2.b(r10, r0)
        L21:
            r0 = r6
            goto L75
        L23:
            r3 = 9
            if (r2 != r3) goto L39
            com.applovin.exoplayer2.e.c.e r3 = r9.q
            if (r3 == 0) goto L39
            r9.a()
            com.applovin.exoplayer2.e.c.e r2 = r9.q
            com.applovin.exoplayer2.l.y r10 = r9.f(r10)
            boolean r10 = r2.b(r10, r0)
            goto L21
        L39:
            r3 = 18
            if (r2 != r3) goto L6e
            boolean r2 = r9.o
            if (r2 != 0) goto L6e
            com.applovin.exoplayer2.e.c.c r2 = r9.f2116f
            com.applovin.exoplayer2.l.y r10 = r9.f(r10)
            boolean r10 = r2.b(r10, r0)
            com.applovin.exoplayer2.e.c.c r0 = r9.f2116f
            long r0 = r0.a()
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 == 0) goto L21
            com.applovin.exoplayer2.e.j r2 = r9.f2117g
            com.applovin.exoplayer2.e.t r3 = new com.applovin.exoplayer2.e.t
            com.applovin.exoplayer2.e.c.c r7 = r9.f2116f
            long[] r7 = r7.c()
            com.applovin.exoplayer2.e.c.c r8 = r9.f2116f
            long[] r8 = r8.b()
            r3.<init>(r7, r8, r0)
            r2.a(r3)
            r9.o = r6
            goto L21
        L6e:
            int r0 = r9.m
            r10.b(r0)
            r10 = 0
            r0 = r10
        L75:
            boolean r1 = r9.i
            if (r1 != 0) goto L8f
            if (r10 == 0) goto L8f
            r9.i = r6
            com.applovin.exoplayer2.e.c.c r10 = r9.f2116f
            long r1 = r10.a()
            int r10 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r10 != 0) goto L8b
            long r1 = r9.n
            long r1 = -r1
            goto L8d
        L8b:
            r1 = 0
        L8d:
            r9.j = r1
        L8f:
            r10 = 4
            r9.k = r10
            r10 = 2
            r9.f2118h = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.c.b.e(com.applovin.exoplayer2.e.i):boolean");
    }

    private y f(i iVar) throws IOException {
        if (this.m > this.f2115e.e()) {
            y yVar = this.f2115e;
            yVar.a(new byte[Math.max(yVar.e() * 2, this.m)], 0);
        } else {
            this.f2115e.d(0);
        }
        this.f2115e.c(this.m);
        iVar.b(this.f2115e.d(), 0, this.m);
        return this.f2115e;
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(i iVar, u uVar) throws IOException {
        com.applovin.exoplayer2.l.a.a(this.f2117g);
        while (true) {
            int i = this.f2118h;
            if (i != 1) {
                if (i == 2) {
                    c(iVar);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException();
                    }
                    if (e(iVar)) {
                        return 0;
                    }
                } else if (!d(iVar)) {
                    return -1;
                }
            } else if (!b(iVar)) {
                return -1;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        if (j == 0) {
            this.f2118h = 1;
            this.i = false;
        } else {
            this.f2118h = 3;
        }
        this.k = 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.f2117g = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        iVar.d(this.f2112b.d(), 0, 3);
        this.f2112b.d(0);
        if (this.f2112b.m() != 4607062) {
            return false;
        }
        iVar.d(this.f2112b.d(), 0, 2);
        this.f2112b.d(0);
        if ((this.f2112b.i() & 250) != 0) {
            return false;
        }
        iVar.d(this.f2112b.d(), 0, 4);
        this.f2112b.d(0);
        int q = this.f2112b.q();
        iVar.a();
        iVar.c(q);
        iVar.d(this.f2112b.d(), 0, 4);
        this.f2112b.d(0);
        return this.f2112b.q() == 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
