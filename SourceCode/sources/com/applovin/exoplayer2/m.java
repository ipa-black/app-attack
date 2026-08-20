package com.applovin.exoplayer2;
/* loaded from: classes.dex */
final class m implements com.applovin.exoplayer2.l.s {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.ac f3871a;

    /* renamed from: b  reason: collision with root package name */
    private final a f3872b;

    /* renamed from: c  reason: collision with root package name */
    private ar f3873c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.exoplayer2.l.s f3874d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3875e = true;

    /* renamed from: f  reason: collision with root package name */
    private boolean f3876f;

    /* loaded from: classes.dex */
    public interface a {
        void a(am amVar);
    }

    public m(a aVar, com.applovin.exoplayer2.l.d dVar) {
        this.f3872b = aVar;
        this.f3871a = new com.applovin.exoplayer2.l.ac(dVar);
    }

    private void b(boolean z) {
        if (c(z)) {
            this.f3875e = true;
            if (this.f3876f) {
                this.f3871a.a();
                return;
            }
            return;
        }
        com.applovin.exoplayer2.l.s sVar = (com.applovin.exoplayer2.l.s) com.applovin.exoplayer2.l.a.b(this.f3874d);
        long c_ = sVar.c_();
        if (this.f3875e) {
            if (c_ < this.f3871a.c_()) {
                this.f3871a.b();
                return;
            }
            this.f3875e = false;
            if (this.f3876f) {
                this.f3871a.a();
            }
        }
        this.f3871a.a(c_);
        am d2 = sVar.d();
        if (d2.equals(this.f3871a.d())) {
            return;
        }
        this.f3871a.a(d2);
        this.f3872b.a(d2);
    }

    private boolean c(boolean z) {
        ar arVar = this.f3873c;
        return arVar == null || arVar.A() || (!this.f3873c.z() && (z || this.f3873c.g()));
    }

    public long a(boolean z) {
        b(z);
        return c_();
    }

    public void a() {
        this.f3876f = true;
        this.f3871a.a();
    }

    public void a(long j) {
        this.f3871a.a(j);
    }

    @Override // com.applovin.exoplayer2.l.s
    public void a(am amVar) {
        com.applovin.exoplayer2.l.s sVar = this.f3874d;
        if (sVar != null) {
            sVar.a(amVar);
            amVar = this.f3874d.d();
        }
        this.f3871a.a(amVar);
    }

    public void a(ar arVar) throws p {
        com.applovin.exoplayer2.l.s sVar;
        com.applovin.exoplayer2.l.s c2 = arVar.c();
        if (c2 == null || c2 == (sVar = this.f3874d)) {
            return;
        }
        if (sVar != null) {
            throw p.a(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.f3874d = c2;
        this.f3873c = arVar;
        c2.a(this.f3871a.d());
    }

    public void b() {
        this.f3876f = false;
        this.f3871a.b();
    }

    public void b(ar arVar) {
        if (arVar == this.f3873c) {
            this.f3874d = null;
            this.f3873c = null;
            this.f3875e = true;
        }
    }

    @Override // com.applovin.exoplayer2.l.s
    public long c_() {
        return this.f3875e ? this.f3871a.c_() : ((com.applovin.exoplayer2.l.s) com.applovin.exoplayer2.l.a.b(this.f3874d)).c_();
    }

    @Override // com.applovin.exoplayer2.l.s
    public am d() {
        com.applovin.exoplayer2.l.s sVar = this.f3874d;
        return sVar != null ? sVar.d() : this.f3871a.d();
    }
}
