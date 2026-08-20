package com.applovin.exoplayer2.e.g;

import android.util.Pair;
import android.util.SparseArray;
import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.e.g.a;
import com.applovin.exoplayer2.e.r;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes.dex */
public class e implements com.applovin.exoplayer2.e.h {

    /* renamed from: a  reason: collision with root package name */
    public static final com.applovin.exoplayer2.e.l f2276a = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.g.e$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            com.applovin.exoplayer2.e.h[] d2;
            d2 = e.d();
            return d2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f2277b = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: c  reason: collision with root package name */
    private static final v f2278c = new v.a().f(MimeTypes.APPLICATION_EMSG).a();
    private long A;
    private long B;
    private b C;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private com.applovin.exoplayer2.e.j H;
    private x[] I;
    private x[] J;
    private boolean K;

    /* renamed from: d  reason: collision with root package name */
    private final int f2279d;

    /* renamed from: e  reason: collision with root package name */
    private final k f2280e;

    /* renamed from: f  reason: collision with root package name */
    private final List<v> f2281f;

    /* renamed from: g  reason: collision with root package name */
    private final SparseArray<b> f2282g;

    /* renamed from: h  reason: collision with root package name */
    private final y f2283h;
    private final y i;
    private final y j;
    private final byte[] k;
    private final y l;
    private final ag m;
    private final com.applovin.exoplayer2.g.b.c n;
    private final y o;
    private final ArrayDeque<a.C0036a> p;
    private final ArrayDeque<a> q;
    private final x r;
    private int s;
    private int t;
    private long u;
    private int v;
    private y w;
    private long x;
    private int y;
    private long z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f2284a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2285b;

        public a(long j, int i) {
            this.f2284a = j;
            this.f2285b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final x f2286a;

        /* renamed from: d  reason: collision with root package name */
        public n f2289d;

        /* renamed from: e  reason: collision with root package name */
        public c f2290e;

        /* renamed from: f  reason: collision with root package name */
        public int f2291f;

        /* renamed from: g  reason: collision with root package name */
        public int f2292g;

        /* renamed from: h  reason: collision with root package name */
        public int f2293h;
        public int i;
        private boolean l;

        /* renamed from: b  reason: collision with root package name */
        public final m f2287b = new m();

        /* renamed from: c  reason: collision with root package name */
        public final y f2288c = new y();
        private final y j = new y(1);
        private final y k = new y();

        public b(x xVar, n nVar, c cVar) {
            this.f2286a = xVar;
            this.f2289d = nVar;
            this.f2290e = cVar;
            a(nVar, cVar);
        }

        public int a(int i, int i2) {
            y yVar;
            int length;
            l h2 = h();
            if (h2 == null) {
                return 0;
            }
            if (h2.f2330d != 0) {
                yVar = this.f2287b.p;
                length = h2.f2330d;
            } else {
                byte[] bArr = (byte[]) ai.a(h2.f2331e);
                this.k.a(bArr, bArr.length);
                yVar = this.k;
                length = bArr.length;
            }
            boolean c2 = this.f2287b.c(this.f2291f);
            boolean z = c2 || i2 != 0;
            this.j.d()[0] = (byte) ((z ? 128 : 0) | length);
            this.j.d(0);
            this.f2286a.a(this.j, 1, 1);
            this.f2286a.a(yVar, length, 1);
            if (z) {
                if (!c2) {
                    this.f2288c.a(8);
                    byte[] d2 = this.f2288c.d();
                    d2[0] = 0;
                    d2[1] = 1;
                    d2[2] = (byte) ((i2 >> 8) & 255);
                    d2[3] = (byte) (i2 & 255);
                    d2[4] = (byte) ((i >> 24) & 255);
                    d2[5] = (byte) ((i >> 16) & 255);
                    d2[6] = (byte) ((i >> 8) & 255);
                    d2[7] = (byte) (i & 255);
                    this.f2286a.a(this.f2288c, 8, 1);
                    return length + 9;
                }
                y yVar2 = this.f2287b.p;
                int i3 = yVar2.i();
                yVar2.e(-2);
                int i4 = (i3 * 6) + 2;
                if (i2 != 0) {
                    this.f2288c.a(i4);
                    byte[] d3 = this.f2288c.d();
                    yVar2.a(d3, 0, i4);
                    int i5 = (((d3[2] & 255) << 8) | (d3[3] & 255)) + i2;
                    d3[2] = (byte) ((i5 >> 8) & 255);
                    d3[3] = (byte) (i5 & 255);
                    yVar2 = this.f2288c;
                }
                this.f2286a.a(yVar2, i4, 1);
                return length + 1 + i4;
            }
            return length + 1;
        }

        public void a() {
            this.f2287b.a();
            this.f2291f = 0;
            this.f2293h = 0;
            this.f2292g = 0;
            this.i = 0;
            this.l = false;
        }

        public void a(long j) {
            for (int i = this.f2291f; i < this.f2287b.f2337f && this.f2287b.b(i) < j; i++) {
                if (this.f2287b.l[i]) {
                    this.i = i;
                }
            }
        }

        public void a(com.applovin.exoplayer2.d.e eVar) {
            l a2 = this.f2289d.f2340a.a(((c) ai.a(this.f2287b.f2332a)).f2266a);
            this.f2286a.a(this.f2289d.f2340a.f2324f.a().a(eVar.a(a2 != null ? a2.f2328b : null)).a());
        }

        public void a(n nVar, c cVar) {
            this.f2289d = nVar;
            this.f2290e = cVar;
            this.f2286a.a(nVar.f2340a.f2324f);
            a();
        }

        public long b() {
            return !this.l ? this.f2289d.f2345f[this.f2291f] : this.f2287b.b(this.f2291f);
        }

        public long c() {
            return !this.l ? this.f2289d.f2342c[this.f2291f] : this.f2287b.f2338g[this.f2293h];
        }

        public int d() {
            return !this.l ? this.f2289d.f2343d[this.f2291f] : this.f2287b.i[this.f2291f];
        }

        public int e() {
            int i = !this.l ? this.f2289d.f2346g[this.f2291f] : this.f2287b.l[this.f2291f] ? 1 : 0;
            return h() != null ? i | 1073741824 : i;
        }

        public boolean f() {
            this.f2291f++;
            if (this.l) {
                int i = this.f2292g + 1;
                this.f2292g = i;
                int[] iArr = this.f2287b.f2339h;
                int i2 = this.f2293h;
                if (i == iArr[i2]) {
                    this.f2293h = i2 + 1;
                    this.f2292g = 0;
                    return false;
                }
                return true;
            }
            return false;
        }

        public void g() {
            l h2 = h();
            if (h2 == null) {
                return;
            }
            y yVar = this.f2287b.p;
            if (h2.f2330d != 0) {
                yVar.e(h2.f2330d);
            }
            if (this.f2287b.c(this.f2291f)) {
                yVar.e(yVar.i() * 6);
            }
        }

        public l h() {
            if (this.l) {
                l a2 = this.f2287b.o != null ? this.f2287b.o : this.f2289d.f2340a.a(((c) ai.a(this.f2287b.f2332a)).f2266a);
                if (a2 == null || !a2.f2327a) {
                    return null;
                }
                return a2;
            }
            return null;
        }
    }

    public e() {
        this(0);
    }

    public e(int i) {
        this(i, null);
    }

    public e(int i, ag agVar) {
        this(i, agVar, null, Collections.emptyList());
    }

    public e(int i, ag agVar, k kVar, List<v> list) {
        this(i, agVar, kVar, list, null);
    }

    public e(int i, ag agVar, k kVar, List<v> list, x xVar) {
        this.f2279d = i;
        this.m = agVar;
        this.f2280e = kVar;
        this.f2281f = Collections.unmodifiableList(list);
        this.r = xVar;
        this.n = new com.applovin.exoplayer2.g.b.c();
        this.o = new y(16);
        this.f2283h = new y(com.applovin.exoplayer2.l.v.f3837a);
        this.i = new y(5);
        this.j = new y();
        byte[] bArr = new byte[16];
        this.k = bArr;
        this.l = new y(bArr);
        this.p = new ArrayDeque<>();
        this.q = new ArrayDeque<>();
        this.f2282g = new SparseArray<>();
        this.A = C.TIME_UNSET;
        this.z = C.TIME_UNSET;
        this.B = C.TIME_UNSET;
        this.H = com.applovin.exoplayer2.e.j.f2646a;
        this.I = new x[0];
        this.J = new x[0];
    }

    private static int a(int i) throws com.applovin.exoplayer2.ai {
        if (i >= 0) {
            return i;
        }
        throw com.applovin.exoplayer2.ai.b("Unexpected negative value: " + i, null);
    }

    private static int a(b bVar, int i, int i2, y yVar, int i3) throws com.applovin.exoplayer2.ai {
        boolean z;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        boolean z4;
        boolean z5;
        b bVar2 = bVar;
        yVar.d(8);
        int b2 = com.applovin.exoplayer2.e.g.a.b(yVar.q());
        k kVar = bVar2.f2289d.f2340a;
        m mVar = bVar2.f2287b;
        c cVar = (c) ai.a(mVar.f2332a);
        mVar.f2339h[i] = yVar.w();
        mVar.f2338g[i] = mVar.f2334c;
        if ((b2 & 1) != 0) {
            long[] jArr = mVar.f2338g;
            jArr[i] = jArr[i] + yVar.q();
        }
        boolean z6 = (b2 & 4) != 0;
        int i6 = cVar.f2269d;
        if (z6) {
            i6 = yVar.q();
        }
        boolean z7 = (b2 & 256) != 0;
        boolean z8 = (b2 & 512) != 0;
        boolean z9 = (b2 & 1024) != 0;
        boolean z10 = (b2 & 2048) != 0;
        long j = 0;
        if (kVar.f2326h != null && kVar.f2326h.length == 1 && kVar.f2326h[0] == 0) {
            j = ai.d(((long[]) ai.a(kVar.i))[0], 1000000L, kVar.f2321c);
        }
        int[] iArr = mVar.i;
        int[] iArr2 = mVar.j;
        long[] jArr2 = mVar.k;
        boolean[] zArr = mVar.l;
        int i7 = i6;
        boolean z11 = kVar.f2320b == 2 && (i2 & 1) != 0;
        int i8 = i3 + mVar.f2339h[i];
        boolean z12 = z11;
        long j2 = kVar.f2321c;
        long j3 = j;
        long j4 = mVar.r;
        int i9 = i3;
        while (i9 < i8) {
            int a2 = a(z7 ? yVar.q() : cVar.f2267b);
            if (z8) {
                z = z7;
                i4 = yVar.q();
            } else {
                z = z7;
                i4 = cVar.f2268c;
            }
            int a3 = a(i4);
            if (z9) {
                z2 = z6;
                i5 = yVar.q();
            } else if (i9 == 0 && z6) {
                z2 = z6;
                i5 = i7;
            } else {
                z2 = z6;
                i5 = cVar.f2269d;
            }
            boolean z13 = z10;
            if (z10) {
                z3 = z8;
                z4 = z9;
                iArr2[i9] = (int) ((yVar.q() * 1000000) / j2);
                z5 = false;
            } else {
                z3 = z8;
                z4 = z9;
                z5 = false;
                iArr2[i9] = 0;
            }
            jArr2[i9] = ai.d(j4, 1000000L, j2) - j3;
            if (!mVar.s) {
                jArr2[i9] = jArr2[i9] + bVar2.f2289d.f2347h;
            }
            iArr[i9] = a3;
            zArr[i9] = (((i5 >> 16) & 1) != 0 || (z12 && i9 != 0)) ? z5 : true;
            j4 += a2;
            i9++;
            bVar2 = bVar;
            z7 = z;
            j2 = j2;
            z6 = z2;
            z10 = z13;
            z8 = z3;
            z9 = z4;
        }
        mVar.r = j4;
        return i8;
    }

    private static Pair<Long, com.applovin.exoplayer2.e.c> a(y yVar, long j) throws com.applovin.exoplayer2.ai {
        long y;
        long y2;
        int[] iArr;
        yVar.d(8);
        int a2 = com.applovin.exoplayer2.e.g.a.a(yVar.q());
        yVar.e(4);
        long o = yVar.o();
        if (a2 == 0) {
            y = yVar.o();
            y2 = yVar.o();
        } else {
            y = yVar.y();
            y2 = yVar.y();
        }
        long j2 = y;
        long j3 = j + y2;
        long d2 = ai.d(j2, 1000000L, o);
        yVar.e(2);
        int i = yVar.i();
        int[] iArr2 = new int[i];
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        long[] jArr3 = new long[i];
        long j4 = d2;
        int i2 = 0;
        long j5 = j2;
        while (i2 < i) {
            int q = yVar.q();
            if ((q & Integer.MIN_VALUE) != 0) {
                throw com.applovin.exoplayer2.ai.b("Unhandled indirect reference", null);
            }
            long o2 = yVar.o();
            iArr2[i2] = q & Integer.MAX_VALUE;
            jArr[i2] = j3;
            jArr3[i2] = j4;
            long j6 = j5 + o2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i3 = i;
            long d3 = ai.d(j6, 1000000L, o);
            jArr4[i2] = d3 - jArr5[i2];
            yVar.e(4);
            j3 += iArr[i2];
            i2++;
            iArr2 = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            i = i3;
            j5 = j6;
            j4 = d3;
        }
        return Pair.create(Long.valueOf(d2), new com.applovin.exoplayer2.e.c(iArr2, jArr, jArr2, jArr3));
    }

    private static com.applovin.exoplayer2.d.e a(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            a.b bVar = list.get(i);
            if (bVar.f2237a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] d2 = bVar.f2241b.d();
                UUID b2 = h.b(d2);
                if (b2 == null) {
                    q.c("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new e.a(b2, MimeTypes.VIDEO_MP4, d2));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new com.applovin.exoplayer2.d.e(arrayList);
    }

    private c a(SparseArray<c> sparseArray, int i) {
        return (c) (sparseArray.size() == 1 ? sparseArray.valueAt(0) : com.applovin.exoplayer2.l.a.b(sparseArray.get(i)));
    }

    private static b a(SparseArray<b> sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < size; i++) {
            b valueAt = sparseArray.valueAt(i);
            if ((valueAt.l || valueAt.f2291f != valueAt.f2289d.f2341b) && (!valueAt.l || valueAt.f2293h != valueAt.f2287b.f2336e)) {
                long c2 = valueAt.c();
                if (c2 < j) {
                    bVar = valueAt;
                    j = c2;
                }
            }
        }
        return bVar;
    }

    private static b a(y yVar, SparseArray<b> sparseArray, boolean z) {
        yVar.d(8);
        int b2 = com.applovin.exoplayer2.e.g.a.b(yVar.q());
        b valueAt = z ? sparseArray.valueAt(0) : sparseArray.get(yVar.q());
        if (valueAt == null) {
            return null;
        }
        if ((b2 & 1) != 0) {
            long y = yVar.y();
            valueAt.f2287b.f2334c = y;
            valueAt.f2287b.f2335d = y;
        }
        c cVar = valueAt.f2290e;
        valueAt.f2287b.f2332a = new c((b2 & 2) != 0 ? yVar.q() - 1 : cVar.f2266a, (b2 & 8) != 0 ? yVar.q() : cVar.f2267b, (b2 & 16) != 0 ? yVar.q() : cVar.f2268c, (b2 & 32) != 0 ? yVar.q() : cVar.f2269d);
        return valueAt;
    }

    private void a() {
        this.s = 0;
        this.v = 0;
    }

    private void a(long j) throws com.applovin.exoplayer2.ai {
        while (!this.p.isEmpty() && this.p.peek().f2238b == j) {
            a(this.p.pop());
        }
        a();
    }

    private void a(a.C0036a c0036a) throws com.applovin.exoplayer2.ai {
        if (c0036a.f2237a == 1836019574) {
            b(c0036a);
        } else if (c0036a.f2237a == 1836019558) {
            c(c0036a);
        } else if (this.p.isEmpty()) {
        } else {
            this.p.peek().a(c0036a);
        }
    }

    private static void a(a.C0036a c0036a, SparseArray<b> sparseArray, boolean z, int i, byte[] bArr) throws com.applovin.exoplayer2.ai {
        int size = c0036a.f2240d.size();
        for (int i2 = 0; i2 < size; i2++) {
            a.C0036a c0036a2 = c0036a.f2240d.get(i2);
            if (c0036a2.f2237a == 1953653094) {
                b(c0036a2, sparseArray, z, i, bArr);
            }
        }
    }

    private static void a(a.C0036a c0036a, b bVar, int i) throws com.applovin.exoplayer2.ai {
        List<a.b> list = c0036a.f2239c;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            a.b bVar2 = list.get(i4);
            if (bVar2.f2237a == 1953658222) {
                y yVar = bVar2.f2241b;
                yVar.d(12);
                int w = yVar.w();
                if (w > 0) {
                    i3 += w;
                    i2++;
                }
            }
        }
        bVar.f2293h = 0;
        bVar.f2292g = 0;
        bVar.f2291f = 0;
        bVar.f2287b.a(i2, i3);
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            a.b bVar3 = list.get(i7);
            if (bVar3.f2237a == 1953658222) {
                i6 = a(bVar, i5, i, bVar3.f2241b, i6);
                i5++;
            }
        }
    }

    private static void a(a.C0036a c0036a, String str, m mVar) throws com.applovin.exoplayer2.ai {
        byte[] bArr = null;
        y yVar = null;
        y yVar2 = null;
        for (int i = 0; i < c0036a.f2239c.size(); i++) {
            a.b bVar = c0036a.f2239c.get(i);
            y yVar3 = bVar.f2241b;
            if (bVar.f2237a == 1935828848) {
                yVar3.d(12);
                if (yVar3.q() == 1936025959) {
                    yVar = yVar3;
                }
            } else if (bVar.f2237a == 1936158820) {
                yVar3.d(12);
                if (yVar3.q() == 1936025959) {
                    yVar2 = yVar3;
                }
            }
        }
        if (yVar == null || yVar2 == null) {
            return;
        }
        yVar.d(8);
        int a2 = com.applovin.exoplayer2.e.g.a.a(yVar.q());
        yVar.e(4);
        if (a2 == 1) {
            yVar.e(4);
        }
        if (yVar.q() != 1) {
            throw com.applovin.exoplayer2.ai.a("Entry count in sbgp != 1 (unsupported).");
        }
        yVar2.d(8);
        int a3 = com.applovin.exoplayer2.e.g.a.a(yVar2.q());
        yVar2.e(4);
        if (a3 == 1) {
            if (yVar2.o() == 0) {
                throw com.applovin.exoplayer2.ai.a("Variable length description in sgpd found (unsupported)");
            }
        } else if (a3 >= 2) {
            yVar2.e(4);
        }
        if (yVar2.o() != 1) {
            throw com.applovin.exoplayer2.ai.a("Entry count in sgpd != 1 (unsupported).");
        }
        yVar2.e(1);
        int h2 = yVar2.h();
        int i2 = (h2 & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        int i3 = h2 & 15;
        boolean z = yVar2.h() == 1;
        if (z) {
            int h3 = yVar2.h();
            byte[] bArr2 = new byte[16];
            yVar2.a(bArr2, 0, 16);
            if (h3 == 0) {
                int h4 = yVar2.h();
                bArr = new byte[h4];
                yVar2.a(bArr, 0, h4);
            }
            mVar.m = true;
            mVar.o = new l(z, str, h3, bArr2, i2, i3, bArr);
        }
    }

    private void a(a.b bVar, long j) throws com.applovin.exoplayer2.ai {
        if (!this.p.isEmpty()) {
            this.p.peek().a(bVar);
        } else if (bVar.f2237a != 1936286840) {
            if (bVar.f2237a == 1701671783) {
                a(bVar.f2241b);
            }
        } else {
            Pair<Long, com.applovin.exoplayer2.e.c> a2 = a(bVar.f2241b, j);
            this.B = ((Long) a2.first).longValue();
            this.H.a((com.applovin.exoplayer2.e.v) a2.second);
            this.K = true;
        }
    }

    private static void a(l lVar, y yVar, m mVar) throws com.applovin.exoplayer2.ai {
        int i;
        int i2 = lVar.f2330d;
        yVar.d(8);
        if ((com.applovin.exoplayer2.e.g.a.b(yVar.q()) & 1) == 1) {
            yVar.e(8);
        }
        int h2 = yVar.h();
        int w = yVar.w();
        if (w > mVar.f2337f) {
            throw com.applovin.exoplayer2.ai.b("Saiz sample count " + w + " is greater than fragment sample count" + mVar.f2337f, null);
        }
        if (h2 == 0) {
            boolean[] zArr = mVar.n;
            i = 0;
            for (int i3 = 0; i3 < w; i3++) {
                int h3 = yVar.h();
                i += h3;
                zArr[i3] = h3 > i2;
            }
        } else {
            i = h2 * w;
            Arrays.fill(mVar.n, 0, w, h2 > i2);
        }
        Arrays.fill(mVar.n, w, mVar.f2337f, false);
        if (i > 0) {
            mVar.a(i);
        }
    }

    private void a(y yVar) {
        long d2;
        String str;
        long d3;
        String str2;
        long o;
        long j;
        x[] xVarArr;
        if (this.I.length == 0) {
            return;
        }
        yVar.d(8);
        int a2 = com.applovin.exoplayer2.e.g.a.a(yVar.q());
        if (a2 == 0) {
            String str3 = (String) com.applovin.exoplayer2.l.a.b(yVar.B());
            String str4 = (String) com.applovin.exoplayer2.l.a.b(yVar.B());
            long o2 = yVar.o();
            d2 = ai.d(yVar.o(), 1000000L, o2);
            long j2 = this.B;
            long j3 = j2 != C.TIME_UNSET ? j2 + d2 : -9223372036854775807L;
            str = str3;
            d3 = ai.d(yVar.o(), 1000L, o2);
            str2 = str4;
            o = yVar.o();
            j = j3;
        } else if (a2 != 1) {
            q.c("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + a2);
            return;
        } else {
            long o3 = yVar.o();
            j = ai.d(yVar.y(), 1000000L, o3);
            long d4 = ai.d(yVar.o(), 1000L, o3);
            long o4 = yVar.o();
            str = (String) com.applovin.exoplayer2.l.a.b(yVar.B());
            d3 = d4;
            o = o4;
            str2 = (String) com.applovin.exoplayer2.l.a.b(yVar.B());
            d2 = -9223372036854775807L;
        }
        byte[] bArr = new byte[yVar.a()];
        yVar.a(bArr, 0, yVar.a());
        y yVar2 = new y(this.n.a(new com.applovin.exoplayer2.g.b.a(str, str2, d3, o, bArr)));
        int a3 = yVar2.a();
        for (x xVar : this.I) {
            yVar2.d(0);
            xVar.a(yVar2, a3);
        }
        if (j == C.TIME_UNSET) {
            this.q.addLast(new a(d2, a3));
            this.y += a3;
            return;
        }
        ag agVar = this.m;
        if (agVar != null) {
            j = agVar.c(j);
        }
        for (x xVar2 : this.I) {
            xVar2.a(j, 1, a3, 0, null);
        }
    }

    private static void a(y yVar, int i, m mVar) throws com.applovin.exoplayer2.ai {
        yVar.d(i + 8);
        int b2 = com.applovin.exoplayer2.e.g.a.b(yVar.q());
        if ((b2 & 1) != 0) {
            throw com.applovin.exoplayer2.ai.a("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (b2 & 2) != 0;
        int w = yVar.w();
        if (w == 0) {
            Arrays.fill(mVar.n, 0, mVar.f2337f, false);
        } else if (w != mVar.f2337f) {
            throw com.applovin.exoplayer2.ai.b("Senc sample count " + w + " is different from fragment sample count" + mVar.f2337f, null);
        } else {
            Arrays.fill(mVar.n, 0, w, z);
            mVar.a(yVar.a());
            mVar.a(yVar);
        }
    }

    private static void a(y yVar, m mVar) throws com.applovin.exoplayer2.ai {
        yVar.d(8);
        int q = yVar.q();
        if ((com.applovin.exoplayer2.e.g.a.b(q) & 1) == 1) {
            yVar.e(8);
        }
        int w = yVar.w();
        if (w != 1) {
            throw com.applovin.exoplayer2.ai.b("Unexpected saio entry count: " + w, null);
        }
        mVar.f2335d += com.applovin.exoplayer2.e.g.a.a(q) == 0 ? yVar.o() : yVar.y();
    }

    private static void a(y yVar, m mVar, byte[] bArr) throws com.applovin.exoplayer2.ai {
        yVar.d(8);
        yVar.a(bArr, 0, 16);
        if (Arrays.equals(bArr, f2277b)) {
            a(yVar, 16, mVar);
        }
    }

    private static Pair<Integer, c> b(y yVar) {
        yVar.d(12);
        return Pair.create(Integer.valueOf(yVar.q()), new c(yVar.q() - 1, yVar.q(), yVar.q(), yVar.q()));
    }

    private void b() {
        int i;
        x[] xVarArr = new x[2];
        this.I = xVarArr;
        x xVar = this.r;
        int i2 = 0;
        if (xVar != null) {
            xVarArr[0] = xVar;
            i = 1;
        } else {
            i = 0;
        }
        int i3 = 100;
        if ((this.f2279d & 4) != 0) {
            xVarArr[i] = this.H.a(100, 5);
            i3 = 101;
            i++;
        }
        x[] xVarArr2 = (x[]) ai.a(this.I, i);
        this.I = xVarArr2;
        for (x xVar2 : xVarArr2) {
            xVar2.a(f2278c);
        }
        this.J = new x[this.f2281f.size()];
        while (i2 < this.J.length) {
            x a2 = this.H.a(i3, 3);
            a2.a(this.f2281f.get(i2));
            this.J[i2] = a2;
            i2++;
            i3++;
        }
    }

    private void b(long j) {
        while (!this.q.isEmpty()) {
            a removeFirst = this.q.removeFirst();
            this.y -= removeFirst.f2285b;
            long j2 = removeFirst.f2284a + j;
            ag agVar = this.m;
            if (agVar != null) {
                j2 = agVar.c(j2);
            }
            for (x xVar : this.I) {
                xVar.a(j2, 1, removeFirst.f2285b, this.y, null);
            }
        }
    }

    private void b(a.C0036a c0036a) throws com.applovin.exoplayer2.ai {
        int i = 0;
        com.applovin.exoplayer2.l.a.b(this.f2280e == null, "Unexpected moov box.");
        com.applovin.exoplayer2.d.e a2 = a(c0036a.f2239c);
        a.C0036a c0036a2 = (a.C0036a) com.applovin.exoplayer2.l.a.b(c0036a.e(Atom.TYPE_mvex));
        SparseArray<c> sparseArray = new SparseArray<>();
        int size = c0036a2.f2239c.size();
        long j = -9223372036854775807L;
        for (int i2 = 0; i2 < size; i2++) {
            a.b bVar = c0036a2.f2239c.get(i2);
            if (bVar.f2237a == 1953654136) {
                Pair<Integer, c> b2 = b(bVar.f2241b);
                sparseArray.put(((Integer) b2.first).intValue(), (c) b2.second);
            } else if (bVar.f2237a == 1835362404) {
                j = c(bVar.f2241b);
            }
        }
        List<n> a3 = com.applovin.exoplayer2.e.g.b.a(c0036a, new r(), j, a2, (this.f2279d & 16) != 0, false, (Function<k, k>) new Function() { // from class: com.applovin.exoplayer2.e.g.e$$ExternalSyntheticLambda1
            @Override // com.applovin.exoplayer2.common.base.Function
            public final Object apply(Object obj) {
                return e.this.a((k) obj);
            }
        });
        int size2 = a3.size();
        if (this.f2282g.size() != 0) {
            com.applovin.exoplayer2.l.a.b(this.f2282g.size() == size2);
            while (i < size2) {
                n nVar = a3.get(i);
                k kVar = nVar.f2340a;
                this.f2282g.get(kVar.f2319a).a(nVar, a(sparseArray, kVar.f2319a));
                i++;
            }
            return;
        }
        while (i < size2) {
            n nVar2 = a3.get(i);
            k kVar2 = nVar2.f2340a;
            this.f2282g.put(kVar2.f2319a, new b(this.H.a(i, kVar2.f2320b), nVar2, a(sparseArray, kVar2.f2319a)));
            this.A = Math.max(this.A, kVar2.f2323e);
            i++;
        }
        this.H.a();
    }

    private static void b(a.C0036a c0036a, SparseArray<b> sparseArray, boolean z, int i, byte[] bArr) throws com.applovin.exoplayer2.ai {
        b a2 = a(((a.b) com.applovin.exoplayer2.l.a.b(c0036a.d(Atom.TYPE_tfhd))).f2241b, sparseArray, z);
        if (a2 == null) {
            return;
        }
        m mVar = a2.f2287b;
        long j = mVar.r;
        boolean z2 = mVar.s;
        a2.a();
        a2.l = true;
        a.b d2 = c0036a.d(Atom.TYPE_tfdt);
        if (d2 == null || (i & 2) != 0) {
            mVar.r = j;
            mVar.s = z2;
        } else {
            mVar.r = d(d2.f2241b);
            mVar.s = true;
        }
        a(c0036a, a2, i);
        l a3 = a2.f2289d.f2340a.a(((c) com.applovin.exoplayer2.l.a.b(mVar.f2332a)).f2266a);
        a.b d3 = c0036a.d(Atom.TYPE_saiz);
        if (d3 != null) {
            a((l) com.applovin.exoplayer2.l.a.b(a3), d3.f2241b, mVar);
        }
        a.b d4 = c0036a.d(Atom.TYPE_saio);
        if (d4 != null) {
            a(d4.f2241b, mVar);
        }
        a.b d5 = c0036a.d(Atom.TYPE_senc);
        if (d5 != null) {
            b(d5.f2241b, mVar);
        }
        a(c0036a, a3 != null ? a3.f2328b : null, mVar);
        int size = c0036a.f2239c.size();
        for (int i2 = 0; i2 < size; i2++) {
            a.b bVar = c0036a.f2239c.get(i2);
            if (bVar.f2237a == 1970628964) {
                a(bVar.f2241b, mVar, bArr);
            }
        }
    }

    private static void b(y yVar, m mVar) throws com.applovin.exoplayer2.ai {
        a(yVar, 0, mVar);
    }

    private static boolean b(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1937011827 || i == 1668576371 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1937011571 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(com.applovin.exoplayer2.e.i r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.e.b(com.applovin.exoplayer2.e.i):boolean");
    }

    private static long c(y yVar) {
        yVar.d(8);
        return com.applovin.exoplayer2.e.g.a.a(yVar.q()) == 0 ? yVar.o() : yVar.y();
    }

    private void c(a.C0036a c0036a) throws com.applovin.exoplayer2.ai {
        a(c0036a, this.f2282g, this.f2280e != null, this.f2279d, this.k);
        com.applovin.exoplayer2.d.e a2 = a(c0036a.f2239c);
        if (a2 != null) {
            int size = this.f2282g.size();
            for (int i = 0; i < size; i++) {
                this.f2282g.valueAt(i).a(a2);
            }
        }
        if (this.z != C.TIME_UNSET) {
            int size2 = this.f2282g.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f2282g.valueAt(i2).a(this.z);
            }
            this.z = C.TIME_UNSET;
        }
    }

    private void c(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int i = ((int) this.u) - this.v;
        y yVar = this.w;
        if (yVar != null) {
            iVar.b(yVar.d(), 8, i);
            a(new a.b(this.t, yVar), iVar.c());
        } else {
            iVar.b(i);
        }
        a(iVar.c());
    }

    private static boolean c(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    private static long d(y yVar) {
        yVar.d(8);
        return com.applovin.exoplayer2.e.g.a.a(yVar.q()) == 1 ? yVar.y() : yVar.o();
    }

    private void d(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int size = this.f2282g.size();
        long j = Long.MAX_VALUE;
        b bVar = null;
        for (int i = 0; i < size; i++) {
            m mVar = this.f2282g.valueAt(i).f2287b;
            if (mVar.q && mVar.f2335d < j) {
                j = mVar.f2335d;
                bVar = this.f2282g.valueAt(i);
            }
        }
        if (bVar == null) {
            this.s = 3;
            return;
        }
        int c2 = (int) (j - iVar.c());
        if (c2 < 0) {
            throw com.applovin.exoplayer2.ai.b("Offset to encryption data was negative.", null);
        }
        iVar.b(c2);
        bVar.f2287b.a(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] d() {
        return new com.applovin.exoplayer2.e.h[]{new e()};
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean e(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int a2;
        int a3;
        b bVar = this.C;
        Throwable th = null;
        if (bVar == null) {
            bVar = a(this.f2282g);
            if (bVar == null) {
                int c2 = (int) (this.x - iVar.c());
                if (c2 >= 0) {
                    iVar.b(c2);
                    a();
                    return false;
                }
                throw com.applovin.exoplayer2.ai.b("Offset to end of mdat was negative.", null);
            }
            int c3 = (int) (bVar.c() - iVar.c());
            if (c3 < 0) {
                q.c("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                c3 = 0;
            }
            iVar.b(c3);
            this.C = bVar;
        }
        int i = 4;
        int i2 = 1;
        if (this.s == 3) {
            this.D = bVar.d();
            if (bVar.f2291f < bVar.i) {
                iVar.b(this.D);
                bVar.g();
                if (!bVar.f()) {
                    this.C = null;
                }
                this.s = 3;
                return true;
            }
            if (bVar.f2289d.f2340a.f2325g == 1) {
                this.D -= 8;
                iVar.b(8);
            }
            if (MimeTypes.AUDIO_AC4.equals(bVar.f2289d.f2340a.f2324f.l)) {
                this.E = bVar.a(this.D, 7);
                com.applovin.exoplayer2.b.c.a(this.D, this.l);
                bVar.f2286a.a(this.l, 7);
                a3 = this.E + 7;
            } else {
                a3 = bVar.a(this.D, 0);
            }
            this.E = a3;
            this.D += this.E;
            this.s = 4;
            this.F = 0;
        }
        k kVar = bVar.f2289d.f2340a;
        x xVar = bVar.f2286a;
        long b2 = bVar.b();
        ag agVar = this.m;
        if (agVar != null) {
            b2 = agVar.c(b2);
        }
        long j = b2;
        if (kVar.j == 0) {
            while (true) {
                int i3 = this.E;
                int i4 = this.D;
                if (i3 >= i4) {
                    break;
                }
                this.E += xVar.a((com.applovin.exoplayer2.k.g) iVar, i4 - i3, false);
            }
        } else {
            byte[] d2 = this.i.d();
            d2[0] = 0;
            d2[1] = 0;
            d2[2] = 0;
            int i5 = kVar.j + 1;
            int i6 = 4 - kVar.j;
            while (this.E < this.D) {
                int i7 = this.F;
                if (i7 == 0) {
                    iVar.b(d2, i6, i5);
                    this.i.d(0);
                    int q = this.i.q();
                    if (q < i2) {
                        throw com.applovin.exoplayer2.ai.b("Invalid NAL length", th);
                    }
                    this.F = q - 1;
                    this.f2283h.d(0);
                    xVar.a(this.f2283h, i);
                    xVar.a(this.i, i2);
                    this.G = (this.J.length <= 0 || !com.applovin.exoplayer2.l.v.a(kVar.f2324f.l, d2[i])) ? 0 : i2;
                    this.E += 5;
                    this.D += i6;
                } else {
                    if (this.G) {
                        this.j.a(i7);
                        iVar.b(this.j.d(), 0, this.F);
                        xVar.a(this.j, this.F);
                        a2 = this.F;
                        int a4 = com.applovin.exoplayer2.l.v.a(this.j.d(), this.j.b());
                        this.j.d("video/hevc".equals(kVar.f2324f.l) ? 1 : 0);
                        this.j.c(a4);
                        com.applovin.exoplayer2.e.b.a(j, this.j, this.J);
                    } else {
                        a2 = xVar.a((com.applovin.exoplayer2.k.g) iVar, i7, false);
                    }
                    this.E += a2;
                    this.F -= a2;
                    th = null;
                    i = 4;
                    i2 = 1;
                }
            }
        }
        int e2 = bVar.e();
        l h2 = bVar.h();
        xVar.a(j, e2, this.D, 0, h2 != null ? h2.f2329c : null);
        b(j);
        if (!bVar.f()) {
            this.C = null;
        }
        this.s = 3;
        return true;
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        while (true) {
            int i = this.s;
            if (i != 0) {
                if (i == 1) {
                    c(iVar);
                } else if (i == 2) {
                    d(iVar);
                } else if (e(iVar)) {
                    return 0;
                }
            } else if (!b(iVar)) {
                return -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k a(k kVar) {
        return kVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        int size = this.f2282g.size();
        for (int i = 0; i < size; i++) {
            this.f2282g.valueAt(i).a();
        }
        this.q.clear();
        this.y = 0;
        this.z = j2;
        this.p.clear();
        a();
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.H = jVar;
        a();
        b();
        if (this.f2280e != null) {
            this.f2282g.put(0, new b(jVar.a(0, this.f2280e.f2320b), new n(this.f2280e, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.H.a();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return j.a(iVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
