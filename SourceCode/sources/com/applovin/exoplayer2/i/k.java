package com.applovin.exoplayer2.i;

import java.util.List;
/* loaded from: classes.dex */
public abstract class k extends com.applovin.exoplayer2.c.i implements f {

    /* renamed from: c  reason: collision with root package name */
    private f f3457c;

    /* renamed from: d  reason: collision with root package name */
    private long f3458d;

    @Override // com.applovin.exoplayer2.i.f
    public int a(long j) {
        return ((f) com.applovin.exoplayer2.l.a.b(this.f3457c)).a(j - this.f3458d);
    }

    @Override // com.applovin.exoplayer2.i.f
    public long a(int i) {
        return ((f) com.applovin.exoplayer2.l.a.b(this.f3457c)).a(i) + this.f3458d;
    }

    @Override // com.applovin.exoplayer2.c.a
    public void a() {
        super.a();
        this.f3457c = null;
    }

    public void a(long j, f fVar, long j2) {
        this.f1688a = j;
        this.f3457c = fVar;
        if (j2 == Long.MAX_VALUE) {
            j2 = this.f1688a;
        }
        this.f3458d = j2;
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<a> b(long j) {
        return ((f) com.applovin.exoplayer2.l.a.b(this.f3457c)).b(j - this.f3458d);
    }

    @Override // com.applovin.exoplayer2.i.f
    public int f_() {
        return ((f) com.applovin.exoplayer2.l.a.b(this.f3457c)).f_();
    }
}
