package com.applovin.exoplayer2.e.b;

import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.m;
import com.applovin.exoplayer2.e.n;
import com.applovin.exoplayer2.e.o;
import com.applovin.exoplayer2.e.p;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
/* loaded from: classes.dex */
public final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f2093a = new l() { // from class: com.applovin.exoplayer2.e.b.b$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            h[] b2;
            b2 = b.b();
            return b2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f2094b;

    /* renamed from: c  reason: collision with root package name */
    private final y f2095c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f2096d;

    /* renamed from: e  reason: collision with root package name */
    private final m.a f2097e;

    /* renamed from: f  reason: collision with root package name */
    private j f2098f;

    /* renamed from: g  reason: collision with root package name */
    private x f2099g;

    /* renamed from: h  reason: collision with root package name */
    private int f2100h;
    private com.applovin.exoplayer2.g.a i;
    private p j;
    private int k;
    private int l;
    private a m;
    private int n;
    private long o;

    public b() {
        this(0);
    }

    public b(int i) {
        this.f2094b = new byte[42];
        this.f2095c = new y(new byte[32768], 0);
        this.f2096d = (i & 1) != 0;
        this.f2097e = new m.a();
        this.f2100h = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        r5.d(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
        return r4.f2097e.f2684a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long a(com.applovin.exoplayer2.l.y r5, boolean r6) {
        /*
            r4 = this;
            com.applovin.exoplayer2.e.p r0 = r4.j
            com.applovin.exoplayer2.l.a.b(r0)
            int r0 = r5.c()
        L9:
            int r1 = r5.b()
            int r1 = r1 + (-16)
            if (r0 > r1) goto L2b
            r5.d(r0)
            com.applovin.exoplayer2.e.p r1 = r4.j
            int r2 = r4.l
            com.applovin.exoplayer2.e.m$a r3 = r4.f2097e
            boolean r1 = com.applovin.exoplayer2.e.m.a(r5, r1, r2, r3)
            if (r1 == 0) goto L28
        L20:
            r5.d(r0)
            com.applovin.exoplayer2.e.m$a r5 = r4.f2097e
            long r5 = r5.f2684a
            return r5
        L28:
            int r0 = r0 + 1
            goto L9
        L2b:
            if (r6 == 0) goto L60
        L2d:
            int r6 = r5.b()
            int r1 = r4.k
            int r6 = r6 - r1
            if (r0 > r6) goto L58
            r5.d(r0)
            r6 = 0
            com.applovin.exoplayer2.e.p r1 = r4.j     // Catch: java.lang.IndexOutOfBoundsException -> L45
            int r2 = r4.l     // Catch: java.lang.IndexOutOfBoundsException -> L45
            com.applovin.exoplayer2.e.m$a r3 = r4.f2097e     // Catch: java.lang.IndexOutOfBoundsException -> L45
            boolean r1 = com.applovin.exoplayer2.e.m.a(r5, r1, r2, r3)     // Catch: java.lang.IndexOutOfBoundsException -> L45
            goto L46
        L45:
            r1 = r6
        L46:
            int r2 = r5.c()
            int r3 = r5.b()
            if (r2 <= r3) goto L51
            goto L52
        L51:
            r6 = r1
        L52:
            if (r6 == 0) goto L55
            goto L20
        L55:
            int r0 = r0 + 1
            goto L2d
        L58:
            int r6 = r5.b()
            r5.d(r6)
            goto L63
        L60:
            r5.d(r0)
        L63:
            r5 = -1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.b.b.a(com.applovin.exoplayer2.l.y, boolean):long");
    }

    private void a() {
        ((x) ai.a(this.f2099g)).a((this.o * 1000000) / ((p) ai.a(this.j)).f2692e, 1, this.n, 0, null);
    }

    private int b(i iVar, u uVar) throws IOException {
        boolean z;
        com.applovin.exoplayer2.l.a.b(this.f2099g);
        com.applovin.exoplayer2.l.a.b(this.j);
        a aVar = this.m;
        if (aVar == null || !aVar.b()) {
            if (this.o == -1) {
                this.o = m.a(iVar, this.j);
                return 0;
            }
            int b2 = this.f2095c.b();
            if (b2 < 32768) {
                int a2 = iVar.a(this.f2095c.d(), b2, 32768 - b2);
                z = a2 == -1;
                if (!z) {
                    this.f2095c.c(b2 + a2);
                } else if (this.f2095c.a() == 0) {
                    a();
                    return -1;
                }
            } else {
                z = false;
            }
            int c2 = this.f2095c.c();
            int i = this.n;
            int i2 = this.k;
            if (i < i2) {
                y yVar = this.f2095c;
                yVar.e(Math.min(i2 - i, yVar.a()));
            }
            long a3 = a(this.f2095c, z);
            int c3 = this.f2095c.c() - c2;
            this.f2095c.d(c2);
            this.f2099g.a(this.f2095c, c3);
            this.n += c3;
            if (a3 != -1) {
                a();
                this.n = 0;
                this.o = a3;
            }
            if (this.f2095c.a() < 16) {
                int a4 = this.f2095c.a();
                System.arraycopy(this.f2095c.d(), this.f2095c.c(), this.f2095c.d(), 0, a4);
                this.f2095c.d(0);
                this.f2095c.c(a4);
            }
            return 0;
        }
        return this.m.a(iVar, uVar);
    }

    private v b(long j, long j2) {
        com.applovin.exoplayer2.l.a.b(this.j);
        if (this.j.k != null) {
            return new o(this.j, j);
        }
        if (j2 == -1 || this.j.j <= 0) {
            return new v.b(this.j.a());
        }
        a aVar = new a(this.j, this.l, j, j2);
        this.m = aVar;
        return aVar.a();
    }

    private void b(i iVar) throws IOException {
        this.i = n.b(iVar, !this.f2096d);
        this.f2100h = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] b() {
        return new h[]{new b()};
    }

    private void c(i iVar) throws IOException {
        byte[] bArr = this.f2094b;
        iVar.d(bArr, 0, bArr.length);
        iVar.a();
        this.f2100h = 2;
    }

    private void d(i iVar) throws IOException {
        n.b(iVar);
        this.f2100h = 3;
    }

    private void e(i iVar) throws IOException {
        n.a aVar = new n.a(this.j);
        boolean z = false;
        while (!z) {
            z = n.a(iVar, aVar);
            this.j = (p) ai.a(aVar.f2685a);
        }
        com.applovin.exoplayer2.l.a.b(this.j);
        this.k = Math.max(this.j.f2690c, 6);
        ((x) ai.a(this.f2099g)).a(this.j.a(this.f2094b, this.i));
        this.f2100h = 4;
    }

    private void f(i iVar) throws IOException {
        this.l = n.c(iVar);
        ((j) ai.a(this.f2098f)).a(b(iVar.c(), iVar.d()));
        this.f2100h = 5;
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(i iVar, u uVar) throws IOException {
        int i = this.f2100h;
        if (i == 0) {
            b(iVar);
            return 0;
        } else if (i == 1) {
            c(iVar);
            return 0;
        } else if (i == 2) {
            d(iVar);
            return 0;
        } else if (i == 3) {
            e(iVar);
            return 0;
        } else if (i == 4) {
            f(iVar);
            return 0;
        } else if (i == 5) {
            return b(iVar, uVar);
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        if (j == 0) {
            this.f2100h = 0;
        } else {
            a aVar = this.m;
            if (aVar != null) {
                aVar.a(j2);
            }
        }
        this.o = j2 != 0 ? -1L : 0L;
        this.n = 0;
        this.f2095c.a(0);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.f2098f = jVar;
        this.f2099g = jVar.a(0, 1);
        jVar.a();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        n.a(iVar, false);
        return n.a(iVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
