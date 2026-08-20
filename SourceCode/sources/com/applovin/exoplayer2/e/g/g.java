package com.applovin.exoplayer2.e.g;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.e.g.a;
import com.applovin.exoplayer2.e.r;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class g implements com.applovin.exoplayer2.e.h, v {

    /* renamed from: a  reason: collision with root package name */
    public static final com.applovin.exoplayer2.e.l f2295a = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.g.g$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            com.applovin.exoplayer2.e.h[] f2;
            f2 = g.f();
            return f2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final int f2296b;

    /* renamed from: c  reason: collision with root package name */
    private final y f2297c;

    /* renamed from: d  reason: collision with root package name */
    private final y f2298d;

    /* renamed from: e  reason: collision with root package name */
    private final y f2299e;

    /* renamed from: f  reason: collision with root package name */
    private final y f2300f;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<a.C0036a> f2301g;

    /* renamed from: h  reason: collision with root package name */
    private final i f2302h;
    private final List<a.InterfaceC0042a> i;
    private int j;
    private int k;
    private long l;
    private int m;
    private y n;
    private int o;
    private int p;
    private int q;
    private int r;
    private com.applovin.exoplayer2.e.j s;
    private a[] t;
    private long[][] u;
    private int v;
    private long w;
    private int x;
    private com.applovin.exoplayer2.g.f.b y;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final k f2303a;

        /* renamed from: b  reason: collision with root package name */
        public final n f2304b;

        /* renamed from: c  reason: collision with root package name */
        public final x f2305c;

        /* renamed from: d  reason: collision with root package name */
        public int f2306d;

        public a(k kVar, n nVar, x xVar) {
            this.f2303a = kVar;
            this.f2304b = nVar;
            this.f2305c = xVar;
        }
    }

    public g() {
        this(0);
    }

    public g(int i) {
        this.f2296b = i;
        this.j = (i & 4) != 0 ? 3 : 0;
        this.f2302h = new i();
        this.i = new ArrayList();
        this.f2300f = new y(16);
        this.f2301g = new ArrayDeque<>();
        this.f2297c = new y(com.applovin.exoplayer2.l.v.f3837a);
        this.f2298d = new y(4);
        this.f2299e = new y();
        this.o = -1;
    }

    private static int a(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int a(n nVar, long j) {
        int a2 = nVar.a(j);
        return a2 == -1 ? nVar.b(j) : a2;
    }

    private static int a(y yVar) {
        yVar.d(8);
        int a2 = a(yVar.q());
        if (a2 != 0) {
            return a2;
        }
        yVar.e(4);
        while (yVar.a() > 0) {
            int a3 = a(yVar.q());
            if (a3 != 0) {
                return a3;
            }
        }
        return 0;
    }

    private static long a(n nVar, long j, long j2) {
        int a2 = a(nVar, j);
        return a2 == -1 ? j2 : Math.min(nVar.f2342c[a2], j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k a(k kVar) {
        return kVar;
    }

    private void a(a.C0036a c0036a) throws ai {
        com.applovin.exoplayer2.g.a aVar;
        com.applovin.exoplayer2.g.a aVar2;
        ArrayList arrayList;
        List<n> list;
        int i;
        int i2;
        ArrayList arrayList2 = new ArrayList();
        boolean z = this.x == 1;
        r rVar = new r();
        a.b d2 = c0036a.d(Atom.TYPE_udta);
        if (d2 != null) {
            Pair<com.applovin.exoplayer2.g.a, com.applovin.exoplayer2.g.a> a2 = b.a(d2);
            com.applovin.exoplayer2.g.a aVar3 = (com.applovin.exoplayer2.g.a) a2.first;
            com.applovin.exoplayer2.g.a aVar4 = (com.applovin.exoplayer2.g.a) a2.second;
            if (aVar3 != null) {
                rVar.a(aVar3);
            }
            aVar = aVar4;
            aVar2 = aVar3;
        } else {
            aVar = null;
            aVar2 = null;
        }
        a.C0036a e2 = c0036a.e(Atom.TYPE_meta);
        com.applovin.exoplayer2.g.a a3 = e2 != null ? b.a(e2) : null;
        List<n> a4 = b.a(c0036a, rVar, (long) C.TIME_UNSET, (com.applovin.exoplayer2.d.e) null, (this.f2296b & 1) != 0, z, new Function() { // from class: com.applovin.exoplayer2.e.g.g$$ExternalSyntheticLambda1
            @Override // com.applovin.exoplayer2.common.base.Function
            public final Object apply(Object obj) {
                k a5;
                a5 = g.a((k) obj);
                return a5;
            }
        });
        com.applovin.exoplayer2.e.j jVar = (com.applovin.exoplayer2.e.j) com.applovin.exoplayer2.l.a.b(this.s);
        int size = a4.size();
        int i3 = 0;
        int i4 = -1;
        long j = C.TIME_UNSET;
        while (i3 < size) {
            n nVar = a4.get(i3);
            if (nVar.f2341b == 0) {
                list = a4;
                i = size;
                arrayList = arrayList2;
            } else {
                k kVar = nVar.f2340a;
                int i5 = i4;
                arrayList = arrayList2;
                long j2 = kVar.f2323e != C.TIME_UNSET ? kVar.f2323e : nVar.f2347h;
                long max = Math.max(j, j2);
                list = a4;
                i = size;
                a aVar5 = new a(kVar, nVar, jVar.a(i3, kVar.f2320b));
                v.a a5 = kVar.f2324f.a();
                a5.f(nVar.f2344e + 30);
                if (kVar.f2320b == 2 && j2 > 0 && nVar.f2341b > 1) {
                    a5.a(nVar.f2341b / (((float) j2) / 1000000.0f));
                }
                f.a(kVar.f2320b, rVar, a5);
                int i6 = kVar.f2320b;
                com.applovin.exoplayer2.g.a[] aVarArr = new com.applovin.exoplayer2.g.a[2];
                aVarArr[0] = aVar;
                aVarArr[1] = this.i.isEmpty() ? null : new com.applovin.exoplayer2.g.a(this.i);
                f.a(i6, aVar2, a3, a5, aVarArr);
                aVar5.f2305c.a(a5.a());
                if (kVar.f2320b == 2) {
                    i2 = i5;
                    if (i2 == -1) {
                        i2 = arrayList.size();
                    }
                } else {
                    i2 = i5;
                }
                i4 = i2;
                arrayList.add(aVar5);
                j = max;
            }
            i3++;
            arrayList2 = arrayList;
            a4 = list;
            size = i;
        }
        this.v = i4;
        this.w = j;
        a[] aVarArr2 = (a[]) arrayList2.toArray(new a[0]);
        this.t = aVarArr2;
        this.u = a(aVarArr2);
        jVar.a();
        jVar.a(this);
    }

    private static long[][] a(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            jArr[i] = new long[aVarArr[i].f2304b.f2341b];
            jArr2[i] = aVarArr[i].f2304b.f2345f[0];
        }
        long j = 0;
        int i2 = 0;
        while (i2 < aVarArr.length) {
            long j2 = Long.MAX_VALUE;
            int i3 = -1;
            for (int i4 = 0; i4 < aVarArr.length; i4++) {
                if (!zArr[i4]) {
                    long j3 = jArr2[i4];
                    if (j3 <= j2) {
                        i3 = i4;
                        j2 = j3;
                    }
                }
            }
            int i5 = iArr[i3];
            jArr[i3][i5] = j;
            j += aVarArr[i3].f2304b.f2343d[i5];
            int i6 = i5 + 1;
            iArr[i3] = i6;
            if (i6 < jArr[i3].length) {
                jArr2[i3] = aVarArr[i3].f2304b.f2345f[i6];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return jArr;
    }

    private void b(long j) throws ai {
        while (!this.f2301g.isEmpty() && this.f2301g.peek().f2238b == j) {
            a.C0036a pop = this.f2301g.pop();
            if (pop.f2237a == 1836019574) {
                a(pop);
                this.f2301g.clear();
                this.j = 2;
            } else if (!this.f2301g.isEmpty()) {
                this.f2301g.peek().a(pop);
            }
        }
        if (this.j != 2) {
            d();
        }
    }

    private static boolean b(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(com.applovin.exoplayer2.e.i r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.g.b(com.applovin.exoplayer2.e.i):boolean");
    }

    private boolean b(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        boolean z;
        long j = this.l - this.m;
        long c2 = iVar.c() + j;
        y yVar = this.n;
        if (yVar != null) {
            iVar.b(yVar.d(), this.m, (int) j);
            if (this.k == 1718909296) {
                this.x = a(yVar);
            } else if (!this.f2301g.isEmpty()) {
                this.f2301g.peek().a(new a.b(this.k, yVar));
            }
        } else if (j >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            uVar.f2707a = iVar.c() + j;
            z = true;
            b(c2);
            return (z || this.j == 2) ? false : true;
        } else {
            iVar.b((int) j);
        }
        z = false;
        b(c2);
        if (z) {
        }
    }

    private int c(long j) {
        int i = -1;
        int i2 = -1;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        long j3 = Long.MAX_VALUE;
        boolean z2 = true;
        long j4 = Long.MAX_VALUE;
        for (int i3 = 0; i3 < ((a[]) com.applovin.exoplayer2.l.ai.a(this.t)).length; i3++) {
            a aVar = this.t[i3];
            int i4 = aVar.f2306d;
            if (i4 != aVar.f2304b.f2341b) {
                long j5 = aVar.f2304b.f2342c[i4];
                long j6 = ((long[][]) com.applovin.exoplayer2.l.ai.a(this.u))[i3][i4];
                long j7 = j5 - j;
                boolean z3 = j7 < 0 || j7 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
                if ((!z3 && z2) || (z3 == z2 && j7 < j4)) {
                    z2 = z3;
                    j4 = j7;
                    i2 = i3;
                    j3 = j6;
                }
                if (j6 < j2) {
                    z = z3;
                    i = i3;
                    j2 = j6;
                }
            }
        }
        return (j2 == Long.MAX_VALUE || !z || j3 < j2 + 10485760) ? i2 : i;
    }

    private int c(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        int a2 = this.f2302h.a(iVar, uVar, this.i);
        if (a2 == 1 && uVar.f2707a == 0) {
            d();
        }
        return a2;
    }

    private void c(com.applovin.exoplayer2.e.i iVar) throws IOException {
        this.f2299e.a(8);
        iVar.d(this.f2299e.d(), 0, 8);
        b.a(this.f2299e);
        iVar.b(this.f2299e.c());
        iVar.a();
    }

    private static boolean c(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    private int d(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        long c2 = iVar.c();
        if (this.o == -1) {
            int c3 = c(c2);
            this.o = c3;
            if (c3 == -1) {
                return -1;
            }
        }
        a aVar = ((a[]) com.applovin.exoplayer2.l.ai.a(this.t))[this.o];
        x xVar = aVar.f2305c;
        int i = aVar.f2306d;
        long j = aVar.f2304b.f2342c[i];
        int i2 = aVar.f2304b.f2343d[i];
        long j2 = (j - c2) + this.p;
        if (j2 < 0 || j2 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            uVar.f2707a = j;
            return 1;
        }
        if (aVar.f2303a.f2325g == 1) {
            j2 += 8;
            i2 -= 8;
        }
        iVar.b((int) j2);
        if (aVar.f2303a.j == 0) {
            if (MimeTypes.AUDIO_AC4.equals(aVar.f2303a.f2324f.l)) {
                if (this.q == 0) {
                    com.applovin.exoplayer2.b.c.a(i2, this.f2299e);
                    xVar.a(this.f2299e, 7);
                    this.q += 7;
                }
                i2 += 7;
            }
            while (true) {
                int i3 = this.q;
                if (i3 >= i2) {
                    break;
                }
                int a2 = xVar.a((com.applovin.exoplayer2.k.g) iVar, i2 - i3, false);
                this.p += a2;
                this.q += a2;
                this.r -= a2;
            }
        } else {
            byte[] d2 = this.f2298d.d();
            d2[0] = 0;
            d2[1] = 0;
            d2[2] = 0;
            int i4 = aVar.f2303a.j;
            int i5 = 4 - aVar.f2303a.j;
            while (this.q < i2) {
                int i6 = this.r;
                if (i6 == 0) {
                    iVar.b(d2, i5, i4);
                    this.p += i4;
                    this.f2298d.d(0);
                    int q = this.f2298d.q();
                    if (q < 0) {
                        throw ai.b("Invalid NAL length", null);
                    }
                    this.r = q;
                    this.f2297c.d(0);
                    xVar.a(this.f2297c, 4);
                    this.q += 4;
                    i2 += i5;
                } else {
                    int a3 = xVar.a((com.applovin.exoplayer2.k.g) iVar, i6, false);
                    this.p += a3;
                    this.q += a3;
                    this.r -= a3;
                }
            }
        }
        xVar.a(aVar.f2304b.f2345f[i], aVar.f2304b.f2346g[i], i2, 0, null);
        aVar.f2306d++;
        this.o = -1;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        return 0;
    }

    private void d() {
        this.j = 0;
        this.m = 0;
    }

    private void d(long j) {
        a[] aVarArr;
        for (a aVar : this.t) {
            n nVar = aVar.f2304b;
            int a2 = nVar.a(j);
            if (a2 == -1) {
                a2 = nVar.b(j);
            }
            aVar.f2306d = a2;
        }
    }

    private void e() {
        if (this.x != 2 || (this.f2296b & 2) == 0) {
            return;
        }
        com.applovin.exoplayer2.e.j jVar = (com.applovin.exoplayer2.e.j) com.applovin.exoplayer2.l.a.b(this.s);
        jVar.a(0, 4).a(new v.a().a(this.y == null ? null : new com.applovin.exoplayer2.g.a(this.y)).a());
        jVar.a();
        jVar.a(new v.b(C.TIME_UNSET));
    }

    private void e(long j) {
        if (this.k == 1836086884) {
            int i = this.m;
            this.y = new com.applovin.exoplayer2.g.f.b(0L, j, C.TIME_UNSET, j + i, this.l - i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] f() {
        return new com.applovin.exoplayer2.e.h[]{new g()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        while (true) {
            int i = this.j;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            return c(iVar, uVar);
                        }
                        throw new IllegalStateException();
                    }
                    return d(iVar, uVar);
                } else if (b(iVar, uVar)) {
                    return 1;
                }
            } else if (!b(iVar)) {
                return -1;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        int b2;
        if (((a[]) com.applovin.exoplayer2.l.a.b(this.t)).length == 0) {
            return new v.a(w.f2712a);
        }
        int i = this.v;
        if (i != -1) {
            n nVar = this.t[i].f2304b;
            int a2 = a(nVar, j);
            if (a2 == -1) {
                return new v.a(w.f2712a);
            }
            long j6 = nVar.f2345f[a2];
            j2 = nVar.f2342c[a2];
            if (j6 >= j || a2 >= nVar.f2341b - 1 || (b2 = nVar.b(j)) == -1 || b2 == a2) {
                j5 = -1;
                j4 = -9223372036854775807L;
            } else {
                j4 = nVar.f2345f[b2];
                j5 = nVar.f2342c[b2];
            }
            j3 = j5;
            j = j6;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -1;
            j4 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            a[] aVarArr = this.t;
            if (i2 >= aVarArr.length) {
                break;
            }
            if (i2 != this.v) {
                n nVar2 = aVarArr[i2].f2304b;
                long a3 = a(nVar2, j, j2);
                if (j4 != C.TIME_UNSET) {
                    j3 = a(nVar2, j4, j3);
                }
                j2 = a3;
            }
            i2++;
        }
        w wVar = new w(j, j2);
        return j4 == C.TIME_UNSET ? new v.a(wVar) : new v.a(wVar, new w(j4, j3));
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        this.f2301g.clear();
        this.m = 0;
        this.o = -1;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        if (j != 0) {
            if (this.t != null) {
                d(j2);
            }
        } else if (this.j != 3) {
            d();
        } else {
            this.f2302h.a();
            this.i.clear();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.s = jVar;
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return j.a(iVar, (this.f2296b & 2) != 0);
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.w;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
