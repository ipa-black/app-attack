package com.applovin.exoplayer2.e.d;

import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.q;
/* loaded from: classes.dex */
final class c extends q {

    /* renamed from: a  reason: collision with root package name */
    private final long f2150a;

    public c(i iVar, long j) {
        super(iVar);
        com.applovin.exoplayer2.l.a.a(iVar.c() >= j);
        this.f2150a = j;
    }

    @Override // com.applovin.exoplayer2.e.q, com.applovin.exoplayer2.e.i
    public long b() {
        return super.b() - this.f2150a;
    }

    @Override // com.applovin.exoplayer2.e.q, com.applovin.exoplayer2.e.i
    public long c() {
        return super.c() - this.f2150a;
    }

    @Override // com.applovin.exoplayer2.e.q, com.applovin.exoplayer2.e.i
    public long d() {
        return super.d() - this.f2150a;
    }
}
