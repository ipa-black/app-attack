package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class s implements x {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.exoplayer2.v f2601a;

    /* renamed from: b  reason: collision with root package name */
    private ag f2602b;

    /* renamed from: c  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2603c;

    public s(String str) {
        this.f2601a = new v.a().f(str).a();
    }

    private void a() {
        com.applovin.exoplayer2.l.a.a(this.f2602b);
        ai.a(this.f2603c);
    }

    @Override // com.applovin.exoplayer2.e.i.x
    public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        this.f2602b = agVar;
        dVar.a();
        com.applovin.exoplayer2.e.x a2 = jVar.a(dVar.b(), 5);
        this.f2603c = a2;
        a2.a(this.f2601a);
    }

    @Override // com.applovin.exoplayer2.e.i.x
    public void a(com.applovin.exoplayer2.l.y yVar) {
        a();
        long b2 = this.f2602b.b();
        long c2 = this.f2602b.c();
        if (b2 == C.TIME_UNSET || c2 == C.TIME_UNSET) {
            return;
        }
        if (c2 != this.f2601a.p) {
            com.applovin.exoplayer2.v a2 = this.f2601a.a().a(c2).a();
            this.f2601a = a2;
            this.f2603c.a(a2);
        }
        int a3 = yVar.a();
        this.f2603c.a(yVar, a3);
        this.f2603c.a(b2, 1, a3, 0, null);
    }
}
