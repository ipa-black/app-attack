package com.applovin.exoplayer2.e.f;

import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
/* loaded from: classes.dex */
final class g implements e {

    /* renamed from: a  reason: collision with root package name */
    private final long f2230a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2231b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2232c;

    /* renamed from: d  reason: collision with root package name */
    private final long f2233d;

    /* renamed from: e  reason: collision with root package name */
    private final long f2234e;

    /* renamed from: f  reason: collision with root package name */
    private final long[] f2235f;

    private g(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    private g(long j, int i, long j2, long j3, long[] jArr) {
        this.f2230a = j;
        this.f2231b = i;
        this.f2232c = j2;
        this.f2235f = jArr;
        this.f2233d = j3;
        this.f2234e = j3 != -1 ? j + j3 : -1L;
    }

    private long a(int i) {
        return (this.f2232c * i) / 100;
    }

    public static g a(long j, long j2, r.a aVar, y yVar) {
        int w;
        int i = aVar.f1589g;
        int i2 = aVar.f1586d;
        int q = yVar.q();
        if ((q & 1) != 1 || (w = yVar.w()) == 0) {
            return null;
        }
        long d2 = ai.d(w, i * 1000000, i2);
        if ((q & 6) != 6) {
            return new g(j2, aVar.f1585c, d2);
        }
        long o = yVar.o();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = yVar.h();
        }
        if (j != -1) {
            long j3 = j2 + o;
            if (j != j3) {
                q.c("XingSeeker", "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new g(j2, aVar.f1585c, d2, o, jArr);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        long[] jArr;
        if (a()) {
            long a2 = ai.a(j, 0L, this.f2232c);
            double d2 = (a2 * 100.0d) / this.f2232c;
            double d3 = 0.0d;
            if (d2 > 0.0d) {
                if (d2 >= 100.0d) {
                    d3 = 256.0d;
                } else {
                    int i = (int) d2;
                    double d4 = ((long[]) com.applovin.exoplayer2.l.a.a(this.f2235f))[i];
                    d3 = d4 + ((d2 - i) * ((i == 99 ? 256.0d : jArr[i + 1]) - d4));
                }
            }
            return new v.a(new w(a2, this.f2230a + ai.a(Math.round((d3 / 256.0d) * this.f2233d), this.f2231b, this.f2233d - 1)));
        }
        return new v.a(new w(0L, this.f2230a + this.f2231b));
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return this.f2235f != null;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2232c;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long c() {
        return this.f2234e;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long c(long j) {
        long j2 = j - this.f2230a;
        if (!a() || j2 <= this.f2231b) {
            return 0L;
        }
        long[] jArr = (long[]) com.applovin.exoplayer2.l.a.a(this.f2235f);
        double d2 = (j2 * 256.0d) / this.f2233d;
        int a2 = ai.a(jArr, (long) d2, true, true);
        long a3 = a(a2);
        long j3 = jArr[a2];
        int i = a2 + 1;
        long a4 = a(i);
        long j4 = a2 == 99 ? 256L : jArr[i];
        return a3 + Math.round((j3 == j4 ? 0.0d : (d2 - j3) / (j4 - j3)) * (a4 - a3));
    }
}
