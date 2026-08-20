package com.applovin.exoplayer2.e.j;

import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
final class d implements v {

    /* renamed from: a  reason: collision with root package name */
    private final b f2678a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2679b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2680c;

    /* renamed from: d  reason: collision with root package name */
    private final long f2681d;

    /* renamed from: e  reason: collision with root package name */
    private final long f2682e;

    public d(b bVar, int i, long j, long j2) {
        this.f2678a = bVar;
        this.f2679b = i;
        this.f2680c = j;
        long j3 = (j2 - j) / bVar.f2673e;
        this.f2681d = j3;
        this.f2682e = b(j3);
    }

    private long b(long j) {
        return ai.d(j * this.f2679b, 1000000L, this.f2678a.f2671c);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        long a2 = ai.a((this.f2678a.f2671c * j) / (this.f2679b * 1000000), 0L, this.f2681d - 1);
        long j2 = this.f2680c + (this.f2678a.f2673e * a2);
        long b2 = b(a2);
        w wVar = new w(b2, j2);
        if (b2 >= j || a2 == this.f2681d - 1) {
            return new v.a(wVar);
        }
        long j3 = a2 + 1;
        return new v.a(wVar, new w(b(j3), this.f2680c + (this.f2678a.f2673e * j3)));
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2682e;
    }
}
