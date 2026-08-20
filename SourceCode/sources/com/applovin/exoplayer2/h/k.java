package com.applovin.exoplayer2.h;

import com.applovin.exoplayer2.av;
import com.applovin.exoplayer2.h.n;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* loaded from: classes.dex */
public final class k implements n, n.a {

    /* renamed from: a  reason: collision with root package name */
    public final p.a f3058a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3059b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.b f3060c;

    /* renamed from: d  reason: collision with root package name */
    private p f3061d;

    /* renamed from: e  reason: collision with root package name */
    private n f3062e;

    /* renamed from: f  reason: collision with root package name */
    private n.a f3063f;

    /* renamed from: g  reason: collision with root package name */
    private a f3064g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f3065h;
    private long i = C.TIME_UNSET;

    /* loaded from: classes.dex */
    public interface a {
        void a(p.a aVar);

        void a(p.a aVar, IOException iOException);
    }

    public k(p.a aVar, com.applovin.exoplayer2.k.b bVar, long j) {
        this.f3058a = aVar;
        this.f3060c = bVar;
        this.f3059b = j;
    }

    private long e(long j) {
        long j2 = this.i;
        return j2 != C.TIME_UNSET ? j2 : j;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long a(long j, av avVar) {
        return ((n) ai.a(this.f3062e)).a(j, avVar);
    }

    @Override // com.applovin.exoplayer2.h.n
    public long a(com.applovin.exoplayer2.j.d[] dVarArr, boolean[] zArr, x[] xVarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.i;
        if (j3 == C.TIME_UNSET || j != this.f3059b) {
            j2 = j;
        } else {
            this.i = C.TIME_UNSET;
            j2 = j3;
        }
        return ((n) ai.a(this.f3062e)).a(dVarArr, zArr, xVarArr, zArr2, j2);
    }

    @Override // com.applovin.exoplayer2.h.n
    public void a(long j) {
        ((n) ai.a(this.f3062e)).a(j);
    }

    @Override // com.applovin.exoplayer2.h.n
    public void a(long j, boolean z) {
        ((n) ai.a(this.f3062e)).a(j, z);
    }

    @Override // com.applovin.exoplayer2.h.n
    public void a(n.a aVar, long j) {
        this.f3063f = aVar;
        n nVar = this.f3062e;
        if (nVar != null) {
            nVar.a(this, e(this.f3059b));
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.applovin.exoplayer2.h.n.a
    public void a(n nVar) {
        ((n.a) ai.a(this.f3063f)).a((n) this);
        a aVar = this.f3064g;
        if (aVar != null) {
            aVar.a(this.f3058a);
        }
    }

    public void a(p.a aVar) {
        long e2 = e(this.f3059b);
        n b2 = ((p) com.applovin.exoplayer2.l.a.b(this.f3061d)).b(aVar, this.f3060c, e2);
        this.f3062e = b2;
        if (this.f3063f != null) {
            b2.a(this, e2);
        }
    }

    public void a(p pVar) {
        com.applovin.exoplayer2.l.a.b(this.f3061d == null);
        this.f3061d = pVar;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long b(long j) {
        return ((n) ai.a(this.f3062e)).b(j);
    }

    @Override // com.applovin.exoplayer2.h.n
    public ad b() {
        return ((n) ai.a(this.f3062e)).b();
    }

    @Override // com.applovin.exoplayer2.h.y.a
    /* renamed from: b */
    public void a(n nVar) {
        ((n.a) ai.a(this.f3063f)).a((n.a) this);
    }

    @Override // com.applovin.exoplayer2.h.n
    public long c() {
        return ((n) ai.a(this.f3062e)).c();
    }

    @Override // com.applovin.exoplayer2.h.n
    public boolean c(long j) {
        n nVar = this.f3062e;
        return nVar != null && nVar.c(j);
    }

    @Override // com.applovin.exoplayer2.h.n
    public long d() {
        return ((n) ai.a(this.f3062e)).d();
    }

    public void d(long j) {
        this.i = j;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long e() {
        return ((n) ai.a(this.f3062e)).e();
    }

    @Override // com.applovin.exoplayer2.h.n
    public void e_() throws IOException {
        try {
            n nVar = this.f3062e;
            if (nVar != null) {
                nVar.e_();
            } else {
                p pVar = this.f3061d;
                if (pVar != null) {
                    pVar.e();
                }
            }
        } catch (IOException e2) {
            a aVar = this.f3064g;
            if (aVar == null) {
                throw e2;
            }
            if (this.f3065h) {
                return;
            }
            this.f3065h = true;
            aVar.a(this.f3058a, e2);
        }
    }

    @Override // com.applovin.exoplayer2.h.n
    public boolean f() {
        n nVar = this.f3062e;
        return nVar != null && nVar.f();
    }

    public long g() {
        return this.f3059b;
    }

    public long h() {
        return this.i;
    }

    public void i() {
        if (this.f3062e != null) {
            ((p) com.applovin.exoplayer2.l.a.b(this.f3061d)).a(this.f3062e);
        }
    }
}
