package com.applovin.exoplayer2.e.f;

import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.r;
/* loaded from: classes.dex */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final long f2211a;

    /* renamed from: b  reason: collision with root package name */
    private final r f2212b;

    /* renamed from: c  reason: collision with root package name */
    private final r f2213c;

    /* renamed from: d  reason: collision with root package name */
    private long f2214d;

    public b(long j, long j2, long j3) {
        this.f2214d = j;
        this.f2211a = j3;
        r rVar = new r();
        this.f2212b = rVar;
        r rVar2 = new r();
        this.f2213c = rVar2;
        rVar.a(0L);
        rVar2.a(j2);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        int a2 = ai.a(this.f2212b, j, true, true);
        w wVar = new w(this.f2212b.a(a2), this.f2213c.a(a2));
        if (wVar.f2713b == j || a2 == this.f2212b.a() - 1) {
            return new v.a(wVar);
        }
        int i = a2 + 1;
        return new v.a(wVar, new w(this.f2212b.a(i), this.f2213c.a(i)));
    }

    public void a(long j, long j2) {
        if (b(j)) {
            return;
        }
        this.f2212b.a(j);
        this.f2213c.a(j2);
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return true;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2214d;
    }

    public boolean b(long j) {
        r rVar = this.f2212b;
        return j - rVar.a(rVar.a() - 1) < 100000;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long c() {
        return this.f2211a;
    }

    @Override // com.applovin.exoplayer2.e.f.e
    public long c(long j) {
        return this.f2212b.a(ai.a(this.f2213c, j, true, true));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(long j) {
        this.f2214d = j;
    }
}
