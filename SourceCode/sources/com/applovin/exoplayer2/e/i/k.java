package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.google.android.exoplayer2.C;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class k implements j {

    /* renamed from: c  reason: collision with root package name */
    private static final double[] f2499c = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f2500a;

    /* renamed from: b  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2501b;

    /* renamed from: d  reason: collision with root package name */
    private final af f2502d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2503e;

    /* renamed from: f  reason: collision with root package name */
    private final r f2504f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean[] f2505g;

    /* renamed from: h  reason: collision with root package name */
    private final a f2506h;
    private long i;
    private boolean j;
    private boolean k;
    private long l;
    private long m;
    private long n;
    private long o;
    private boolean p;
    private boolean q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: d  reason: collision with root package name */
        private static final byte[] f2507d = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        public int f2508a;

        /* renamed from: b  reason: collision with root package name */
        public int f2509b;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f2510c;

        /* renamed from: e  reason: collision with root package name */
        private boolean f2511e;

        public a(int i) {
            this.f2510c = new byte[i];
        }

        public void a() {
            this.f2511e = false;
            this.f2508a = 0;
            this.f2509b = 0;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.f2511e) {
                int i3 = i2 - i;
                byte[] bArr2 = this.f2510c;
                int length = bArr2.length;
                int i4 = this.f2508a;
                if (length < i4 + i3) {
                    this.f2510c = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.f2510c, this.f2508a, i3);
                this.f2508a += i3;
            }
        }

        public boolean a(int i, int i2) {
            if (this.f2511e) {
                int i3 = this.f2508a - i2;
                this.f2508a = i3;
                if (this.f2509b != 0 || i != 181) {
                    this.f2511e = false;
                    return true;
                }
                this.f2509b = i3;
            } else if (i == 179) {
                this.f2511e = true;
            }
            byte[] bArr = f2507d;
            a(bArr, 0, bArr.length);
            return false;
        }
    }

    public k() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(af afVar) {
        com.applovin.exoplayer2.l.y yVar;
        this.f2502d = afVar;
        this.f2505g = new boolean[4];
        this.f2506h = new a(128);
        if (afVar != null) {
            this.f2504f = new r(178, 128);
            yVar = new com.applovin.exoplayer2.l.y();
        } else {
            yVar = null;
            this.f2504f = null;
        }
        this.f2503e = yVar;
        this.m = C.TIME_UNSET;
        this.o = C.TIME_UNSET;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<com.applovin.exoplayer2.v, java.lang.Long> a(com.applovin.exoplayer2.e.i.k.a r8, java.lang.String r9) {
        /*
            byte[] r0 = r8.f2510c
            int r1 = r8.f2508a
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r1 = 4
            r2 = r0[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 5
            r4 = r0[r3]
            r5 = r4 & 255(0xff, float:3.57E-43)
            r6 = 6
            r6 = r0[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r1
            int r5 = r5 >> r1
            r2 = r2 | r5
            r4 = r4 & 15
            int r4 = r4 << 8
            r4 = r4 | r6
            r5 = 7
            r6 = r0[r5]
            r6 = r6 & 240(0xf0, float:3.36E-43)
            int r6 = r6 >> r1
            r7 = 2
            if (r6 == r7) goto L3c
            r7 = 3
            if (r6 == r7) goto L36
            if (r6 == r1) goto L30
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L43
        L30:
            int r1 = r4 * 121
            float r1 = (float) r1
            int r6 = r2 * 100
            goto L41
        L36:
            int r1 = r4 * 16
            float r1 = (float) r1
            int r6 = r2 * 9
            goto L41
        L3c:
            int r1 = r4 * 4
            float r1 = (float) r1
            int r6 = r2 * 3
        L41:
            float r6 = (float) r6
            float r1 = r1 / r6
        L43:
            com.applovin.exoplayer2.v$a r6 = new com.applovin.exoplayer2.v$a
            r6.<init>()
            com.applovin.exoplayer2.v$a r9 = r6.a(r9)
            java.lang.String r6 = "video/mpeg2"
            com.applovin.exoplayer2.v$a r9 = r9.f(r6)
            com.applovin.exoplayer2.v$a r9 = r9.g(r2)
            com.applovin.exoplayer2.v$a r9 = r9.h(r4)
            com.applovin.exoplayer2.v$a r9 = r9.b(r1)
            java.util.List r1 = java.util.Collections.singletonList(r0)
            com.applovin.exoplayer2.v$a r9 = r9.a(r1)
            com.applovin.exoplayer2.v r9 = r9.a()
            r1 = r0[r5]
            r1 = r1 & 15
            int r1 = r1 + (-1)
            if (r1 < 0) goto L97
            double[] r2 = com.applovin.exoplayer2.e.i.k.f2499c
            int r4 = r2.length
            if (r1 >= r4) goto L97
            r1 = r2[r1]
            int r8 = r8.f2509b
            int r8 = r8 + 9
            r8 = r0[r8]
            r0 = r8 & 96
            int r0 = r0 >> r3
            r8 = r8 & 31
            if (r0 == r8) goto L8f
            double r3 = (double) r0
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 + r5
            int r8 = r8 + 1
            double r5 = (double) r8
            double r3 = r3 / r5
            double r1 = r1 * r3
        L8f:
            r3 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r3 = r3 / r1
            long r0 = (long) r3
            goto L99
        L97:
            r0 = 0
        L99:
            java.lang.Long r8 = java.lang.Long.valueOf(r0)
            android.util.Pair r8 = android.util.Pair.create(r9, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.k.a(com.applovin.exoplayer2.e.i.k$a, java.lang.String):android.util.Pair");
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        com.applovin.exoplayer2.l.v.a(this.f2505g);
        this.f2506h.a();
        r rVar = this.f2504f;
        if (rVar != null) {
            rVar.a();
        }
        this.i = 0L;
        this.j = false;
        this.m = C.TIME_UNSET;
        this.o = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        this.m = j;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.a();
        this.f2500a = dVar.c();
        this.f2501b = jVar.a(dVar.b(), 2);
        af afVar = this.f2502d;
        if (afVar != null) {
            afVar.a(jVar, dVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0144  */
    @Override // com.applovin.exoplayer2.e.i.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.applovin.exoplayer2.l.y r21) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.k.a(com.applovin.exoplayer2.l.y):void");
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
