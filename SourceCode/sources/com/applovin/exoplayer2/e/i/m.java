package com.applovin.exoplayer2.e.i;

import android.util.SparseArray;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.v;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class m implements j {

    /* renamed from: a  reason: collision with root package name */
    private final z f2534a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f2535b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f2536c;

    /* renamed from: g  reason: collision with root package name */
    private long f2540g;
    private String i;
    private com.applovin.exoplayer2.e.x j;
    private a k;
    private boolean l;
    private boolean n;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f2541h = new boolean[3];

    /* renamed from: d  reason: collision with root package name */
    private final r f2537d = new r(7, 128);

    /* renamed from: e  reason: collision with root package name */
    private final r f2538e = new r(8, 128);

    /* renamed from: f  reason: collision with root package name */
    private final r f2539f = new r(6, 128);
    private long m = C.TIME_UNSET;
    private final com.applovin.exoplayer2.l.y o = new com.applovin.exoplayer2.l.y();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.exoplayer2.e.x f2542a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f2543b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f2544c;

        /* renamed from: h  reason: collision with root package name */
        private int f2549h;
        private int i;
        private long j;
        private boolean k;
        private long l;
        private boolean o;
        private long p;
        private long q;
        private boolean r;

        /* renamed from: d  reason: collision with root package name */
        private final SparseArray<v.b> f2545d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        private final SparseArray<v.a> f2546e = new SparseArray<>();
        private C0039a m = new C0039a();
        private C0039a n = new C0039a();

        /* renamed from: g  reason: collision with root package name */
        private byte[] f2548g = new byte[128];

        /* renamed from: f  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.z f2547f = new com.applovin.exoplayer2.l.z(this.f2548g, 0, 0);

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.applovin.exoplayer2.e.i.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0039a {

            /* renamed from: a  reason: collision with root package name */
            private boolean f2550a;

            /* renamed from: b  reason: collision with root package name */
            private boolean f2551b;

            /* renamed from: c  reason: collision with root package name */
            private v.b f2552c;

            /* renamed from: d  reason: collision with root package name */
            private int f2553d;

            /* renamed from: e  reason: collision with root package name */
            private int f2554e;

            /* renamed from: f  reason: collision with root package name */
            private int f2555f;

            /* renamed from: g  reason: collision with root package name */
            private int f2556g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f2557h;
            private boolean i;
            private boolean j;
            private boolean k;
            private int l;
            private int m;
            private int n;
            private int o;
            private int p;

            private C0039a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean a(C0039a c0039a) {
                int i;
                int i2;
                boolean z;
                if (this.f2550a) {
                    if (c0039a.f2550a) {
                        v.b bVar = (v.b) com.applovin.exoplayer2.l.a.a(this.f2552c);
                        v.b bVar2 = (v.b) com.applovin.exoplayer2.l.a.a(c0039a.f2552c);
                        return (this.f2555f == c0039a.f2555f && this.f2556g == c0039a.f2556g && this.f2557h == c0039a.f2557h && (!this.i || !c0039a.i || this.j == c0039a.j) && (((i = this.f2553d) == (i2 = c0039a.f2553d) || (i != 0 && i2 != 0)) && ((bVar.k != 0 || bVar2.k != 0 || (this.m == c0039a.m && this.n == c0039a.n)) && ((bVar.k != 1 || bVar2.k != 1 || (this.o == c0039a.o && this.p == c0039a.p)) && (z = this.k) == c0039a.k && (!z || this.l == c0039a.l))))) ? false : true;
                    }
                    return true;
                }
                return false;
            }

            public void a() {
                this.f2551b = false;
                this.f2550a = false;
            }

            public void a(int i) {
                this.f2554e = i;
                this.f2551b = true;
            }

            public void a(v.b bVar, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.f2552c = bVar;
                this.f2553d = i;
                this.f2554e = i2;
                this.f2555f = i3;
                this.f2556g = i4;
                this.f2557h = z;
                this.i = z2;
                this.j = z3;
                this.k = z4;
                this.l = i5;
                this.m = i6;
                this.n = i7;
                this.o = i8;
                this.p = i9;
                this.f2550a = true;
                this.f2551b = true;
            }

            public boolean b() {
                int i;
                return this.f2551b && ((i = this.f2554e) == 7 || i == 2);
            }
        }

        public a(com.applovin.exoplayer2.e.x xVar, boolean z, boolean z2) {
            this.f2542a = xVar;
            this.f2543b = z;
            this.f2544c = z2;
            b();
        }

        private void a(int i) {
            long j = this.q;
            if (j == C.TIME_UNSET) {
                return;
            }
            boolean z = this.r;
            this.f2542a.a(j, z ? 1 : 0, (int) (this.j - this.p), i, null);
        }

        public void a(long j, int i, long j2) {
            this.i = i;
            this.l = j2;
            this.j = j;
            if (!this.f2543b || i != 1) {
                if (!this.f2544c) {
                    return;
                }
                if (i != 5 && i != 1 && i != 2) {
                    return;
                }
            }
            C0039a c0039a = this.m;
            this.m = this.n;
            this.n = c0039a;
            c0039a.a();
            this.f2549h = 0;
            this.k = true;
        }

        public void a(v.a aVar) {
            this.f2546e.append(aVar.f3841a, aVar);
        }

        public void a(v.b bVar) {
            this.f2545d.append(bVar.f3847d, bVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0152  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(byte[] r24, int r25, int r26) {
            /*
                Method dump skipped, instructions count: 416
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.m.a.a(byte[], int, int):void");
        }

        public boolean a() {
            return this.f2544c;
        }

        public boolean a(long j, int i, boolean z, boolean z2) {
            boolean z3 = false;
            if (this.i == 9 || (this.f2544c && this.n.a(this.m))) {
                if (z && this.o) {
                    a(i + ((int) (j - this.j)));
                }
                this.p = this.j;
                this.q = this.l;
                this.r = false;
                this.o = true;
            }
            if (this.f2543b) {
                z2 = this.n.b();
            }
            boolean z4 = this.r;
            int i2 = this.i;
            if (i2 == 5 || (z2 && i2 == 1)) {
                z3 = true;
            }
            boolean z5 = z4 | z3;
            this.r = z5;
            return z5;
        }

        public void b() {
            this.k = false;
            this.o = false;
            this.n.a();
        }
    }

    public m(z zVar, boolean z, boolean z2) {
        this.f2534a = zVar;
        this.f2535b = z;
        this.f2536c = z2;
    }

    private void a(long j, int i, int i2, long j2) {
        r rVar;
        if (!this.l || this.k.a()) {
            this.f2537d.b(i2);
            this.f2538e.b(i2);
            if (this.l) {
                if (this.f2537d.b()) {
                    this.k.a(com.applovin.exoplayer2.l.v.a(this.f2537d.f2596a, 3, this.f2537d.f2597b));
                    rVar = this.f2537d;
                } else if (this.f2538e.b()) {
                    this.k.a(com.applovin.exoplayer2.l.v.b(this.f2538e.f2596a, 3, this.f2538e.f2597b));
                    rVar = this.f2538e;
                }
            } else if (this.f2537d.b() && this.f2538e.b()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf(this.f2537d.f2596a, this.f2537d.f2597b));
                arrayList.add(Arrays.copyOf(this.f2538e.f2596a, this.f2538e.f2597b));
                v.b a2 = com.applovin.exoplayer2.l.v.a(this.f2537d.f2596a, 3, this.f2537d.f2597b);
                v.a b2 = com.applovin.exoplayer2.l.v.b(this.f2538e.f2596a, 3, this.f2538e.f2597b);
                this.j.a(new v.a().a(this.i).f("video/avc").d(com.applovin.exoplayer2.l.e.a(a2.f3844a, a2.f3845b, a2.f3846c)).g(a2.f3848e).h(a2.f3849f).b(a2.f3850g).a(arrayList).a());
                this.l = true;
                this.k.a(a2);
                this.k.a(b2);
                this.f2537d.a();
                rVar = this.f2538e;
            }
            rVar.a();
        }
        if (this.f2539f.b(i2)) {
            this.o.a(this.f2539f.f2596a, com.applovin.exoplayer2.l.v.a(this.f2539f.f2596a, this.f2539f.f2597b));
            this.o.d(4);
            this.f2534a.a(j2, this.o);
        }
        if (this.k.a(j, i, this.l, this.n)) {
            this.n = false;
        }
    }

    private void a(long j, int i, long j2) {
        if (!this.l || this.k.a()) {
            this.f2537d.a(i);
            this.f2538e.a(i);
        }
        this.f2539f.a(i);
        this.k.a(j, i, j2);
    }

    private void a(byte[] bArr, int i, int i2) {
        if (!this.l || this.k.a()) {
            this.f2537d.a(bArr, i, i2);
            this.f2538e.a(bArr, i, i2);
        }
        this.f2539f.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    private void c() {
        com.applovin.exoplayer2.l.a.a(this.j);
        ai.a(this.k);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.f2540g = 0L;
        this.n = false;
        this.m = C.TIME_UNSET;
        com.applovin.exoplayer2.l.v.a(this.f2541h);
        this.f2537d.a();
        this.f2538e.a();
        this.f2539f.a();
        a aVar = this.k;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
        this.n |= (i & 2) != 0;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.a();
        this.i = dVar.c();
        this.j = jVar.a(dVar.b(), 2);
        this.k = new a(this.j, this.f2535b, this.f2536c);
        this.f2534a.a(jVar, dVar);
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        c();
        int c2 = yVar.c();
        int b2 = yVar.b();
        byte[] d2 = yVar.d();
        this.f2540g += yVar.a();
        this.j.a(yVar, yVar.a());
        while (true) {
            int a2 = com.applovin.exoplayer2.l.v.a(d2, c2, b2, this.f2541h);
            if (a2 == b2) {
                a(d2, c2, b2);
                return;
            }
            int b3 = com.applovin.exoplayer2.l.v.b(d2, a2);
            int i = a2 - c2;
            if (i > 0) {
                a(d2, c2, a2);
            }
            int i2 = b2 - a2;
            long j = this.f2540g - i2;
            a(j, i2, i < 0 ? -i : 0, this.m);
            a(j, b3, this.m);
            c2 = a2 + 3;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
    }
}
