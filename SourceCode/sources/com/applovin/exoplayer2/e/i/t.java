package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ag;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class t implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final j f2604a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.x f2605b = new com.applovin.exoplayer2.l.x(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    private int f2606c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f2607d;

    /* renamed from: e  reason: collision with root package name */
    private ag f2608e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2609f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2610g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2611h;
    private int i;
    private int j;
    private boolean k;
    private long l;

    public t(j jVar) {
        this.f2604a = jVar;
    }

    private void a(int i) {
        this.f2606c = i;
        this.f2607d = 0;
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, byte[] bArr, int i) {
        int min = Math.min(yVar.a(), i - this.f2607d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            yVar.e(min);
        } else {
            yVar.a(bArr, this.f2607d, min);
        }
        int i2 = this.f2607d + min;
        this.f2607d = i2;
        return i2 == i;
    }

    private boolean b() {
        this.f2605b.a(0);
        int c2 = this.f2605b.c(24);
        if (c2 != 1) {
            com.applovin.exoplayer2.l.q.c("PesReader", "Unexpected start code prefix: " + c2);
            this.j = -1;
            return false;
        }
        this.f2605b.b(8);
        int c3 = this.f2605b.c(16);
        this.f2605b.b(5);
        this.k = this.f2605b.e();
        this.f2605b.b(2);
        this.f2609f = this.f2605b.e();
        this.f2610g = this.f2605b.e();
        this.f2605b.b(6);
        int c4 = this.f2605b.c(8);
        this.i = c4;
        if (c3 != 0) {
            int i = (c3 - 3) - c4;
            this.j = i;
            if (i < 0) {
                com.applovin.exoplayer2.l.q.c("PesReader", "Found negative packet payload size: " + this.j);
            }
            return true;
        }
        this.j = -1;
        return true;
    }

    private void c() {
        this.f2605b.a(0);
        this.l = C.TIME_UNSET;
        if (this.f2609f) {
            this.f2605b.b(4);
            this.f2605b.b(1);
            this.f2605b.b(1);
            long c2 = (this.f2605b.c(3) << 30) | (this.f2605b.c(15) << 15) | this.f2605b.c(15);
            this.f2605b.b(1);
            if (!this.f2611h && this.f2610g) {
                this.f2605b.b(4);
                this.f2605b.b(1);
                this.f2605b.b(1);
                this.f2605b.b(1);
                this.f2608e.b((this.f2605b.c(3) << 30) | (this.f2605b.c(15) << 15) | this.f2605b.c(15));
                this.f2611h = true;
            }
            this.l = this.f2608e.b(c2);
        }
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public final void a() {
        this.f2606c = 0;
        this.f2607d = 0;
        this.f2611h = false;
        this.f2604a.a();
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        this.f2608e = agVar;
        this.f2604a.a(jVar, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0079 -> B:35:0x007b). Please submit an issue!!! */
    @Override // com.applovin.exoplayer2.e.i.ad
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.applovin.exoplayer2.l.y r8, int r9) throws com.applovin.exoplayer2.ai {
        /*
            r7 = this;
            com.applovin.exoplayer2.l.ag r0 = r7.f2608e
            com.applovin.exoplayer2.l.a.a(r0)
            r0 = r9 & 1
            r1 = -1
            r2 = 3
            r3 = 2
            r4 = 1
            if (r0 == 0) goto L46
            int r0 = r7.f2606c
            if (r0 == 0) goto L43
            if (r0 == r4) goto L43
            java.lang.String r5 = "PesReader"
            if (r0 == r3) goto L3e
            if (r0 != r2) goto L38
            int r0 = r7.j
            if (r0 == r1) goto L7b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r6 = "Unexpected start indicator: expected "
            r0.<init>(r6)
            int r6 = r7.j
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r6 = " more bytes"
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r0 = r0.toString()
            com.applovin.exoplayer2.l.q.c(r5, r0)
            goto L7b
        L38:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L3e:
            java.lang.String r0 = "Unexpected start indicator reading extended header"
            com.applovin.exoplayer2.l.q.c(r5, r0)
        L43:
            r7.a(r4)
        L46:
            int r0 = r8.a()
            if (r0 <= 0) goto Ld7
            int r0 = r7.f2606c
            if (r0 == 0) goto Lce
            r5 = 0
            if (r0 == r4) goto Lb6
            if (r0 == r3) goto L87
            if (r0 != r2) goto L81
            int r0 = r8.a()
            int r6 = r7.j
            if (r6 != r1) goto L60
            goto L62
        L60:
            int r5 = r0 - r6
        L62:
            if (r5 <= 0) goto L6d
            int r0 = r0 - r5
            int r5 = r8.c()
            int r5 = r5 + r0
            r8.c(r5)
        L6d:
            com.applovin.exoplayer2.e.i.j r5 = r7.f2604a
            r5.a(r8)
            int r5 = r7.j
            if (r5 == r1) goto L46
            int r5 = r5 - r0
            r7.j = r5
            if (r5 != 0) goto L46
        L7b:
            com.applovin.exoplayer2.e.i.j r0 = r7.f2604a
            r0.b()
            goto L43
        L81:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L87:
            r0 = 10
            int r6 = r7.i
            int r0 = java.lang.Math.min(r0, r6)
            com.applovin.exoplayer2.l.x r6 = r7.f2605b
            byte[] r6 = r6.f3860a
            boolean r0 = r7.a(r8, r6, r0)
            if (r0 == 0) goto L46
            r0 = 0
            int r6 = r7.i
            boolean r0 = r7.a(r8, r0, r6)
            if (r0 == 0) goto L46
            r7.c()
            boolean r0 = r7.k
            if (r0 == 0) goto Laa
            r5 = 4
        Laa:
            r9 = r9 | r5
            com.applovin.exoplayer2.e.i.j r0 = r7.f2604a
            long r5 = r7.l
            r0.a(r5, r9)
            r7.a(r2)
            goto L46
        Lb6:
            com.applovin.exoplayer2.l.x r0 = r7.f2605b
            byte[] r0 = r0.f3860a
            r6 = 9
            boolean r0 = r7.a(r8, r0, r6)
            if (r0 == 0) goto L46
            boolean r0 = r7.b()
            if (r0 == 0) goto Lc9
            r5 = r3
        Lc9:
            r7.a(r5)
            goto L46
        Lce:
            int r0 = r8.a()
            r8.e(r0)
            goto L46
        Ld7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.t.a(com.applovin.exoplayer2.l.y, int):void");
    }
}
