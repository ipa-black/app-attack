package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* loaded from: classes.dex */
final class ab {

    /* renamed from: a  reason: collision with root package name */
    private final int f2410a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2413d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2414e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2415f;

    /* renamed from: b  reason: collision with root package name */
    private final ag f2411b = new ag(0);

    /* renamed from: g  reason: collision with root package name */
    private long f2416g = C.TIME_UNSET;

    /* renamed from: h  reason: collision with root package name */
    private long f2417h = C.TIME_UNSET;
    private long i = C.TIME_UNSET;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2412c = new com.applovin.exoplayer2.l.y();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(int i) {
        this.f2410a = i;
    }

    private int a(com.applovin.exoplayer2.e.i iVar) {
        this.f2412c.a(ai.f3786f);
        this.f2413d = true;
        iVar.a();
        return 0;
    }

    private long a(com.applovin.exoplayer2.l.y yVar, int i) {
        int b2 = yVar.b();
        for (int c2 = yVar.c(); c2 < b2; c2++) {
            if (yVar.d()[c2] == 71) {
                long a2 = ae.a(yVar, c2, i);
                if (a2 != C.TIME_UNSET) {
                    return a2;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int b(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar, int i) throws IOException {
        int min = (int) Math.min(this.f2410a, iVar.d());
        long j = 0;
        if (iVar.c() != j) {
            uVar.f2707a = j;
            return 1;
        }
        this.f2412c.a(min);
        iVar.a();
        iVar.d(this.f2412c.d(), 0, min);
        this.f2416g = a(this.f2412c, i);
        this.f2414e = true;
        return 0;
    }

    private long b(com.applovin.exoplayer2.l.y yVar, int i) {
        int c2 = yVar.c();
        int b2 = yVar.b();
        for (int i2 = b2 - 188; i2 >= c2; i2--) {
            if (ae.a(yVar.d(), c2, b2, i2)) {
                long a2 = ae.a(yVar, i2, i);
                if (a2 != C.TIME_UNSET) {
                    return a2;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int c(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar, int i) throws IOException {
        long d2 = iVar.d();
        int min = (int) Math.min(this.f2410a, d2);
        long j = d2 - min;
        if (iVar.c() != j) {
            uVar.f2707a = j;
            return 1;
        }
        this.f2412c.a(min);
        iVar.a();
        iVar.d(this.f2412c.d(), 0, min);
        this.f2417h = b(this.f2412c, i);
        this.f2415f = true;
        return 0;
    }

    public int a(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar, int i) throws IOException {
        if (i <= 0) {
            return a(iVar);
        }
        if (this.f2415f) {
            if (this.f2417h == C.TIME_UNSET) {
                return a(iVar);
            }
            if (this.f2414e) {
                long j = this.f2416g;
                if (j == C.TIME_UNSET) {
                    return a(iVar);
                }
                long b2 = this.f2411b.b(this.f2417h) - this.f2411b.b(j);
                this.i = b2;
                if (b2 < 0) {
                    com.applovin.exoplayer2.l.q.c("TsDurationReader", "Invalid duration: " + this.i + ". Using TIME_UNSET instead.");
                    this.i = C.TIME_UNSET;
                }
                return a(iVar);
            }
            return b(iVar, uVar, i);
        }
        return c(iVar, uVar, i);
    }

    public boolean a() {
        return this.f2413d;
    }

    public long b() {
        return this.i;
    }

    public ag c() {
        return this.f2411b;
    }
}
