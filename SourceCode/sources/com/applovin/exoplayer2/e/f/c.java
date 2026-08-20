package com.applovin.exoplayer2.e.f;

import android.util.Pair;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.g.e.j;
import com.applovin.exoplayer2.h;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f2215a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f2216b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2217c;

    private c(long[] jArr, long[] jArr2, long j) {
        this.f2215a = jArr;
        this.f2216b = jArr2;
        this.f2217c = j == C.TIME_UNSET ? h.b(jArr2[jArr2.length - 1]) : j;
    }

    private static Pair<Long, Long> a(long j, long[] jArr, long[] jArr2) {
        Long valueOf;
        Long valueOf2;
        int a2 = ai.a(jArr, j, true, true);
        long j2 = jArr[a2];
        long j3 = jArr2[a2];
        int i = a2 + 1;
        if (i == jArr.length) {
            valueOf = Long.valueOf(j2);
            valueOf2 = Long.valueOf(j3);
        } else {
            long j4 = jArr[i];
            long j5 = jArr2[i];
            double d2 = j4 == j2 ? 0.0d : (j - j2) / (j4 - j2);
            valueOf = Long.valueOf(j);
            valueOf2 = Long.valueOf(((long) (d2 * (j5 - j3))) + j3);
        }
        return Pair.create(valueOf, valueOf2);
    }

    public static c a(long j, j jVar, long j2) {
        int length = jVar.f2906d.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += jVar.f2904b + jVar.f2906d[i3];
            j3 += jVar.f2905c + jVar.f2907e[i3];
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new c(jArr, jArr2, j2);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        Pair<Long, Long> a2 = a(h.a(ai.a(j, 0L, this.f2217c)), this.f2216b, this.f2215a);
        return new v.a(new w(h.b(((Long) a2.first).longValue()), ((Long) a2.second).longValue()));
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2217c;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long c() {
        return -1L;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long c(long j) {
        return h.b(((Long) a(j, this.f2215a, this.f2216b).second).longValue());
    }
}
