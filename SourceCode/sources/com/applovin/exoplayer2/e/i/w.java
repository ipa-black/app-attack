package com.applovin.exoplayer2.e.i;

import android.util.SparseArray;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ag;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* loaded from: classes.dex */
public final class w implements com.applovin.exoplayer2.e.h {

    /* renamed from: a  reason: collision with root package name */
    public static final com.applovin.exoplayer2.e.l f2622a = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.i.w$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            com.applovin.exoplayer2.e.h[] a2;
            a2 = w.a();
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final ag f2623b;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<a> f2624c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2625d;

    /* renamed from: e  reason: collision with root package name */
    private final v f2626e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2627f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2628g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2629h;
    private long i;
    private u j;
    private com.applovin.exoplayer2.e.j k;
    private boolean l;

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final j f2630a;

        /* renamed from: b  reason: collision with root package name */
        private final ag f2631b;

        /* renamed from: c  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.x f2632c = new com.applovin.exoplayer2.l.x(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        private boolean f2633d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f2634e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f2635f;

        /* renamed from: g  reason: collision with root package name */
        private int f2636g;

        /* renamed from: h  reason: collision with root package name */
        private long f2637h;

        public a(j jVar, ag agVar) {
            this.f2630a = jVar;
            this.f2631b = agVar;
        }

        private void b() {
            this.f2632c.b(8);
            this.f2633d = this.f2632c.e();
            this.f2634e = this.f2632c.e();
            this.f2632c.b(6);
            this.f2636g = this.f2632c.c(8);
        }

        private void c() {
            this.f2637h = 0L;
            if (this.f2633d) {
                this.f2632c.b(4);
                this.f2632c.b(1);
                this.f2632c.b(1);
                long c2 = (this.f2632c.c(3) << 30) | (this.f2632c.c(15) << 15) | this.f2632c.c(15);
                this.f2632c.b(1);
                if (!this.f2635f && this.f2634e) {
                    this.f2632c.b(4);
                    this.f2632c.b(1);
                    this.f2632c.b(1);
                    this.f2632c.b(1);
                    this.f2631b.b((this.f2632c.c(3) << 30) | (this.f2632c.c(15) << 15) | this.f2632c.c(15));
                    this.f2635f = true;
                }
                this.f2637h = this.f2631b.b(c2);
            }
        }

        public void a() {
            this.f2635f = false;
            this.f2630a.a();
        }

        public void a(com.applovin.exoplayer2.l.y yVar) throws ai {
            yVar.a(this.f2632c.f3860a, 0, 3);
            this.f2632c.a(0);
            b();
            yVar.a(this.f2632c.f3860a, 0, this.f2636g);
            this.f2632c.a(0);
            c();
            this.f2630a.a(this.f2637h, 4);
            this.f2630a.a(yVar);
            this.f2630a.b();
        }
    }

    public w() {
        this(new ag(0L));
    }

    public w(ag agVar) {
        this.f2623b = agVar;
        this.f2625d = new com.applovin.exoplayer2.l.y(4096);
        this.f2624c = new SparseArray<>();
        this.f2626e = new v();
    }

    private void a(long j) {
        com.applovin.exoplayer2.e.j jVar;
        com.applovin.exoplayer2.e.v bVar;
        if (this.l) {
            return;
        }
        this.l = true;
        if (this.f2626e.c() != C.TIME_UNSET) {
            u uVar = new u(this.f2626e.b(), this.f2626e.c(), j);
            this.j = uVar;
            jVar = this.k;
            bVar = uVar.a();
        } else {
            jVar = this.k;
            bVar = new v.b(this.f2626e.c());
        }
        jVar.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] a() {
        return new com.applovin.exoplayer2.e.h[]{new w()};
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00f3  */
    @Override // com.applovin.exoplayer2.e.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(com.applovin.exoplayer2.e.i r11, com.applovin.exoplayer2.e.u r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.w.a(com.applovin.exoplayer2.e.i, com.applovin.exoplayer2.e.u):int");
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        boolean z = true;
        boolean z2 = this.f2623b.c() == C.TIME_UNSET;
        if (!z2) {
            long a2 = this.f2623b.a();
            z2 = (a2 == C.TIME_UNSET || a2 == 0 || a2 == j2) ? false : false;
        }
        if (z2) {
            this.f2623b.a(j2);
        }
        u uVar = this.j;
        if (uVar != null) {
            uVar.a(j2);
        }
        for (int i = 0; i < this.f2624c.size(); i++) {
            this.f2624c.valueAt(i).a();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.k = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        byte[] bArr = new byte[14];
        iVar.d(bArr, 0, 14);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            iVar.c(bArr[13] & 7);
            iVar.d(bArr, 0, 3);
            return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
        }
        return false;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
