package com.applovin.exoplayer2.h;

import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.s;
import com.applovin.exoplayer2.h.t;
import com.applovin.exoplayer2.h.u;
import com.applovin.exoplayer2.k.i;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class u extends com.applovin.exoplayer2.h.a implements t.b {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.ab f3119a;

    /* renamed from: b  reason: collision with root package name */
    private final ab.f f3120b;

    /* renamed from: c  reason: collision with root package name */
    private final i.a f3121c;

    /* renamed from: d  reason: collision with root package name */
    private final s.a f3122d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.exoplayer2.d.h f3123e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.v f3124f;

    /* renamed from: g  reason: collision with root package name */
    private final int f3125g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f3126h;
    private long i;
    private boolean j;
    private boolean k;
    private com.applovin.exoplayer2.k.aa l;

    /* loaded from: classes.dex */
    public static final class a implements r {

        /* renamed from: a  reason: collision with root package name */
        private final i.a f3128a;

        /* renamed from: b  reason: collision with root package name */
        private s.a f3129b;

        /* renamed from: c  reason: collision with root package name */
        private com.applovin.exoplayer2.d.i f3130c;

        /* renamed from: d  reason: collision with root package name */
        private com.applovin.exoplayer2.k.v f3131d;

        /* renamed from: e  reason: collision with root package name */
        private int f3132e;

        /* renamed from: f  reason: collision with root package name */
        private String f3133f;

        /* renamed from: g  reason: collision with root package name */
        private Object f3134g;

        public a(i.a aVar) {
            this(aVar, new com.applovin.exoplayer2.e.f());
        }

        public a(i.a aVar, final com.applovin.exoplayer2.e.l lVar) {
            this(aVar, new s.a() { // from class: com.applovin.exoplayer2.h.u$a$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.h.s.a
                public final s createProgressiveMediaExtractor() {
                    s a2;
                    a2 = u.a.a(com.applovin.exoplayer2.e.l.this);
                    return a2;
                }
            });
        }

        public a(i.a aVar, s.a aVar2) {
            this.f3128a = aVar;
            this.f3129b = aVar2;
            this.f3130c = new com.applovin.exoplayer2.d.d();
            this.f3131d = new com.applovin.exoplayer2.k.r();
            this.f3132e = 1048576;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ s a(com.applovin.exoplayer2.e.l lVar) {
            return new c(lVar);
        }

        public u a(com.applovin.exoplayer2.ab abVar) {
            ab.b a2;
            ab.b a3;
            com.applovin.exoplayer2.l.a.b(abVar.f1232c);
            boolean z = true;
            boolean z2 = abVar.f1232c.f1287h == null && this.f3134g != null;
            if (abVar.f1232c.f1285f != null || this.f3133f == null) {
                z = false;
            }
            if (!z2 || !z) {
                if (z2) {
                    a3 = abVar.a().a(this.f3134g);
                    abVar = a3.a();
                    com.applovin.exoplayer2.ab abVar2 = abVar;
                    return new u(abVar2, this.f3128a, this.f3129b, this.f3130c.a(abVar2), this.f3131d, this.f3132e);
                }
                if (z) {
                    a2 = abVar.a();
                }
                com.applovin.exoplayer2.ab abVar22 = abVar;
                return new u(abVar22, this.f3128a, this.f3129b, this.f3130c.a(abVar22), this.f3131d, this.f3132e);
            }
            a2 = abVar.a().a(this.f3134g);
            a3 = a2.b(this.f3133f);
            abVar = a3.a();
            com.applovin.exoplayer2.ab abVar222 = abVar;
            return new u(abVar222, this.f3128a, this.f3129b, this.f3130c.a(abVar222), this.f3131d, this.f3132e);
        }
    }

    private u(com.applovin.exoplayer2.ab abVar, i.a aVar, s.a aVar2, com.applovin.exoplayer2.d.h hVar, com.applovin.exoplayer2.k.v vVar, int i) {
        this.f3120b = (ab.f) com.applovin.exoplayer2.l.a.b(abVar.f1232c);
        this.f3119a = abVar;
        this.f3121c = aVar;
        this.f3122d = aVar2;
        this.f3123e = hVar;
        this.f3124f = vVar;
        this.f3125g = i;
        this.f3126h = true;
        this.i = C.TIME_UNSET;
    }

    private void f() {
        ba aaVar = new aa(this.i, this.j, false, this.k, null, this.f3119a);
        if (this.f3126h) {
            aaVar = new h(aaVar) { // from class: com.applovin.exoplayer2.h.u.1
                @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
                public ba.a a(int i, ba.a aVar, boolean z) {
                    super.a(i, aVar, z);
                    aVar.f1623f = true;
                    return aVar;
                }

                @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
                public ba.c a(int i, ba.c cVar, long j) {
                    super.a(i, cVar, j);
                    cVar.m = true;
                    return cVar;
                }
            };
        }
        a(aaVar);
    }

    @Override // com.applovin.exoplayer2.h.t.b
    public void a(long j, boolean z, boolean z2) {
        if (j == C.TIME_UNSET) {
            j = this.i;
        }
        if (!this.f3126h && this.i == j && this.j == z && this.k == z2) {
            return;
        }
        this.i = j;
        this.j = z;
        this.k = z2;
        this.f3126h = false;
        f();
    }

    @Override // com.applovin.exoplayer2.h.p
    public void a(n nVar) {
        ((t) nVar).g();
    }

    @Override // com.applovin.exoplayer2.h.a
    protected void a(com.applovin.exoplayer2.k.aa aaVar) {
        this.l = aaVar;
        this.f3123e.a();
        f();
    }

    @Override // com.applovin.exoplayer2.h.p
    public n b(p.a aVar, com.applovin.exoplayer2.k.b bVar, long j) {
        com.applovin.exoplayer2.k.i a2 = this.f3121c.a();
        com.applovin.exoplayer2.k.aa aaVar = this.l;
        if (aaVar != null) {
            a2.a(aaVar);
        }
        return new t(this.f3120b.f1280a, a2, this.f3122d.createProgressiveMediaExtractor(), this.f3123e, b(aVar), this.f3124f, a(aVar), this, bVar, this.f3120b.f1285f, this.f3125g);
    }

    @Override // com.applovin.exoplayer2.h.a
    protected void c() {
        this.f3123e.b();
    }

    @Override // com.applovin.exoplayer2.h.p
    public void e() {
    }

    @Override // com.applovin.exoplayer2.h.p
    public com.applovin.exoplayer2.ab g() {
        return this.f3119a;
    }
}
