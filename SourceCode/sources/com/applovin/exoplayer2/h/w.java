package com.applovin.exoplayer2.h;

import android.os.Looper;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.d.h;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.h.w;
import com.applovin.exoplayer2.l.ai;
import java.io.IOException;
/* loaded from: classes.dex */
public class w implements com.applovin.exoplayer2.e.x {
    private boolean A;
    private com.applovin.exoplayer2.v B;
    private com.applovin.exoplayer2.v C;
    private int D;
    private boolean E;
    private boolean F;
    private long G;
    private boolean H;

    /* renamed from: a  reason: collision with root package name */
    private final v f3147a;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.exoplayer2.d.h f3150d;

    /* renamed from: e  reason: collision with root package name */
    private final g.a f3151e;

    /* renamed from: f  reason: collision with root package name */
    private final Looper f3152f;

    /* renamed from: g  reason: collision with root package name */
    private c f3153g;

    /* renamed from: h  reason: collision with root package name */
    private com.applovin.exoplayer2.v f3154h;
    private com.applovin.exoplayer2.d.f i;
    private int q;
    private int r;
    private int s;
    private int t;
    private boolean x;

    /* renamed from: b  reason: collision with root package name */
    private final a f3148b = new a();
    private int j = 1000;
    private int[] k = new int[1000];
    private long[] l = new long[1000];
    private long[] o = new long[1000];
    private int[] n = new int[1000];
    private int[] m = new int[1000];
    private x.a[] p = new x.a[1000];

    /* renamed from: c  reason: collision with root package name */
    private final ab<b> f3149c = new ab<>(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.h.w$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.l.h
        public final void accept(Object obj) {
            w.a((w.b) obj);
        }
    });
    private long u = Long.MIN_VALUE;
    private long v = Long.MIN_VALUE;
    private long w = Long.MIN_VALUE;
    private boolean z = true;
    private boolean y = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3155a;

        /* renamed from: b  reason: collision with root package name */
        public long f3156b;

        /* renamed from: c  reason: collision with root package name */
        public x.a f3157c;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final com.applovin.exoplayer2.v f3158a;

        /* renamed from: b  reason: collision with root package name */
        public final h.a f3159b;

        private b(com.applovin.exoplayer2.v vVar, h.a aVar) {
            this.f3158a = vVar;
            this.f3159b = aVar;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(com.applovin.exoplayer2.v vVar);
    }

    protected w(com.applovin.exoplayer2.k.b bVar, Looper looper, com.applovin.exoplayer2.d.h hVar, g.a aVar) {
        this.f3152f = looper;
        this.f3150d = hVar;
        this.f3151e = aVar;
        this.f3147a = new v(bVar);
    }

    private int a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.o[i];
            if (j2 > j) {
                return i3;
            }
            if (!z || (this.n[i] & 1) != 0) {
                if (j2 == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.j) {
                i = 0;
            }
        }
        return i3;
    }

    private synchronized int a(com.applovin.exoplayer2.w wVar, com.applovin.exoplayer2.c.g gVar, boolean z, boolean z2, a aVar) {
        gVar.f1676c = false;
        if (!o()) {
            if (!z2 && !this.x) {
                com.applovin.exoplayer2.v vVar = this.C;
                if (vVar == null || (!z && vVar == this.f3154h)) {
                    return -3;
                }
                a((com.applovin.exoplayer2.v) com.applovin.exoplayer2.l.a.b(vVar), wVar);
                return -5;
            }
            gVar.a_(4);
            return -4;
        }
        com.applovin.exoplayer2.v vVar2 = this.f3149c.a(f()).f3158a;
        if (!z && vVar2 == this.f3154h) {
            int f2 = f(this.t);
            if (!c(f2)) {
                gVar.f1676c = true;
                return -3;
            }
            gVar.a_(this.n[f2]);
            gVar.f1677d = this.o[f2];
            if (gVar.f1677d < this.u) {
                gVar.b(Integer.MIN_VALUE);
            }
            aVar.f3155a = this.m[f2];
            aVar.f3156b = this.l[f2];
            aVar.f3157c = this.p[f2];
            return -4;
        }
        a(vVar2, wVar);
        return -5;
    }

    public static w a(com.applovin.exoplayer2.k.b bVar, Looper looper, com.applovin.exoplayer2.d.h hVar, g.a aVar) {
        return new w(bVar, (Looper) com.applovin.exoplayer2.l.a.b(looper), (com.applovin.exoplayer2.d.h) com.applovin.exoplayer2.l.a.b(hVar), (g.a) com.applovin.exoplayer2.l.a.b(aVar));
    }

    private synchronized void a(long j, int i, long j2, int i2, x.a aVar) {
        int i3 = this.q;
        if (i3 > 0) {
            int f2 = f(i3 - 1);
            com.applovin.exoplayer2.l.a.a(this.l[f2] + ((long) this.m[f2]) <= j2);
        }
        this.x = (536870912 & i) != 0;
        this.w = Math.max(this.w, j);
        int f3 = f(this.q);
        this.o[f3] = j;
        this.l[f3] = j2;
        this.m[f3] = i2;
        this.n[f3] = i;
        this.p[f3] = aVar;
        this.k[f3] = this.D;
        if (this.f3149c.c() || !this.f3149c.a().f3158a.equals(this.C)) {
            com.applovin.exoplayer2.d.h hVar = this.f3150d;
            this.f3149c.a(c(), new b((com.applovin.exoplayer2.v) com.applovin.exoplayer2.l.a.b(this.C), hVar != null ? hVar.a((Looper) com.applovin.exoplayer2.l.a.b(this.f3152f), this.f3151e, this.C) : h.a.f2027b));
        }
        int i4 = this.q + 1;
        this.q = i4;
        int i5 = this.j;
        if (i4 == i5) {
            int i6 = i5 + 1000;
            int[] iArr = new int[i6];
            long[] jArr = new long[i6];
            long[] jArr2 = new long[i6];
            int[] iArr2 = new int[i6];
            int[] iArr3 = new int[i6];
            x.a[] aVarArr = new x.a[i6];
            int i7 = this.s;
            int i8 = i5 - i7;
            System.arraycopy(this.l, i7, jArr, 0, i8);
            System.arraycopy(this.o, this.s, jArr2, 0, i8);
            System.arraycopy(this.n, this.s, iArr2, 0, i8);
            System.arraycopy(this.m, this.s, iArr3, 0, i8);
            System.arraycopy(this.p, this.s, aVarArr, 0, i8);
            System.arraycopy(this.k, this.s, iArr, 0, i8);
            int i9 = this.s;
            System.arraycopy(this.l, 0, jArr, i8, i9);
            System.arraycopy(this.o, 0, jArr2, i8, i9);
            System.arraycopy(this.n, 0, iArr2, i8, i9);
            System.arraycopy(this.m, 0, iArr3, i8, i9);
            System.arraycopy(this.p, 0, aVarArr, i8, i9);
            System.arraycopy(this.k, 0, iArr, i8, i9);
            this.l = jArr;
            this.o = jArr2;
            this.n = iArr2;
            this.m = iArr3;
            this.p = aVarArr;
            this.k = iArr;
            this.s = 0;
            this.j = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b bVar) {
        bVar.f3159b.release();
    }

    private void a(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.w wVar) {
        com.applovin.exoplayer2.v vVar2 = this.f3154h;
        boolean z = vVar2 == null;
        com.applovin.exoplayer2.d.e eVar = z ? null : vVar2.o;
        this.f3154h = vVar;
        com.applovin.exoplayer2.d.e eVar2 = vVar.o;
        com.applovin.exoplayer2.d.h hVar = this.f3150d;
        wVar.f4195b = hVar != null ? vVar.a(hVar.a(vVar)) : vVar;
        wVar.f4194a = this.i;
        if (this.f3150d == null) {
            return;
        }
        if (z || !ai.a(eVar, eVar2)) {
            com.applovin.exoplayer2.d.f fVar = this.i;
            com.applovin.exoplayer2.d.f b2 = this.f3150d.b((Looper) com.applovin.exoplayer2.l.a.b(this.f3152f), this.f3151e, vVar);
            this.i = b2;
            wVar.f4194a = b2;
            if (fVar != null) {
                fVar.b(this.f3151e);
            }
        }
    }

    private long b(int i) {
        int f2;
        int c2 = c() - i;
        boolean z = false;
        com.applovin.exoplayer2.l.a.a(c2 >= 0 && c2 <= this.q - this.t);
        int i2 = this.q - c2;
        this.q = i2;
        this.w = Math.max(this.v, e(i2));
        if (c2 == 0 && this.x) {
            z = true;
        }
        this.x = z;
        this.f3149c.c(i);
        int i3 = this.q;
        if (i3 != 0) {
            return this.l[f(i3 - 1)] + this.m[f2];
        }
        return 0L;
    }

    private synchronized long b(long j, boolean z, boolean z2) {
        int i;
        int i2 = this.q;
        if (i2 != 0) {
            long[] jArr = this.o;
            int i3 = this.s;
            if (j >= jArr[i3]) {
                if (z2 && (i = this.t) != i2) {
                    i2 = i + 1;
                }
                int a2 = a(i3, i2, j, z);
                if (a2 == -1) {
                    return -1L;
                }
                return d(a2);
            }
        }
        return -1L;
    }

    private synchronized boolean b(long j) {
        if (this.q == 0) {
            return j > this.v;
        } else if (i() >= j) {
            return false;
        } else {
            b(this.r + c(j));
            return true;
        }
    }

    private int c(long j) {
        int i = this.q;
        int f2 = f(i - 1);
        while (i > this.t && this.o[f2] >= j) {
            i--;
            f2--;
            if (f2 == -1) {
                f2 = this.j - 1;
            }
        }
        return i;
    }

    private boolean c(int i) {
        com.applovin.exoplayer2.d.f fVar = this.i;
        return fVar == null || fVar.c() == 4 || ((this.n[i] & 1073741824) == 0 && this.i.d());
    }

    private synchronized boolean c(com.applovin.exoplayer2.v vVar) {
        this.z = false;
        if (ai.a(vVar, this.C)) {
            return false;
        }
        if (!this.f3149c.c() && this.f3149c.a().f3158a.equals(vVar)) {
            vVar = this.f3149c.a().f3158a;
        }
        this.C = vVar;
        this.E = com.applovin.exoplayer2.l.u.a(this.C.l, this.C.i);
        this.F = false;
        return true;
    }

    private long d(int i) {
        int i2;
        this.v = Math.max(this.v, e(i));
        this.q -= i;
        int i3 = this.r + i;
        this.r = i3;
        int i4 = this.s + i;
        this.s = i4;
        int i5 = this.j;
        if (i4 >= i5) {
            this.s = i4 - i5;
        }
        int i6 = this.t - i;
        this.t = i6;
        if (i6 < 0) {
            this.t = 0;
        }
        this.f3149c.b(i3);
        if (this.q == 0) {
            int i7 = this.s;
            if (i7 == 0) {
                i7 = this.j;
            }
            return this.l[i7 - 1] + this.m[i2];
        }
        return this.l[this.s];
    }

    private long e(int i) {
        long j = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int f2 = f(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            j = Math.max(j, this.o[f2]);
            if ((this.n[f2] & 1) != 0) {
                break;
            }
            f2--;
            if (f2 == -1) {
                f2 = this.j - 1;
            }
        }
        return j;
    }

    private int f(int i) {
        int i2 = this.s + i;
        int i3 = this.j;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private synchronized void l() {
        this.t = 0;
        this.f3147a.b();
    }

    private synchronized long m() {
        int i = this.q;
        if (i == 0) {
            return -1L;
        }
        return d(i);
    }

    private void n() {
        com.applovin.exoplayer2.d.f fVar = this.i;
        if (fVar != null) {
            fVar.b(this.f3151e);
            this.i = null;
            this.f3154h = null;
        }
    }

    private boolean o() {
        return this.t != this.q;
    }

    @Override // com.applovin.exoplayer2.e.x
    public final int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z, int i2) throws IOException {
        return this.f3147a.a(gVar, i, z);
    }

    public int a(com.applovin.exoplayer2.w wVar, com.applovin.exoplayer2.c.g gVar, int i, boolean z) {
        int a2 = a(wVar, gVar, (i & 2) != 0, z, this.f3148b);
        if (a2 == -4 && !gVar.c()) {
            boolean z2 = (i & 1) != 0;
            if ((i & 4) == 0) {
                v vVar = this.f3147a;
                a aVar = this.f3148b;
                if (z2) {
                    vVar.b(gVar, aVar);
                } else {
                    vVar.a(gVar, aVar);
                }
            }
            if (!z2) {
                this.t++;
            }
        }
        return a2;
    }

    public void a() {
        a(true);
        n();
    }

    public final synchronized void a(int i) {
        boolean z;
        if (i >= 0) {
            try {
                if (this.t + i <= this.q) {
                    z = true;
                    com.applovin.exoplayer2.l.a.a(z);
                    this.t += i;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        z = false;
        com.applovin.exoplayer2.l.a.a(z);
        this.t += i;
    }

    public final void a(long j) {
        this.u = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0057  */
    @Override // com.applovin.exoplayer2.e.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(long r12, int r14, int r15, int r16, com.applovin.exoplayer2.e.x.a r17) {
        /*
            r11 = this;
            r8 = r11
            boolean r0 = r8.A
            if (r0 == 0) goto L10
            com.applovin.exoplayer2.v r0 = r8.B
            java.lang.Object r0 = com.applovin.exoplayer2.l.a.a(r0)
            com.applovin.exoplayer2.v r0 = (com.applovin.exoplayer2.v) r0
            r11.a(r0)
        L10:
            r0 = r14 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L18
            r3 = r2
            goto L19
        L18:
            r3 = r1
        L19:
            boolean r4 = r8.y
            if (r4 == 0) goto L22
            if (r3 != 0) goto L20
            return
        L20:
            r8.y = r1
        L22:
            long r4 = r8.G
            long r4 = r4 + r12
            boolean r6 = r8.E
            if (r6 == 0) goto L52
            long r6 = r8.u
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 >= 0) goto L30
            return
        L30:
            if (r0 != 0) goto L52
            boolean r0 = r8.F
            if (r0 != 0) goto L4e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r6 = "Overriding unexpected non-sync sample for format: "
            r0.<init>(r6)
            com.applovin.exoplayer2.v r6 = r8.C
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r6 = "SampleQueue"
            com.applovin.exoplayer2.l.q.c(r6, r0)
            r8.F = r2
        L4e:
            r0 = r14 | 1
            r6 = r0
            goto L53
        L52:
            r6 = r14
        L53:
            boolean r0 = r8.H
            if (r0 == 0) goto L64
            if (r3 == 0) goto L63
            boolean r0 = r11.b(r4)
            if (r0 != 0) goto L60
            goto L63
        L60:
            r8.H = r1
            goto L64
        L63:
            return
        L64:
            com.applovin.exoplayer2.h.v r0 = r8.f3147a
            long r0 = r0.c()
            r7 = r15
            long r2 = (long) r7
            long r0 = r0 - r2
            r2 = r16
            long r2 = (long) r2
            long r9 = r0 - r2
            r0 = r11
            r1 = r4
            r3 = r6
            r4 = r9
            r6 = r15
            r7 = r17
            r0.a(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.w.a(long, int, int, int, com.applovin.exoplayer2.e.x$a):void");
    }

    public final void a(long j, boolean z, boolean z2) {
        this.f3147a.a(b(j, z, z2));
    }

    public final void a(c cVar) {
        this.f3153g = cVar;
    }

    @Override // com.applovin.exoplayer2.e.x
    public final void a(com.applovin.exoplayer2.l.y yVar, int i, int i2) {
        this.f3147a.a(yVar, i);
    }

    @Override // com.applovin.exoplayer2.e.x
    public final void a(com.applovin.exoplayer2.v vVar) {
        com.applovin.exoplayer2.v b2 = b(vVar);
        this.A = false;
        this.B = vVar;
        boolean c2 = c(b2);
        c cVar = this.f3153g;
        if (cVar == null || !c2) {
            return;
        }
        cVar.a(b2);
    }

    public void a(boolean z) {
        this.f3147a.a();
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.y = true;
        this.u = Long.MIN_VALUE;
        this.v = Long.MIN_VALUE;
        this.w = Long.MIN_VALUE;
        this.x = false;
        this.f3149c.b();
        if (z) {
            this.B = null;
            this.C = null;
            this.z = true;
        }
    }

    public final synchronized boolean a(long j, boolean z) {
        l();
        int f2 = f(this.t);
        if (o() && j >= this.o[f2] && (j <= this.w || z)) {
            int a2 = a(f2, this.q - this.t, j, true);
            if (a2 == -1) {
                return false;
            }
            this.u = j;
            this.t += a2;
            return true;
        }
        return false;
    }

    public final synchronized int b(long j, boolean z) {
        int f2 = f(this.t);
        if (o() && j >= this.o[f2]) {
            if (j > this.w && z) {
                return this.q - this.t;
            }
            int a2 = a(f2, this.q - this.t, j, true);
            if (a2 == -1) {
                return 0;
            }
            return a2;
        }
        return 0;
    }

    protected com.applovin.exoplayer2.v b(com.applovin.exoplayer2.v vVar) {
        return (this.G == 0 || vVar.p == Long.MAX_VALUE) ? vVar : vVar.a().a(vVar.p + this.G).a();
    }

    public final void b() {
        a(false);
    }

    public synchronized boolean b(boolean z) {
        com.applovin.exoplayer2.v vVar;
        boolean z2 = true;
        if (o()) {
            if (this.f3149c.a(f()).f3158a != this.f3154h) {
                return true;
            }
            return c(f(this.t));
        }
        if (!z && !this.x && ((vVar = this.C) == null || vVar == this.f3154h)) {
            z2 = false;
        }
        return z2;
    }

    public final int c() {
        return this.r + this.q;
    }

    public void d() {
        k();
        n();
    }

    public void e() throws IOException {
        com.applovin.exoplayer2.d.f fVar = this.i;
        if (fVar != null && fVar.c() == 1) {
            throw ((f.a) com.applovin.exoplayer2.l.a.b(this.i.e()));
        }
    }

    public final int f() {
        return this.r + this.t;
    }

    public final synchronized com.applovin.exoplayer2.v g() {
        return this.z ? null : this.C;
    }

    public final synchronized long h() {
        return this.w;
    }

    public final synchronized long i() {
        return Math.max(this.v, e(this.t));
    }

    public final synchronized boolean j() {
        return this.x;
    }

    public final void k() {
        this.f3147a.a(m());
    }
}
