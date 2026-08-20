package com.applovin.exoplayer2;

import java.io.IOException;
/* loaded from: classes.dex */
public abstract class e implements ar, as {

    /* renamed from: a  reason: collision with root package name */
    private final int f2051a;

    /* renamed from: c  reason: collision with root package name */
    private at f2053c;

    /* renamed from: d  reason: collision with root package name */
    private int f2054d;

    /* renamed from: e  reason: collision with root package name */
    private int f2055e;

    /* renamed from: f  reason: collision with root package name */
    private com.applovin.exoplayer2.h.x f2056f;

    /* renamed from: g  reason: collision with root package name */
    private v[] f2057g;

    /* renamed from: h  reason: collision with root package name */
    private long f2058h;
    private long i;
    private boolean k;
    private boolean l;

    /* renamed from: b  reason: collision with root package name */
    private final w f2052b = new w();
    private long j = Long.MIN_VALUE;

    public e(int i) {
        this.f2051a = i;
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public final int a() {
        return this.f2051a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(w wVar, com.applovin.exoplayer2.c.g gVar, int i) {
        int a2 = ((com.applovin.exoplayer2.h.x) com.applovin.exoplayer2.l.a.b(this.f2056f)).a(wVar, gVar, i);
        if (a2 == -4) {
            if (gVar.c()) {
                this.j = Long.MIN_VALUE;
                return this.k ? -4 : -3;
            }
            gVar.f1677d += this.f2058h;
            this.j = Math.max(this.j, gVar.f1677d);
        } else if (a2 == -5) {
            v vVar = (v) com.applovin.exoplayer2.l.a.b(wVar.f4195b);
            if (vVar.p != Long.MAX_VALUE) {
                wVar.f4195b = vVar.a().a(vVar.p + this.f2058h).a();
            }
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final p a(Throwable th, v vVar, int i) {
        return a(th, vVar, false, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final p a(Throwable th, v vVar, boolean z, int i) {
        int i2;
        if (vVar != null && !this.l) {
            this.l = true;
            try {
                i2 = as.c(a(vVar));
            } catch (p unused) {
            } finally {
                this.l = false;
            }
            return p.a(th, y(), w(), vVar, i2, z, i);
        }
        i2 = 4;
        return p.a(th, y(), w(), vVar, i2, z, i);
    }

    @Override // com.applovin.exoplayer2.ar
    public final void a(int i) {
        this.f2054d = i;
    }

    @Override // com.applovin.exoplayer2.ao.b
    public void a(int i, Object obj) throws p {
    }

    @Override // com.applovin.exoplayer2.ar
    public final void a(long j) throws p {
        this.k = false;
        this.i = j;
        this.j = j;
        a(j, false);
    }

    protected void a(long j, boolean z) throws p {
    }

    @Override // com.applovin.exoplayer2.ar
    public final void a(at atVar, v[] vVarArr, com.applovin.exoplayer2.h.x xVar, long j, boolean z, boolean z2, long j2, long j3) throws p {
        com.applovin.exoplayer2.l.a.b(this.f2055e == 0);
        this.f2053c = atVar;
        this.f2055e = 1;
        this.i = j;
        a(z, z2);
        a(vVarArr, xVar, j2, j3);
        a(j, z);
    }

    protected void a(boolean z, boolean z2) throws p {
    }

    protected void a(v[] vVarArr, long j, long j2) throws p {
    }

    @Override // com.applovin.exoplayer2.ar
    public final void a(v[] vVarArr, com.applovin.exoplayer2.h.x xVar, long j, long j2) throws p {
        com.applovin.exoplayer2.l.a.b(!this.k);
        this.f2056f = xVar;
        if (this.j == Long.MIN_VALUE) {
            this.j = j;
        }
        this.f2057g = vVarArr;
        this.f2058h = j2;
        a(vVarArr, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b(long j) {
        return ((com.applovin.exoplayer2.h.x) com.applovin.exoplayer2.l.a.b(this.f2056f)).a(j - this.f2058h);
    }

    @Override // com.applovin.exoplayer2.ar
    public final as b() {
        return this;
    }

    @Override // com.applovin.exoplayer2.ar
    public com.applovin.exoplayer2.l.s c() {
        return null;
    }

    @Override // com.applovin.exoplayer2.ar
    public final int d_() {
        return this.f2055e;
    }

    @Override // com.applovin.exoplayer2.ar
    public final void e() throws p {
        com.applovin.exoplayer2.l.a.b(this.f2055e == 1);
        this.f2055e = 2;
        p();
    }

    @Override // com.applovin.exoplayer2.ar
    public final com.applovin.exoplayer2.h.x f() {
        return this.f2056f;
    }

    @Override // com.applovin.exoplayer2.ar
    public final boolean g() {
        return this.j == Long.MIN_VALUE;
    }

    @Override // com.applovin.exoplayer2.ar
    public final long h() {
        return this.j;
    }

    @Override // com.applovin.exoplayer2.ar
    public final void i() {
        this.k = true;
    }

    @Override // com.applovin.exoplayer2.ar
    public final boolean j() {
        return this.k;
    }

    @Override // com.applovin.exoplayer2.ar
    public final void k() throws IOException {
        ((com.applovin.exoplayer2.h.x) com.applovin.exoplayer2.l.a.b(this.f2056f)).c();
    }

    @Override // com.applovin.exoplayer2.ar
    public final void l() {
        com.applovin.exoplayer2.l.a.b(this.f2055e == 2);
        this.f2055e = 1;
        q();
    }

    @Override // com.applovin.exoplayer2.ar
    public final void m() {
        com.applovin.exoplayer2.l.a.b(this.f2055e == 1);
        this.f2052b.a();
        this.f2055e = 0;
        this.f2056f = null;
        this.f2057g = null;
        this.k = false;
        r();
    }

    @Override // com.applovin.exoplayer2.ar
    public final void n() {
        com.applovin.exoplayer2.l.a.b(this.f2055e == 0);
        this.f2052b.a();
        s();
    }

    @Override // com.applovin.exoplayer2.as
    public int o() throws p {
        return 0;
    }

    protected void p() throws p {
    }

    protected void q() {
    }

    protected void r() {
    }

    protected void s() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final w t() {
        this.f2052b.a();
        return this.f2052b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final v[] u() {
        return (v[]) com.applovin.exoplayer2.l.a.b(this.f2057g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final at v() {
        return (at) com.applovin.exoplayer2.l.a.b(this.f2053c);
    }

    protected final int w() {
        return this.f2054d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean x() {
        return g() ? this.k : ((com.applovin.exoplayer2.h.x) com.applovin.exoplayer2.l.a.b(this.f2056f)).b();
    }
}
