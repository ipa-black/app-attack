package com.applovin.exoplayer2.a;

import android.os.Looper;
import android.util.SparseArray;
import com.applovin.exoplayer2.a.b;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.b.g;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.c.e;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.common.a.u;
import com.applovin.exoplayer2.common.a.x;
import com.applovin.exoplayer2.h;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.j;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.q;
import com.applovin.exoplayer2.k.d;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.m;
import com.applovin.exoplayer2.l.o;
import com.applovin.exoplayer2.l.p;
import com.applovin.exoplayer2.m.n;
import com.applovin.exoplayer2.v;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public class a implements an.d, g, com.applovin.exoplayer2.d.g, q, d.a, n {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.d f1205a;

    /* renamed from: b  reason: collision with root package name */
    private final ba.a f1206b;

    /* renamed from: c  reason: collision with root package name */
    private final ba.c f1207c;

    /* renamed from: d  reason: collision with root package name */
    private final C0019a f1208d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<b.a> f1209e;

    /* renamed from: f  reason: collision with root package name */
    private p<b> f1210f;

    /* renamed from: g  reason: collision with root package name */
    private an f1211g;

    /* renamed from: h  reason: collision with root package name */
    private o f1212h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0019a {

        /* renamed from: a  reason: collision with root package name */
        private final ba.a f1213a;

        /* renamed from: b  reason: collision with root package name */
        private s<p.a> f1214b = s.g();

        /* renamed from: c  reason: collision with root package name */
        private u<p.a, ba> f1215c = u.a();

        /* renamed from: d  reason: collision with root package name */
        private p.a f1216d;

        /* renamed from: e  reason: collision with root package name */
        private p.a f1217e;

        /* renamed from: f  reason: collision with root package name */
        private p.a f1218f;

        public C0019a(ba.a aVar) {
            this.f1213a = aVar;
        }

        private static p.a a(an anVar, s<p.a> sVar, p.a aVar, ba.a aVar2) {
            ba S = anVar.S();
            int F = anVar.F();
            Object a2 = S.d() ? null : S.a(F);
            int b2 = (anVar.K() || S.d()) ? -1 : S.a(F, aVar2).b(h.b(anVar.I()) - aVar2.c());
            for (int i = 0; i < sVar.size(); i++) {
                p.a aVar3 = sVar.get(i);
                if (a(aVar3, a2, anVar.K(), anVar.L(), anVar.M(), b2)) {
                    return aVar3;
                }
            }
            if (sVar.isEmpty() && aVar != null) {
                if (a(aVar, a2, anVar.K(), anVar.L(), anVar.M(), b2)) {
                    return aVar;
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
            if (com.applovin.exoplayer2.common.base.Objects.equal(r3.f1216d, r3.f1218f) == false) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
            if (r3.f1214b.contains(r3.f1216d) == false) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
            a(r0, r3.f1216d, r4);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(com.applovin.exoplayer2.ba r4) {
            /*
                r3 = this;
                com.applovin.exoplayer2.common.a.u$a r0 = com.applovin.exoplayer2.common.a.u.b()
                com.applovin.exoplayer2.common.a.s<com.applovin.exoplayer2.h.p$a> r1 = r3.f1214b
                boolean r1 = r1.isEmpty()
                if (r1 == 0) goto L35
                com.applovin.exoplayer2.h.p$a r1 = r3.f1217e
                r3.a(r0, r1, r4)
                com.applovin.exoplayer2.h.p$a r1 = r3.f1218f
                com.applovin.exoplayer2.h.p$a r2 = r3.f1217e
                boolean r1 = com.applovin.exoplayer2.common.base.Objects.equal(r1, r2)
                if (r1 != 0) goto L20
                com.applovin.exoplayer2.h.p$a r1 = r3.f1218f
                r3.a(r0, r1, r4)
            L20:
                com.applovin.exoplayer2.h.p$a r1 = r3.f1216d
                com.applovin.exoplayer2.h.p$a r2 = r3.f1217e
                boolean r1 = com.applovin.exoplayer2.common.base.Objects.equal(r1, r2)
                if (r1 != 0) goto L5b
                com.applovin.exoplayer2.h.p$a r1 = r3.f1216d
                com.applovin.exoplayer2.h.p$a r2 = r3.f1218f
                boolean r1 = com.applovin.exoplayer2.common.base.Objects.equal(r1, r2)
                if (r1 != 0) goto L5b
                goto L56
            L35:
                r1 = 0
            L36:
                com.applovin.exoplayer2.common.a.s<com.applovin.exoplayer2.h.p$a> r2 = r3.f1214b
                int r2 = r2.size()
                if (r1 >= r2) goto L4c
                com.applovin.exoplayer2.common.a.s<com.applovin.exoplayer2.h.p$a> r2 = r3.f1214b
                java.lang.Object r2 = r2.get(r1)
                com.applovin.exoplayer2.h.p$a r2 = (com.applovin.exoplayer2.h.p.a) r2
                r3.a(r0, r2, r4)
                int r1 = r1 + 1
                goto L36
            L4c:
                com.applovin.exoplayer2.common.a.s<com.applovin.exoplayer2.h.p$a> r1 = r3.f1214b
                com.applovin.exoplayer2.h.p$a r2 = r3.f1216d
                boolean r1 = r1.contains(r2)
                if (r1 != 0) goto L5b
            L56:
                com.applovin.exoplayer2.h.p$a r1 = r3.f1216d
                r3.a(r0, r1, r4)
            L5b:
                com.applovin.exoplayer2.common.a.u r4 = r0.a()
                r3.f1215c = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.a.a.C0019a.a(com.applovin.exoplayer2.ba):void");
        }

        private void a(u.a<p.a, ba> aVar, p.a aVar2, ba baVar) {
            if (aVar2 == null) {
                return;
            }
            if (baVar.c(aVar2.f3085a) == -1 && (baVar = this.f1215c.get(aVar2)) == null) {
                return;
            }
            aVar.a(aVar2, baVar);
        }

        private static boolean a(p.a aVar, Object obj, boolean z, int i, int i2, int i3) {
            if (aVar.f3085a.equals(obj)) {
                return (z && aVar.f3086b == i && aVar.f3087c == i2) || (!z && aVar.f3086b == -1 && aVar.f3089e == i3);
            }
            return false;
        }

        public ba a(p.a aVar) {
            return this.f1215c.get(aVar);
        }

        public p.a a() {
            return this.f1216d;
        }

        public void a(an anVar) {
            this.f1216d = a(anVar, this.f1214b, this.f1217e, this.f1213a);
        }

        public void a(List<p.a> list, p.a aVar, an anVar) {
            this.f1214b = s.a((Collection) list);
            if (!list.isEmpty()) {
                this.f1217e = list.get(0);
                this.f1218f = (p.a) com.applovin.exoplayer2.l.a.b(aVar);
            }
            if (this.f1216d == null) {
                this.f1216d = a(anVar, this.f1214b, this.f1217e, this.f1213a);
            }
            a(anVar.S());
        }

        public p.a b() {
            return this.f1217e;
        }

        public void b(an anVar) {
            this.f1216d = a(anVar, this.f1214b, this.f1217e, this.f1213a);
            a(anVar.S());
        }

        public p.a c() {
            return this.f1218f;
        }

        public p.a d() {
            if (this.f1214b.isEmpty()) {
                return null;
            }
            return (p.a) x.c(this.f1214b);
        }
    }

    public a(com.applovin.exoplayer2.l.d dVar) {
        this.f1205a = (com.applovin.exoplayer2.l.d) com.applovin.exoplayer2.l.a.b(dVar);
        this.f1210f = new com.applovin.exoplayer2.l.p<>(ai.c(), dVar, new p.b() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda28
            @Override // com.applovin.exoplayer2.l.p.b
            public final void invoke(Object obj, m mVar) {
                a.a((b) obj, mVar);
            }
        });
        ba.a aVar = new ba.a();
        this.f1206b = aVar;
        this.f1207c = new ba.c();
        this.f1208d = new C0019a(aVar);
        this.f1209e = new SparseArray<>();
    }

    private b.a a(p.a aVar) {
        com.applovin.exoplayer2.l.a.b(this.f1211g);
        ba a2 = aVar == null ? null : this.f1208d.a(aVar);
        if (aVar == null || a2 == null) {
            int G = this.f1211g.G();
            ba S = this.f1211g.S();
            if (G >= S.b()) {
                S = ba.f1615a;
            }
            return a(S, G, (p.a) null);
        }
        return a(a2, a2.a(aVar.f3085a, this.f1206b).f1620c, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, b bVar) {
        bVar.c(aVar);
        bVar.f(aVar, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, an.e eVar, an.e eVar2, b bVar) {
        bVar.d(aVar, i);
        bVar.a(aVar, eVar, eVar2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, e eVar, b bVar) {
        bVar.d(aVar, eVar);
        bVar.b(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, com.applovin.exoplayer2.m.o oVar, b bVar) {
        bVar.a(aVar, oVar);
        bVar.a(aVar, oVar.f4014b, oVar.f4015c, oVar.f4016d, oVar.f4017e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, v vVar, com.applovin.exoplayer2.c.h hVar, b bVar) {
        bVar.b(aVar, vVar);
        bVar.b(aVar, vVar, hVar);
        bVar.a(aVar, 2, vVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, String str, long j, long j2, b bVar) {
        bVar.b(aVar, str, j);
        bVar.b(aVar, str, j2, j);
        bVar.a(aVar, 2, str, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b bVar, m mVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(an anVar, b bVar, m mVar) {
        bVar.a(anVar, new b.C0020b(mVar, this.f1209e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, e eVar, b bVar) {
        bVar.c(aVar, eVar);
        bVar.a(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, v vVar, com.applovin.exoplayer2.c.h hVar, b bVar) {
        bVar.a(aVar, vVar);
        bVar.a(aVar, vVar, hVar);
        bVar.a(aVar, 1, vVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, String str, long j, long j2, b bVar) {
        bVar.a(aVar, str, j);
        bVar.a(aVar, str, j2, j);
        bVar.a(aVar, 1, str, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, e eVar, b bVar) {
        bVar.b(aVar, eVar);
        bVar.b(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, boolean z, b bVar) {
        bVar.d(aVar, z);
        bVar.c(aVar, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(b.a aVar, e eVar, b bVar) {
        bVar.a(aVar, eVar);
        bVar.a(aVar, 1, eVar);
    }

    private b.a f() {
        return a(this.f1208d.b());
    }

    private b.a f(int i, p.a aVar) {
        com.applovin.exoplayer2.l.a.b(this.f1211g);
        if (aVar != null) {
            return this.f1208d.a(aVar) != null ? a(aVar) : a(ba.f1615a, i, aVar);
        }
        ba S = this.f1211g.S();
        if (i >= S.b()) {
            S = ba.f1615a;
        }
        return a(S, i, (p.a) null);
    }

    private b.a g() {
        return a(this.f1208d.c());
    }

    private b.a h() {
        return a(this.f1208d.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        this.f1210f.b();
    }

    protected final b.a a(ba baVar, int i, p.a aVar) {
        p.a aVar2 = baVar.d() ? null : aVar;
        long a2 = this.f1205a.a();
        boolean z = baVar.equals(this.f1211g.S()) && i == this.f1211g.G();
        long j = 0;
        if (aVar2 == null || !aVar2.a()) {
            if (z) {
                j = this.f1211g.N();
            } else if (!baVar.d()) {
                j = baVar.a(i, this.f1207c).a();
            }
        } else if (z && this.f1211g.L() == aVar2.f3086b && this.f1211g.M() == aVar2.f3087c) {
            j = this.f1211g.I();
        }
        return new b.a(a2, baVar, i, aVar2, j, this.f1211g.S(), this.f1211g.G(), this.f1208d.a(), this.f1211g.I(), this.f1211g.J());
    }

    @Override // com.applovin.exoplayer2.an.d
    public final void a(final float f2) {
        final b.a g2 = g();
        a(g2, 1019, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda29
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, f2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d
    public void a(final int i, final int i2) {
        final b.a g2 = g();
        a(g2, 1029, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda2
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, i, i2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final int i, final long j) {
        final b.a f2 = f();
        a(f2, 1023, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda36
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, i, j);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void a(final int i, final long j, final long j2) {
        final b.a g2 = g();
        a(g2, 1012, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda7
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, i, j, j2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void a(int i, p.a aVar) {
        final b.a f2 = f(i, aVar);
        a(f2, IronSourceError.ERROR_RV_LOAD_FAIL_WRONG_AUCTION_ID, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda52
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).d(b.a.this);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void a(int i, p.a aVar, final int i2) {
        final b.a f2 = f(i, aVar);
        a(f2, 1030, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda5
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(b.a.this, i2, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void a(int i, p.a aVar, final j jVar, final com.applovin.exoplayer2.h.m mVar) {
        final b.a f2 = f(i, aVar);
        a(f2, 1000, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda43
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, jVar, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void a(int i, p.a aVar, final j jVar, final com.applovin.exoplayer2.h.m mVar, final IOException iOException, final boolean z) {
        final b.a f2 = f(i, aVar);
        a(f2, 1003, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda32
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, jVar, mVar, iOException, z);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void a(int i, p.a aVar, final com.applovin.exoplayer2.h.m mVar) {
        final b.a f2 = f(i, aVar);
        a(f2, 1004, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda23
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void a(int i, p.a aVar, final Exception exc) {
        final b.a f2 = f(i, aVar);
        a(f2, IronSourceError.ERROR_RV_INIT_FAILED_TIMEOUT, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda17
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).d(b.a.this, exc);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void a(final long j) {
        final b.a g2 = g();
        a(g2, 1011, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda3
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, j);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final long j, final int i) {
        final b.a f2 = f();
        a(f2, 1026, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda33
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, j, i);
            }
        });
    }

    protected final void a(b.a aVar, int i, p.a<b> aVar2) {
        this.f1209e.put(i, aVar);
        this.f1210f.b(i, aVar2);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(final ab abVar, final int i) {
        final b.a e2 = e();
        a(e2, 1, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda45
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, abVar, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public void a(final ac acVar) {
        final b.a e2 = e();
        a(e2, 14, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda40
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, acVar);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001a  */
    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(final com.applovin.exoplayer2.ak r3) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof com.applovin.exoplayer2.p
            if (r0 == 0) goto L17
            r0 = r3
            com.applovin.exoplayer2.p r0 = (com.applovin.exoplayer2.p) r0
            com.applovin.exoplayer2.h.o r1 = r0.f4037f
            if (r1 == 0) goto L17
            com.applovin.exoplayer2.h.p$a r1 = new com.applovin.exoplayer2.h.p$a
            com.applovin.exoplayer2.h.o r0 = r0.f4037f
            r1.<init>(r0)
            com.applovin.exoplayer2.a.b$a r0 = r2.a(r1)
            goto L18
        L17:
            r0 = 0
        L18:
            if (r0 != 0) goto L1e
            com.applovin.exoplayer2.a.b$a r0 = r2.e()
        L1e:
            com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda0 r1 = new com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda0
            r1.<init>()
            r3 = 10
            r2.a(r0, r3, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.a.a.a(com.applovin.exoplayer2.ak):void");
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(final am amVar) {
        final b.a e2 = e();
        a(e2, 12, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda18
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, amVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public void a(final an.a aVar) {
        final b.a e2 = e();
        a(e2, 13, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda42
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, aVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(final an.e eVar, final an.e eVar2, final int i) {
        if (i == 1) {
            this.i = false;
        }
        this.f1208d.a((an) com.applovin.exoplayer2.l.a.b(this.f1211g));
        final b.a e2 = e();
        a(e2, 11, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda55
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(b.a.this, i, eVar, eVar2, (b) obj);
            }
        });
    }

    public void a(final an anVar, Looper looper) {
        com.applovin.exoplayer2.l.a.b(this.f1211g == null || this.f1208d.f1214b.isEmpty());
        this.f1211g = (an) com.applovin.exoplayer2.l.a.b(anVar);
        this.f1212h = this.f1205a.a(looper, null);
        this.f1210f = this.f1210f.a(looper, new p.b() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda47
            @Override // com.applovin.exoplayer2.l.p.b
            public final void invoke(Object obj, m mVar) {
                a.this.a(anVar, (b) obj, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(ba baVar, final int i) {
        this.f1208d.b((an) com.applovin.exoplayer2.l.a.b(this.f1211g));
        final b.a e2 = e();
        a(e2, 0, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda25
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).c(b.a.this, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final e eVar) {
        final b.a g2 = g();
        a(g2, 1020, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda12
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.b(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d
    public final void a(final com.applovin.exoplayer2.g.a aVar) {
        final b.a e2 = e();
        a(e2, 1007, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda37
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, aVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void a(final ad adVar, final com.applovin.exoplayer2.j.h hVar) {
        final b.a e2 = e();
        a(e2, 2, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda11
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, adVar, hVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.m.n
    public final void a(final com.applovin.exoplayer2.m.o oVar) {
        final b.a g2 = g();
        a(g2, 1028, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda6
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(b.a.this, oVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final v vVar, final com.applovin.exoplayer2.c.h hVar) {
        final b.a g2 = g();
        a(g2, 1022, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda24
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(b.a.this, vVar, hVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final Exception exc) {
        final b.a g2 = g();
        a(g2, IronSourceError.ERROR_RV_SHOW_EXCEPTION, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda41
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).c(b.a.this, exc);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final Object obj, final long j) {
        final b.a g2 = g();
        a(g2, 1027, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda31
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj2) {
                ((b) obj2).a(b.a.this, obj, j);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final String str) {
        final b.a g2 = g();
        a(g2, 1024, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda54
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, str);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void a(final String str, final long j, final long j2) {
        final b.a g2 = g();
        a(g2, 1021, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda51
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(b.a.this, str, j2, j, (b) obj);
            }
        });
    }

    public final void a(List<p.a> list, p.a aVar) {
        this.f1208d.a(list, aVar, (an) com.applovin.exoplayer2.l.a.b(this.f1211g));
    }

    @Override // com.applovin.exoplayer2.an.b
    public final void a(final boolean z, final int i) {
        final b.a e2 = e();
        a(e2, -1, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda4
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, z, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.b.g
    public final void a_(final boolean z) {
        final b.a g2 = g();
        a(g2, 1017, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda13
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).e(b.a.this, z);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.b
    public final void b() {
        final b.a e2 = e();
        a(e2, -1, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda20
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void b(final int i) {
        final b.a e2 = e();
        a(e2, 4, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda1
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.k.d.a
    public final void b(final int i, final long j, final long j2) {
        final b.a h2 = h();
        a(h2, 1006, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda16
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, i, j, j2);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void b(int i, p.a aVar) {
        final b.a f2 = f(i, aVar);
        a(f2, IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda35
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).e(b.a.this);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void b(int i, p.a aVar, final j jVar, final com.applovin.exoplayer2.h.m mVar) {
        final b.a f2 = f(i, aVar);
        a(f2, 1001, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda48
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, jVar, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.m.n
    public final void b(final e eVar) {
        final b.a f2 = f();
        a(f2, 1025, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda14
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.a(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void b(final v vVar, final com.applovin.exoplayer2.c.h hVar) {
        final b.a g2 = g();
        a(g2, 1010, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda39
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.b(b.a.this, vVar, hVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void b(final Exception exc) {
        final b.a g2 = g();
        a(g2, 1018, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda38
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, exc);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void b(final String str) {
        final b.a g2 = g();
        a(g2, 1013, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda49
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, str);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void b(final String str, final long j, final long j2) {
        final b.a g2 = g();
        a(g2, 1009, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda34
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.b(b.a.this, str, j2, j, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void b(final boolean z, final int i) {
        final b.a e2 = e();
        a(e2, 5, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda56
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, z, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void b_(final boolean z) {
        final b.a e2 = e();
        a(e2, 3, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda53
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.c(b.a.this, z, (b) obj);
            }
        });
    }

    public void c() {
        final b.a e2 = e();
        this.f1209e.put(IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, e2);
        a(e2, IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda26
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).h(b.a.this);
            }
        });
        ((o) com.applovin.exoplayer2.l.a.a(this.f1212h)).a(new Runnable() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                a.this.i();
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void c(final int i) {
        final b.a e2 = e();
        a(e2, 6, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda15
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void c(int i, p.a aVar) {
        final b.a f2 = f(i, aVar);
        a(f2, IronSourceError.ERROR_RV_LOAD_UNEXPECTED_CALLBACK, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda44
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).f(b.a.this);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.q
    public final void c(int i, p.a aVar, final j jVar, final com.applovin.exoplayer2.h.m mVar) {
        final b.a f2 = f(i, aVar);
        a(f2, 1002, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda10
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).c(b.a.this, jVar, mVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void c(final e eVar) {
        final b.a g2 = g();
        a(g2, 1008, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda46
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.d(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void c(final Exception exc) {
        final b.a g2 = g();
        a(g2, IronSourceError.ERROR_IS_LOAD_DURING_SHOW, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda22
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, exc);
            }
        });
    }

    public final void d() {
        if (this.i) {
            return;
        }
        final b.a e2 = e();
        this.i = true;
        a(e2, -1, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda21
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void d(final int i) {
        final b.a e2 = e();
        a(e2, 8, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda19
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).e(b.a.this, i);
            }
        });
    }

    @Override // com.applovin.exoplayer2.d.g
    public final void d(int i, p.a aVar) {
        final b.a f2 = f(i, aVar);
        a(f2, IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda8
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).g(b.a.this);
            }
        });
    }

    @Override // com.applovin.exoplayer2.b.g
    public final void d(final e eVar) {
        final b.a f2 = f();
        a(f2, 1014, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda50
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                a.c(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public void d(final boolean z) {
        final b.a e2 = e();
        a(e2, 7, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda9
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, z);
            }
        });
    }

    protected final b.a e() {
        return a(this.f1208d.a());
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public final void e(final boolean z) {
        final b.a e2 = e();
        a(e2, 9, new p.a() { // from class: com.applovin.exoplayer2.a.a$$ExternalSyntheticLambda30
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, z);
            }
        });
    }
}
