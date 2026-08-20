package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
public final class o implements v {

    /* renamed from: a  reason: collision with root package name */
    private final p f2686a;

    /* renamed from: b  reason: collision with root package name */
    private final long f2687b;

    public o(p pVar, long j) {
        this.f2686a = pVar;
        this.f2687b = j;
    }

    private w a(long j, long j2) {
        return new w((j * 1000000) / this.f2686a.f2692e, this.f2687b + j2);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        com.applovin.exoplayer2.l.a.a(this.f2686a.k);
        long[] jArr = this.f2686a.k.f2696a;
        long[] jArr2 = this.f2686a.k.f2697b;
        int a2 = ai.a(jArr, this.f2686a.a(j), true, false);
        w a3 = a(a2 == -1 ? 0L : jArr[a2], a2 != -1 ? jArr2[a2] : 0L);
        if (a3.f2713b == j || a2 == jArr.length - 1) {
            return new v.a(a3);
        }
        int i = a2 + 1;
        return new v.a(a3, a(jArr[i], jArr2[i]));
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2686a.a();
    }
}
