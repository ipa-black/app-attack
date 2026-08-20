package com.applovin.exoplayer2;

import android.os.SystemClock;
import com.applovin.exoplayer2.ab;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class k implements z {

    /* renamed from: a  reason: collision with root package name */
    private final float f3571a;

    /* renamed from: b  reason: collision with root package name */
    private final float f3572b;

    /* renamed from: c  reason: collision with root package name */
    private final long f3573c;

    /* renamed from: d  reason: collision with root package name */
    private final float f3574d;

    /* renamed from: e  reason: collision with root package name */
    private final long f3575e;

    /* renamed from: f  reason: collision with root package name */
    private final long f3576f;

    /* renamed from: g  reason: collision with root package name */
    private final float f3577g;

    /* renamed from: h  reason: collision with root package name */
    private long f3578h;
    private long i;
    private long j;
    private long k;
    private long l;
    private long m;
    private float n;
    private float o;
    private float p;
    private long q;
    private long r;
    private long s;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private float f3579a = 0.97f;

        /* renamed from: b  reason: collision with root package name */
        private float f3580b = 1.03f;

        /* renamed from: c  reason: collision with root package name */
        private long f3581c = 1000;

        /* renamed from: d  reason: collision with root package name */
        private float f3582d = 1.0E-7f;

        /* renamed from: e  reason: collision with root package name */
        private long f3583e = h.b(20L);

        /* renamed from: f  reason: collision with root package name */
        private long f3584f = h.b(500L);

        /* renamed from: g  reason: collision with root package name */
        private float f3585g = 0.999f;

        public k a() {
            return new k(this.f3579a, this.f3580b, this.f3581c, this.f3582d, this.f3583e, this.f3584f, this.f3585g);
        }
    }

    private k(float f2, float f3, long j, float f4, long j2, long j3, float f5) {
        this.f3571a = f2;
        this.f3572b = f3;
        this.f3573c = j;
        this.f3574d = f4;
        this.f3575e = j2;
        this.f3576f = j3;
        this.f3577g = f5;
        this.f3578h = C.TIME_UNSET;
        this.i = C.TIME_UNSET;
        this.k = C.TIME_UNSET;
        this.l = C.TIME_UNSET;
        this.o = f2;
        this.n = f3;
        this.p = 1.0f;
        this.q = C.TIME_UNSET;
        this.j = C.TIME_UNSET;
        this.m = C.TIME_UNSET;
        this.r = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
    }

    private static long a(long j, long j2, float f2) {
        return (((float) j) * f2) + ((1.0f - f2) * ((float) j2));
    }

    private void b(long j) {
        long j2 = this.r + (this.s * 3);
        if (this.m > j2) {
            float b2 = (float) h.b(this.f3573c);
            this.m = com.applovin.exoplayer2.common.b.d.a(j2, this.j, this.m - (((this.p - 1.0f) * b2) + ((this.n - 1.0f) * b2)));
            return;
        }
        long a2 = com.applovin.exoplayer2.l.ai.a(j - (Math.max(0.0f, this.p - 1.0f) / this.f3574d), this.m, j2);
        this.m = a2;
        long j3 = this.l;
        if (j3 == C.TIME_UNSET || a2 <= j3) {
            return;
        }
        this.m = j3;
    }

    private void b(long j, long j2) {
        long a2;
        long j3 = j - j2;
        long j4 = this.r;
        if (j4 == C.TIME_UNSET) {
            this.r = j3;
            a2 = 0;
        } else {
            long max = Math.max(j3, a(j4, j3, this.f3577g));
            this.r = max;
            a2 = a(this.s, Math.abs(j3 - max), this.f3577g);
        }
        this.s = a2;
    }

    private void c() {
        long j = this.f3578h;
        if (j != C.TIME_UNSET) {
            long j2 = this.i;
            if (j2 != C.TIME_UNSET) {
                j = j2;
            }
            long j3 = this.k;
            if (j3 != C.TIME_UNSET && j < j3) {
                j = j3;
            }
            long j4 = this.l;
            if (j4 != C.TIME_UNSET && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.j == j) {
            return;
        }
        this.j = j;
        this.m = j;
        this.r = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
        this.q = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.z
    public float a(long j, long j2) {
        if (this.f3578h == C.TIME_UNSET) {
            return 1.0f;
        }
        b(j, j2);
        if (this.q == C.TIME_UNSET || SystemClock.elapsedRealtime() - this.q >= this.f3573c) {
            this.q = SystemClock.elapsedRealtime();
            b(j);
            long j3 = j - this.m;
            if (Math.abs(j3) < this.f3575e) {
                this.p = 1.0f;
            } else {
                this.p = com.applovin.exoplayer2.l.ai.a((this.f3574d * ((float) j3)) + 1.0f, this.o, this.n);
            }
            return this.p;
        }
        return this.p;
    }

    @Override // com.applovin.exoplayer2.z
    public void a() {
        long j = this.m;
        if (j == C.TIME_UNSET) {
            return;
        }
        long j2 = j + this.f3576f;
        this.m = j2;
        long j3 = this.l;
        if (j3 != C.TIME_UNSET && j2 > j3) {
            this.m = j3;
        }
        this.q = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.z
    public void a(long j) {
        this.i = j;
        c();
    }

    @Override // com.applovin.exoplayer2.z
    public void a(ab.e eVar) {
        this.f3578h = h.b(eVar.f1270b);
        this.k = h.b(eVar.f1271c);
        this.l = h.b(eVar.f1272d);
        this.o = eVar.f1273e != -3.4028235E38f ? eVar.f1273e : this.f3571a;
        this.n = eVar.f1274f != -3.4028235E38f ? eVar.f1274f : this.f3572b;
        c();
    }

    @Override // com.applovin.exoplayer2.z
    public long b() {
        return this.m;
    }
}
