package com.applovin.exoplayer2.e.f;

import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.e.f.e;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.s;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.e.g;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes.dex */
public final class d implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f2218a = new l() { // from class: com.applovin.exoplayer2.e.f.d$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            h[] d2;
            d2 = d.d();
            return d2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final g.a f2219b = new g.a() { // from class: com.applovin.exoplayer2.e.f.d$$ExternalSyntheticLambda1
        @Override // com.applovin.exoplayer2.g.e.g.a
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            boolean a2;
            a2 = d.a(i, i2, i3, i4, i5);
            return a2;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final int f2220c;

    /* renamed from: d  reason: collision with root package name */
    private final long f2221d;

    /* renamed from: e  reason: collision with root package name */
    private final y f2222e;

    /* renamed from: f  reason: collision with root package name */
    private final r.a f2223f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.exoplayer2.e.r f2224g;

    /* renamed from: h  reason: collision with root package name */
    private final s f2225h;
    private final x i;
    private j j;
    private x k;
    private x l;
    private int m;
    private com.applovin.exoplayer2.g.a n;
    private long o;
    private long p;
    private long q;
    private int r;
    private e s;
    private boolean t;
    private boolean u;
    private long v;

    public d() {
        this(0);
    }

    public d(int i) {
        this(i, C.TIME_UNSET);
    }

    public d(int i, long j) {
        this.f2220c = (i & 2) != 0 ? i | 1 : i;
        this.f2221d = j;
        this.f2222e = new y(10);
        this.f2223f = new r.a();
        this.f2224g = new com.applovin.exoplayer2.e.r();
        this.o = C.TIME_UNSET;
        this.f2225h = new s();
        com.applovin.exoplayer2.e.g gVar = new com.applovin.exoplayer2.e.g();
        this.i = gVar;
        this.l = gVar;
    }

    private static int a(y yVar, int i) {
        if (yVar.b() >= i + 4) {
            yVar.d(i);
            int q = yVar.q();
            if (q == 1483304551 || q == 1231971951) {
                return q;
            }
        }
        if (yVar.b() >= 40) {
            yVar.d(36);
            return yVar.q() == 1447187017 ? 1447187017 : 0;
        }
        return 0;
    }

    private long a(long j) {
        return this.o + ((j * 1000000) / this.f2223f.f1586d);
    }

    private static long a(com.applovin.exoplayer2.g.a aVar) {
        if (aVar != null) {
            int a2 = aVar.a();
            for (int i = 0; i < a2; i++) {
                a.InterfaceC0042a a3 = aVar.a(i);
                if (a3 instanceof com.applovin.exoplayer2.g.e.l) {
                    com.applovin.exoplayer2.g.e.l lVar = (com.applovin.exoplayer2.g.e.l) a3;
                    if (lVar.f2899f.equals("TLEN")) {
                        return com.applovin.exoplayer2.h.b(Long.parseLong(lVar.f2911b));
                    }
                }
            }
            return C.TIME_UNSET;
        }
        return C.TIME_UNSET;
    }

    private static c a(com.applovin.exoplayer2.g.a aVar, long j) {
        if (aVar != null) {
            int a2 = aVar.a();
            for (int i = 0; i < a2; i++) {
                a.InterfaceC0042a a3 = aVar.a(i);
                if (a3 instanceof com.applovin.exoplayer2.g.e.j) {
                    return c.a(j, (com.applovin.exoplayer2.g.e.j) a3, a(aVar));
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    private static boolean a(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0099, code lost:
        if (r13 == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009b, code lost:
        r12.b(r1 + r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a0, code lost:
        r12.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a3, code lost:
        r11.m = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a5, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(com.applovin.exoplayer2.e.i r12, boolean r13) throws java.io.IOException {
        /*
            r11 = this;
            if (r13 == 0) goto L6
            r0 = 32768(0x8000, float:4.5918E-41)
            goto L8
        L6:
            r0 = 131072(0x20000, float:1.83671E-40)
        L8:
            r12.a()
            long r1 = r12.c()
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r2 = 0
            r3 = 0
            if (r1 != 0) goto L3c
            int r1 = r11.f2220c
            r1 = r1 & 8
            if (r1 != 0) goto L1f
            r1 = r2
            goto L21
        L1f:
            com.applovin.exoplayer2.g.e.g$a r1 = com.applovin.exoplayer2.e.f.d.f2219b
        L21:
            com.applovin.exoplayer2.e.s r4 = r11.f2225h
            com.applovin.exoplayer2.g.a r1 = r4.a(r12, r1)
            r11.n = r1
            if (r1 == 0) goto L30
            com.applovin.exoplayer2.e.r r4 = r11.f2224g
            r4.a(r1)
        L30:
            long r4 = r12.b()
            int r1 = (int) r4
            if (r13 != 0) goto L3a
            r12.b(r1)
        L3a:
            r4 = r3
            goto L3e
        L3c:
            r1 = r3
            r4 = r1
        L3e:
            r5 = r4
            r6 = r5
        L40:
            boolean r7 = r11.d(r12)
            r8 = 1
            if (r7 == 0) goto L50
            if (r5 <= 0) goto L4a
            goto L99
        L4a:
            java.io.EOFException r12 = new java.io.EOFException
            r12.<init>()
            throw r12
        L50:
            com.applovin.exoplayer2.l.y r7 = r11.f2222e
            r7.d(r3)
            com.applovin.exoplayer2.l.y r7 = r11.f2222e
            int r7 = r7.q()
            if (r4 == 0) goto L64
            long r9 = (long) r4
            boolean r9 = a(r7, r9)
            if (r9 == 0) goto L6b
        L64:
            int r9 = com.applovin.exoplayer2.b.r.a(r7)
            r10 = -1
            if (r9 != r10) goto L8b
        L6b:
            int r4 = r6 + 1
            if (r6 != r0) goto L79
            if (r13 == 0) goto L72
            return r3
        L72:
            java.lang.String r12 = "Searched too many bytes."
            com.applovin.exoplayer2.ai r12 = com.applovin.exoplayer2.ai.b(r12, r2)
            throw r12
        L79:
            if (r13 == 0) goto L84
            r12.a()
            int r5 = r1 + r4
            r12.c(r5)
            goto L87
        L84:
            r12.b(r8)
        L87:
            r5 = r3
            r6 = r4
            r4 = r5
            goto L40
        L8b:
            int r5 = r5 + 1
            if (r5 != r8) goto L96
            com.applovin.exoplayer2.b.r$a r4 = r11.f2223f
            r4.a(r7)
            r4 = r7
            goto La6
        L96:
            r7 = 4
            if (r5 != r7) goto La6
        L99:
            if (r13 == 0) goto La0
            int r1 = r1 + r6
            r12.b(r1)
            goto La3
        La0:
            r12.a()
        La3:
            r11.m = r4
            return r8
        La6:
            int r9 = r9 + (-4)
            r12.c(r9)
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.f.d.a(com.applovin.exoplayer2.e.i, boolean):boolean");
    }

    private int b(i iVar) throws IOException {
        if (this.m == 0) {
            try {
                a(iVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.s == null) {
            e e2 = e(iVar);
            this.s = e2;
            this.j.a(e2);
            this.l.a(new v.a().f(this.f2223f.f1584b).f(4096).k(this.f2223f.f1587e).l(this.f2223f.f1586d).n(this.f2224g.f2700a).o(this.f2224g.f2701b).a((this.f2220c & 8) != 0 ? null : this.n).a());
            this.q = iVar.c();
        } else if (this.q != 0) {
            long c2 = iVar.c();
            long j = this.q;
            if (c2 < j) {
                iVar.b((int) (j - c2));
            }
        }
        return c(iVar);
    }

    private e b(i iVar, boolean z) throws IOException {
        iVar.d(this.f2222e.d(), 0, 4);
        this.f2222e.d(0);
        this.f2223f.a(this.f2222e.q());
        return new a(iVar.d(), iVar.c(), this.f2223f, z);
    }

    private void b() {
        com.applovin.exoplayer2.l.a.a(this.k);
        ai.a(this.j);
    }

    private int c(i iVar) throws IOException {
        if (this.r == 0) {
            iVar.a();
            if (d(iVar)) {
                return -1;
            }
            this.f2222e.d(0);
            int q = this.f2222e.q();
            if (!a(q, this.m) || r.a(q) == -1) {
                iVar.b(1);
                this.m = 0;
                return 0;
            }
            this.f2223f.a(q);
            if (this.o == C.TIME_UNSET) {
                this.o = this.s.c(iVar.c());
                if (this.f2221d != C.TIME_UNSET) {
                    this.o += this.f2221d - this.s.c(0L);
                }
            }
            this.r = this.f2223f.f1585c;
            e eVar = this.s;
            if (eVar instanceof b) {
                b bVar = (b) eVar;
                bVar.a(a(this.p + this.f2223f.f1589g), iVar.c() + this.f2223f.f1585c);
                if (this.u && bVar.b(this.v)) {
                    this.u = false;
                    this.l = this.k;
                }
            }
        }
        int a2 = this.l.a((com.applovin.exoplayer2.k.g) iVar, this.r, true);
        if (a2 == -1) {
            return -1;
        }
        int i = this.r - a2;
        this.r = i;
        if (i > 0) {
            return 0;
        }
        this.l.a(a(this.p), 1, this.f2223f.f1585c, 0, null);
        this.p += this.f2223f.f1589g;
        this.r = 0;
        return 0;
    }

    private boolean d(i iVar) throws IOException {
        e eVar = this.s;
        if (eVar != null) {
            long c2 = eVar.c();
            if (c2 != -1 && iVar.b() > c2 - 4) {
                return true;
            }
        }
        try {
            return !iVar.b(this.f2222e.d(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] d() {
        return new h[]{new d()};
    }

    private e e(i iVar) throws IOException {
        long a2;
        long j;
        e f2 = f(iVar);
        c a3 = a(this.n, iVar.c());
        if (this.t) {
            return new e.a();
        }
        if ((this.f2220c & 4) != 0) {
            if (a3 != null) {
                a2 = a3.b();
                j = a3.c();
            } else if (f2 != null) {
                a2 = f2.b();
                j = f2.c();
            } else {
                a2 = a(this.n);
                j = -1;
            }
            f2 = new b(a2, iVar.c(), j);
        } else if (a3 != null) {
            f2 = a3;
        } else if (f2 == null) {
            f2 = null;
        }
        if (f2 == null || !(f2.a() || (this.f2220c & 1) == 0)) {
            return b(iVar, (this.f2220c & 2) != 0);
        }
        return f2;
    }

    private e f(i iVar) throws IOException {
        y yVar = new y(this.f2223f.f1585c);
        iVar.d(yVar.d(), 0, this.f2223f.f1585c);
        int i = 21;
        if ((this.f2223f.f1583a & 1) != 0) {
            if (this.f2223f.f1587e != 1) {
                i = 36;
            }
        } else if (this.f2223f.f1587e == 1) {
            i = 13;
        }
        int i2 = i;
        int a2 = a(yVar, i2);
        if (a2 != 1483304551 && a2 != 1231971951) {
            if (a2 != 1447187017) {
                iVar.a();
                return null;
            }
            f a3 = f.a(iVar.d(), iVar.c(), this.f2223f, yVar);
            iVar.b(this.f2223f.f1585c);
            return a3;
        }
        g a4 = g.a(iVar.d(), iVar.c(), this.f2223f, yVar);
        if (a4 != null && !this.f2224g.a()) {
            iVar.a();
            iVar.c(i2 + 141);
            iVar.d(this.f2222e.d(), 0, 3);
            this.f2222e.d(0);
            this.f2224g.a(this.f2222e.m());
        }
        iVar.b(this.f2223f.f1585c);
        return (a4 == null || a4.a() || a2 != 1231971951) ? a4 : b(iVar, false);
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(i iVar, u uVar) throws IOException {
        b();
        int b2 = b(iVar);
        if (b2 == -1 && (this.s instanceof b)) {
            long a2 = a(this.p);
            if (this.s.b() != a2) {
                ((b) this.s).d(a2);
                this.j.a(this.s);
            }
        }
        return b2;
    }

    public void a() {
        this.t = true;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        this.m = 0;
        this.o = C.TIME_UNSET;
        this.p = 0L;
        this.r = 0;
        this.v = j2;
        e eVar = this.s;
        if (!(eVar instanceof b) || ((b) eVar).b(j2)) {
            return;
        }
        this.u = true;
        this.l = this.i;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.j = jVar;
        x a2 = jVar.a(0, 1);
        this.k = a2;
        this.l = a2;
        this.j.a();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        return a(iVar, true);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
