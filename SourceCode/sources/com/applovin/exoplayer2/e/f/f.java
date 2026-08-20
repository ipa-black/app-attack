package com.applovin.exoplayer2.e.f;

import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
/* loaded from: classes.dex */
final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f2226a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f2227b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2228c;

    /* renamed from: d  reason: collision with root package name */
    private final long f2229d;

    private f(long[] jArr, long[] jArr2, long j, long j2) {
        this.f2226a = jArr;
        this.f2227b = jArr2;
        this.f2228c = j;
        this.f2229d = j2;
    }

    public static f a(long j, long j2, r.a aVar, y yVar) {
        int h2;
        yVar.e(10);
        int q = yVar.q();
        if (q <= 0) {
            return null;
        }
        int i = aVar.f1586d;
        long d2 = ai.d(q, (i >= 32000 ? 1152 : 576) * 1000000, i);
        int i2 = yVar.i();
        int i3 = yVar.i();
        int i4 = yVar.i();
        yVar.e(2);
        long j3 = j2 + aVar.f1585c;
        long[] jArr = new long[i2];
        long[] jArr2 = new long[i2];
        int i5 = 0;
        long j4 = j2;
        while (i5 < i2) {
            int i6 = i3;
            long j5 = j3;
            jArr[i5] = (i5 * d2) / i2;
            jArr2[i5] = Math.max(j4, j5);
            if (i4 == 1) {
                h2 = yVar.h();
            } else if (i4 == 2) {
                h2 = yVar.i();
            } else if (i4 == 3) {
                h2 = yVar.m();
            } else if (i4 != 4) {
                return null;
            } else {
                h2 = yVar.w();
            }
            j4 += h2 * i6;
            i5++;
            j3 = j5;
            i3 = i6;
        }
        if (j != -1 && j != j4) {
            q.c("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j4);
        }
        return new f(jArr, jArr2, d2, j4);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        int a2 = ai.a(this.f2226a, j, true, true);
        w wVar = new w(this.f2226a[a2], this.f2227b[a2]);
        if (wVar.f2713b >= j || a2 == this.f2226a.length - 1) {
            return new v.a(wVar);
        }
        int i = a2 + 1;
        return new v.a(wVar, new w(this.f2226a[i], this.f2227b[i]));
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2228c;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long c() {
        return this.f2229d;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long c(long j) {
        return this.f2226a[ai.a(this.f2227b, j, true, true)];
    }
}
