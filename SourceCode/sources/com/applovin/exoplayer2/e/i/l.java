package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes.dex */
public final class l implements j {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f2512a = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: b  reason: collision with root package name */
    private final af f2513b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2514c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f2515d;

    /* renamed from: e  reason: collision with root package name */
    private final a f2516e;

    /* renamed from: f  reason: collision with root package name */
    private final r f2517f;

    /* renamed from: g  reason: collision with root package name */
    private b f2518g;

    /* renamed from: h  reason: collision with root package name */
    private long f2519h;
    private String i;
    private com.applovin.exoplayer2.e.x j;
    private boolean k;
    private long l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: d  reason: collision with root package name */
        private static final byte[] f2520d = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        public int f2521a;

        /* renamed from: b  reason: collision with root package name */
        public int f2522b;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f2523c;

        /* renamed from: e  reason: collision with root package name */
        private boolean f2524e;

        /* renamed from: f  reason: collision with root package name */
        private int f2525f;

        public a(int i) {
            this.f2523c = new byte[i];
        }

        public void a() {
            this.f2524e = false;
            this.f2521a = 0;
            this.f2525f = 0;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.f2524e) {
                int i3 = i2 - i;
                byte[] bArr2 = this.f2523c;
                int length = bArr2.length;
                int i4 = this.f2521a;
                if (length < i4 + i3) {
                    this.f2523c = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.f2523c, this.f2521a, i3);
                this.f2521a += i3;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x003f, code lost:
            if (r9 != 181) goto L24;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(int r9, int r10) {
            /*
                r8 = this;
                int r0 = r8.f2525f
                r1 = 0
                r2 = 1
                if (r0 == 0) goto L4b
                r3 = 181(0xb5, float:2.54E-43)
                r4 = 2
                java.lang.String r5 = "Unexpected start code value"
                java.lang.String r6 = "H263Reader"
                if (r0 == r2) goto L3f
                r7 = 3
                if (r0 == r4) goto L37
                r4 = 4
                if (r0 == r7) goto L2b
                if (r0 != r4) goto L25
                r0 = 179(0xb3, float:2.51E-43)
                if (r9 == r0) goto L1d
                if (r9 != r3) goto L53
            L1d:
                int r9 = r8.f2521a
                int r9 = r9 - r10
                r8.f2521a = r9
                r8.f2524e = r1
                return r2
            L25:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                r9.<init>()
                throw r9
            L2b:
                r9 = r9 & 240(0xf0, float:3.36E-43)
                r10 = 32
                if (r9 == r10) goto L32
                goto L41
            L32:
                int r9 = r8.f2521a
                r8.f2522b = r9
                goto L48
            L37:
                r10 = 31
                if (r9 <= r10) goto L3c
                goto L41
            L3c:
                r8.f2525f = r7
                goto L53
            L3f:
                if (r9 == r3) goto L48
            L41:
                com.applovin.exoplayer2.l.q.c(r6, r5)
                r8.a()
                goto L53
            L48:
                r8.f2525f = r4
                goto L53
            L4b:
                r10 = 176(0xb0, float:2.47E-43)
                if (r9 != r10) goto L53
                r8.f2525f = r2
                r8.f2524e = r2
            L53:
                byte[] r9 = com.applovin.exoplayer2.e.i.l.a.f2520d
                int r10 = r9.length
                r8.a(r9, r1, r10)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.l.a.a(int, int):boolean");
        }
    }

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.exoplayer2.e.x f2526a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f2527b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f2528c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f2529d;

        /* renamed from: e  reason: collision with root package name */
        private int f2530e;

        /* renamed from: f  reason: collision with root package name */
        private int f2531f;

        /* renamed from: g  reason: collision with root package name */
        private long f2532g;

        /* renamed from: h  reason: collision with root package name */
        private long f2533h;

        public b(com.applovin.exoplayer2.e.x xVar) {
            this.f2526a = xVar;
        }

        public void a() {
            this.f2527b = false;
            this.f2528c = false;
            this.f2529d = false;
            this.f2530e = -1;
        }

        public void a(int i, long j) {
            this.f2530e = i;
            this.f2529d = false;
            this.f2527b = i == 182 || i == 179;
            this.f2528c = i == 182;
            this.f2531f = 0;
            this.f2533h = j;
        }

        public void a(long j, int i, boolean z) {
            if (this.f2530e == 182 && z && this.f2527b) {
                long j2 = this.f2533h;
                if (j2 != C.TIME_UNSET) {
                    this.f2526a.a(j2, this.f2529d ? 1 : 0, (int) (j - this.f2532g), i, null);
                }
            }
            if (this.f2530e != 179) {
                this.f2532g = j;
            }
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.f2528c) {
                int i3 = this.f2531f;
                int i4 = (i + 1) - i3;
                if (i4 >= i2) {
                    this.f2531f = i3 + (i2 - i);
                    return;
                }
                this.f2529d = ((bArr[i4] & 192) >> 6) == 0;
                this.f2528c = false;
            }
        }
    }

    public l() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(af afVar) {
        com.applovin.exoplayer2.l.y yVar;
        this.f2513b = afVar;
        this.f2515d = new boolean[4];
        this.f2516e = new a(128);
        this.l = C.TIME_UNSET;
        if (afVar != null) {
            this.f2517f = new r(178, 128);
            yVar = new com.applovin.exoplayer2.l.y();
        } else {
            yVar = null;
            this.f2517f = null;
        }
        this.f2514c = yVar;
    }

    private static com.applovin.exoplayer2.v a(a aVar, int i, String str) {
        byte[] copyOf = Arrays.copyOf(aVar.f2523c, aVar.f2521a);
        com.applovin.exoplayer2.l.x xVar = new com.applovin.exoplayer2.l.x(copyOf);
        xVar.e(i);
        xVar.e(4);
        xVar.d();
        xVar.b(8);
        if (xVar.e()) {
            xVar.b(4);
            xVar.b(3);
        }
        int c2 = xVar.c(4);
        float f2 = 1.0f;
        if (c2 == 15) {
            int c3 = xVar.c(8);
            int c4 = xVar.c(8);
            if (c4 != 0) {
                f2 = c3 / c4;
            }
            com.applovin.exoplayer2.l.q.c("H263Reader", "Invalid aspect ratio");
        } else {
            float[] fArr = f2512a;
            if (c2 < fArr.length) {
                f2 = fArr[c2];
            }
            com.applovin.exoplayer2.l.q.c("H263Reader", "Invalid aspect ratio");
        }
        if (xVar.e()) {
            xVar.b(2);
            xVar.b(1);
            if (xVar.e()) {
                xVar.b(15);
                xVar.d();
                xVar.b(15);
                xVar.d();
                xVar.b(15);
                xVar.d();
                xVar.b(3);
                xVar.b(11);
                xVar.d();
                xVar.b(15);
                xVar.d();
            }
        }
        if (xVar.c(2) != 0) {
            com.applovin.exoplayer2.l.q.c("H263Reader", "Unhandled video object layer shape");
        }
        xVar.d();
        int c5 = xVar.c(16);
        xVar.d();
        if (xVar.e()) {
            if (c5 == 0) {
                com.applovin.exoplayer2.l.q.c("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i2 = 0;
                for (int i3 = c5 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                xVar.b(i2);
            }
        }
        xVar.d();
        int c6 = xVar.c(13);
        xVar.d();
        int c7 = xVar.c(13);
        xVar.d();
        xVar.d();
        return new v.a().a(str).f(MimeTypes.VIDEO_MP4V).g(c6).h(c7).b(f2).a(Collections.singletonList(copyOf)).a();
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        com.applovin.exoplayer2.l.v.a(this.f2515d);
        this.f2516e.a();
        b bVar = this.f2518g;
        if (bVar != null) {
            bVar.a();
        }
        r rVar = this.f2517f;
        if (rVar != null) {
            rVar.a();
        }
        this.f2519h = 0L;
        this.l = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.l = j;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.a();
        this.i = dVar.c();
        this.j = jVar.a(dVar.b(), 2);
        this.f2518g = new b(this.j);
        af afVar = this.f2513b;
        if (afVar != null) {
            afVar.a(jVar, dVar);
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.a(this.f2518g);
        com.applovin.exoplayer2.l.a.a(this.j);
        int c2 = yVar.c();
        int b2 = yVar.b();
        byte[] d2 = yVar.d();
        this.f2519h += yVar.a();
        this.j.a(yVar, yVar.a());
        while (true) {
            int a2 = com.applovin.exoplayer2.l.v.a(d2, c2, b2, this.f2515d);
            if (a2 == b2) {
                break;
            }
            int i = a2 + 3;
            int i2 = yVar.d()[i] & 255;
            int i3 = a2 - c2;
            int i4 = 0;
            if (!this.k) {
                if (i3 > 0) {
                    this.f2516e.a(d2, c2, a2);
                }
                if (this.f2516e.a(i2, i3 < 0 ? -i3 : 0)) {
                    com.applovin.exoplayer2.e.x xVar = this.j;
                    a aVar = this.f2516e;
                    xVar.a(a(aVar, aVar.f2522b, (String) com.applovin.exoplayer2.l.a.b(this.i)));
                    this.k = true;
                }
            }
            this.f2518g.a(d2, c2, a2);
            r rVar = this.f2517f;
            if (rVar != null) {
                if (i3 > 0) {
                    rVar.a(d2, c2, a2);
                } else {
                    i4 = -i3;
                }
                if (this.f2517f.b(i4)) {
                    ((com.applovin.exoplayer2.l.y) ai.a(this.f2514c)).a(this.f2517f.f2596a, com.applovin.exoplayer2.l.v.a(this.f2517f.f2596a, this.f2517f.f2597b));
                    ((af) ai.a(this.f2513b)).a(this.l, this.f2514c);
                }
                if (i2 == 178 && yVar.d()[a2 + 2] == 1) {
                    this.f2517f.a(i2);
                }
            }
            int i5 = b2 - a2;
            this.f2518g.a(this.f2519h - i5, i5, this.k);
            this.f2518g.a(i2, this.l);
            c2 = i;
        }
        if (!this.k) {
            this.f2516e.a(d2, c2, b2);
        }
        this.f2518g.a(d2, c2, b2);
        r rVar2 = this.f2517f;
        if (rVar2 != null) {
            rVar2.a(d2, c2, b2);
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
