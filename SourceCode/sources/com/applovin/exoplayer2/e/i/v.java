package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* loaded from: classes.dex */
final class v {

    /* renamed from: c  reason: collision with root package name */
    private boolean f2616c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2617d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2618e;

    /* renamed from: a  reason: collision with root package name */
    private final ag f2614a = new ag(0);

    /* renamed from: f  reason: collision with root package name */
    private long f2619f = C.TIME_UNSET;

    /* renamed from: g  reason: collision with root package name */
    private long f2620g = C.TIME_UNSET;

    /* renamed from: h  reason: collision with root package name */
    private long f2621h = C.TIME_UNSET;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2615b = new com.applovin.exoplayer2.l.y();

    private int a(com.applovin.exoplayer2.e.i iVar) {
        this.f2615b.a(ai.f3786f);
        this.f2616c = true;
        iVar.a();
        return 0;
    }

    private int a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static long a(com.applovin.exoplayer2.l.y yVar) {
        int c2 = yVar.c();
        if (yVar.a() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        yVar.a(bArr, 0, 9);
        yVar.d(c2);
        return !a(bArr) ? C.TIME_UNSET : b(bArr);
    }

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private int b(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        int min = (int) Math.min(20000L, iVar.d());
        long j = 0;
        if (iVar.c() != j) {
            uVar.f2707a = j;
            return 1;
        }
        this.f2615b.a(min);
        iVar.a();
        iVar.d(this.f2615b.d(), 0, min);
        this.f2619f = b(this.f2615b);
        this.f2617d = true;
        return 0;
    }

    private long b(com.applovin.exoplayer2.l.y yVar) {
        int b2 = yVar.b();
        for (int c2 = yVar.c(); c2 < b2 - 3; c2++) {
            if (a(yVar.d(), c2) == 442) {
                yVar.d(c2 + 4);
                long a2 = a(yVar);
                if (a2 != C.TIME_UNSET) {
                    return a2;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private static long b(byte[] bArr) {
        byte b2 = bArr[0];
        byte b3 = bArr[2];
        return (((b2 & 56) >> 3) << 30) | ((b2 & 3) << 28) | ((bArr[1] & 255) << 20) | (((b3 & 248) >> 3) << 15) | ((b3 & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    private int c(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        long d2 = iVar.d();
        int min = (int) Math.min(20000L, d2);
        long j = d2 - min;
        if (iVar.c() != j) {
            uVar.f2707a = j;
            return 1;
        }
        this.f2615b.a(min);
        iVar.a();
        iVar.d(this.f2615b.d(), 0, min);
        this.f2620g = c(this.f2615b);
        this.f2618e = true;
        return 0;
    }

    private long c(com.applovin.exoplayer2.l.y yVar) {
        int c2 = yVar.c();
        for (int b2 = yVar.b() - 4; b2 >= c2; b2--) {
            if (a(yVar.d(), b2) == 442) {
                yVar.d(b2 + 4);
                long a2 = a(yVar);
                if (a2 != C.TIME_UNSET) {
                    return a2;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public int a(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        if (this.f2618e) {
            if (this.f2620g == C.TIME_UNSET) {
                return a(iVar);
            }
            if (this.f2617d) {
                long j = this.f2619f;
                if (j == C.TIME_UNSET) {
                    return a(iVar);
                }
                long b2 = this.f2614a.b(this.f2620g) - this.f2614a.b(j);
                this.f2621h = b2;
                if (b2 < 0) {
                    com.applovin.exoplayer2.l.q.c("PsDurationReader", "Invalid duration: " + this.f2621h + ". Using TIME_UNSET instead.");
                    this.f2621h = C.TIME_UNSET;
                }
                return a(iVar);
            }
            return b(iVar, uVar);
        }
        return c(iVar, uVar);
    }

    public boolean a() {
        return this.f2616c;
    }

    public ag b() {
        return this.f2614a;
    }

    public long c() {
        return this.f2621h;
    }
}
