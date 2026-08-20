package com.applovin.exoplayer2;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.SurfaceView;
import android.view.TextureView;
import com.applovin.exoplayer2.ah;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ao;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.z;
import com.applovin.exoplayer2.l.p;
import com.applovin.exoplayer2.q;
import com.applovin.exoplayer2.s;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r extends d {
    private av A;
    private com.applovin.exoplayer2.h.z B;
    private boolean C;
    private an.a D;
    private ac E;
    private ac F;
    private al G;
    private int H;
    private int I;
    private long J;

    /* renamed from: b  reason: collision with root package name */
    final com.applovin.exoplayer2.j.k f4039b;

    /* renamed from: c  reason: collision with root package name */
    final an.a f4040c;

    /* renamed from: d  reason: collision with root package name */
    private final ar[] f4041d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.exoplayer2.j.j f4042e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.o f4043f;

    /* renamed from: g  reason: collision with root package name */
    private final s.e f4044g;

    /* renamed from: h  reason: collision with root package name */
    private final s f4045h;
    private final com.applovin.exoplayer2.l.p<an.b> i;
    private final CopyOnWriteArraySet<q.a> j;
    private final ba.a k;
    private final List<a> l;
    private final boolean m;
    private final com.applovin.exoplayer2.h.r n;
    private final com.applovin.exoplayer2.a.a o;
    private final Looper p;
    private final com.applovin.exoplayer2.k.d q;
    private final long r;
    private final long s;
    private final com.applovin.exoplayer2.l.d t;
    private int u;
    private boolean v;
    private int w;
    private int x;
    private boolean y;
    private int z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements ag {

        /* renamed from: a  reason: collision with root package name */
        private final Object f4046a;

        /* renamed from: b  reason: collision with root package name */
        private ba f4047b;

        public a(Object obj, ba baVar) {
            this.f4046a = obj;
            this.f4047b = baVar;
        }

        @Override // com.applovin.exoplayer2.ag
        public Object a() {
            return this.f4046a;
        }

        @Override // com.applovin.exoplayer2.ag
        public ba b() {
            return this.f4047b;
        }
    }

    public r(ar[] arVarArr, com.applovin.exoplayer2.j.j jVar, com.applovin.exoplayer2.h.r rVar, aa aaVar, com.applovin.exoplayer2.k.d dVar, com.applovin.exoplayer2.a.a aVar, boolean z, av avVar, long j, long j2, z zVar, long j3, boolean z2, com.applovin.exoplayer2.l.d dVar2, Looper looper, an anVar, an.a aVar2) {
        com.applovin.exoplayer2.l.q.b("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.15.1] [" + com.applovin.exoplayer2.l.ai.f3785e + "]");
        com.applovin.exoplayer2.l.a.b(arVarArr.length > 0);
        this.f4041d = (ar[]) com.applovin.exoplayer2.l.a.b(arVarArr);
        this.f4042e = (com.applovin.exoplayer2.j.j) com.applovin.exoplayer2.l.a.b(jVar);
        this.n = rVar;
        this.q = dVar;
        this.o = aVar;
        this.m = z;
        this.A = avVar;
        this.r = j;
        this.s = j2;
        this.C = z2;
        this.p = looper;
        this.t = dVar2;
        this.u = 0;
        final an anVar2 = anVar != null ? anVar : this;
        this.i = new com.applovin.exoplayer2.l.p<>(looper, dVar2, new p.b() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda9
            @Override // com.applovin.exoplayer2.l.p.b
            public final void invoke(Object obj, com.applovin.exoplayer2.l.m mVar) {
                r.a(an.this, (an.b) obj, mVar);
            }
        });
        this.j = new CopyOnWriteArraySet<>();
        this.l = new ArrayList();
        this.B = new z.a(0);
        com.applovin.exoplayer2.j.k kVar = new com.applovin.exoplayer2.j.k(new at[arVarArr.length], new com.applovin.exoplayer2.j.d[arVarArr.length], null);
        this.f4039b = kVar;
        this.k = new ba.a();
        an.a a2 = new an.a.C0021a().a(1, 2, 12, 13, 14, 15, 16, 17, 18, 19).a(28, jVar.a()).a(aVar2).a();
        this.f4040c = a2;
        this.D = new an.a.C0021a().a(a2).a(3).a(9).a();
        this.E = ac.f1288a;
        this.F = ac.f1288a;
        this.H = -1;
        this.f4043f = dVar2.a(looper, null);
        s.e eVar = new s.e() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda10
            @Override // com.applovin.exoplayer2.s.e
            public final void onPlaybackInfoUpdate(s.d dVar3) {
                r.this.b(dVar3);
            }
        };
        this.f4044g = eVar;
        this.G = al.a(kVar);
        if (aVar != null) {
            aVar.a(anVar2, looper);
            a((an.d) aVar);
            dVar.a(new Handler(looper), aVar);
        }
        this.f4045h = new s(arVarArr, jVar, kVar, aaVar, dVar, this.u, this.v, aVar, avVar, zVar, j3, z2, looper, dVar2, eVar);
    }

    private int W() {
        return this.G.f1352a.d() ? this.H : this.G.f1352a.a(this.G.f1353b.f3085a, this.k).f1620c;
    }

    private void X() {
        an.a aVar = this.D;
        an.a a2 = a(this.f4040c);
        this.D = a2;
        if (a2.equals(aVar)) {
            return;
        }
        this.i.a(13, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda14
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                r.this.c((an.b) obj);
            }
        });
    }

    private ba Y() {
        return new ap(this.l, this.B);
    }

    private long a(al alVar) {
        return alVar.f1352a.d() ? h.b(this.J) : alVar.f1353b.a() ? alVar.s : a(alVar.f1352a, alVar.f1353b, alVar.s);
    }

    private long a(ba baVar, p.a aVar, long j) {
        baVar.a(aVar.f3085a, this.k);
        return j + this.k.c();
    }

    private Pair<Boolean, Integer> a(al alVar, al alVar2, boolean z, int i, boolean z2) {
        ba baVar = alVar2.f1352a;
        ba baVar2 = alVar.f1352a;
        if (baVar2.d() && baVar.d()) {
            return new Pair<>(false, -1);
        }
        int i2 = 3;
        if (baVar2.d() != baVar.d()) {
            return new Pair<>(true, 3);
        }
        if (baVar.a(baVar.a(alVar2.f1353b.f3085a, this.k).f1620c, this.f1964a).f1630b.equals(baVar2.a(baVar2.a(alVar.f1353b.f3085a, this.k).f1620c, this.f1964a).f1630b)) {
            return (z && i == 0 && alVar2.f1353b.f3088d < alVar.f1353b.f3088d) ? new Pair<>(true, 0) : new Pair<>(false, -1);
        }
        if (z && i == 0) {
            i2 = 1;
        } else if (z && i == 1) {
            i2 = 2;
        } else if (!z2) {
            throw new IllegalStateException();
        }
        return new Pair<>(true, Integer.valueOf(i2));
    }

    private Pair<Object, Long> a(ba baVar, int i, long j) {
        if (baVar.d()) {
            this.H = i;
            if (j == C.TIME_UNSET) {
                j = 0;
            }
            this.J = j;
            this.I = 0;
            return null;
        }
        if (i == -1 || i >= baVar.b()) {
            i = baVar.b(this.v);
            j = baVar.a(i, this.f1964a).a();
        }
        return baVar.a(this.f1964a, this.k, i, h.b(j));
    }

    private Pair<Object, Long> a(ba baVar, ba baVar2) {
        long N = N();
        if (baVar.d() || baVar2.d()) {
            boolean z = !baVar.d() && baVar2.d();
            int W = z ? -1 : W();
            if (z) {
                N = -9223372036854775807L;
            }
            return a(baVar2, W, N);
        }
        Pair<Object, Long> a2 = baVar.a(this.f1964a, this.k, G(), h.b(N));
        Object obj = ((Pair) com.applovin.exoplayer2.l.ai.a(a2)).first;
        if (baVar2.c(obj) != -1) {
            return a2;
        }
        Object a3 = s.a(this.f1964a, this.k, this.u, this.v, obj, baVar, baVar2);
        if (a3 != null) {
            baVar2.a(a3, this.k);
            return a(baVar2, this.k.f1620c, baVar2.a(this.k.f1620c, this.f1964a).a());
        }
        return a(baVar2, -1, C.TIME_UNSET);
    }

    private al a(int i, int i2) {
        com.applovin.exoplayer2.l.a.a(i >= 0 && i2 >= i && i2 <= this.l.size());
        int G = G();
        ba S = S();
        int size = this.l.size();
        this.w++;
        b(i, i2);
        ba Y = Y();
        al a2 = a(this.G, Y, a(S, Y));
        if (a2.f1356e != 1 && a2.f1356e != 4 && i < i2 && i2 == size && G >= a2.f1352a.b()) {
            a2 = a2.a(4);
        }
        this.f4045h.a(i, i2, this.B);
        return a2;
    }

    private al a(al alVar, ba baVar, Pair<Object, Long> pair) {
        int i;
        long j;
        com.applovin.exoplayer2.l.a.a(baVar.d() || pair != null);
        ba baVar2 = alVar.f1352a;
        al a2 = alVar.a(baVar);
        if (baVar.d()) {
            p.a a3 = al.a();
            long b2 = h.b(this.J);
            al a4 = a2.a(a3, b2, b2, b2, 0L, com.applovin.exoplayer2.h.ad.f3008a, this.f4039b, com.applovin.exoplayer2.common.a.s.g()).a(a3);
            a4.q = a4.s;
            return a4;
        }
        Object obj = a2.f1353b.f3085a;
        boolean z = !obj.equals(((Pair) com.applovin.exoplayer2.l.ai.a(pair)).first);
        p.a aVar = z ? new p.a(pair.first) : a2.f1353b;
        long longValue = ((Long) pair.second).longValue();
        long b3 = h.b(N());
        if (!baVar2.d()) {
            b3 -= baVar2.a(obj, this.k).c();
        }
        if (z || longValue < b3) {
            com.applovin.exoplayer2.l.a.b(!aVar.a());
            al a5 = a2.a(aVar, longValue, longValue, longValue, 0L, z ? com.applovin.exoplayer2.h.ad.f3008a : a2.f1359h, z ? this.f4039b : a2.i, z ? com.applovin.exoplayer2.common.a.s.g() : a2.j).a(aVar);
            a5.q = longValue;
            return a5;
        }
        if (i == 0) {
            int c2 = baVar.c(a2.k.f3085a);
            if (c2 == -1 || baVar.a(c2, this.k).f1620c != baVar.a(aVar.f3085a, this.k).f1620c) {
                baVar.a(aVar.f3085a, this.k);
                j = aVar.a() ? this.k.b(aVar.f3086b, aVar.f3087c) : this.k.f1621d;
                a2 = a2.a(aVar, a2.s, a2.s, a2.f1355d, j - a2.s, a2.f1359h, a2.i, a2.j).a(aVar);
            }
            return a2;
        }
        com.applovin.exoplayer2.l.a.b(!aVar.a());
        long max = Math.max(0L, a2.r - (longValue - b3));
        j = a2.q;
        if (a2.k.equals(a2.f1353b)) {
            j = longValue + max;
        }
        a2 = a2.a(aVar, longValue, longValue, longValue, max, a2.f1359h, a2.i, a2.j);
        a2.q = j;
        return a2;
    }

    private an.e a(int i, al alVar, int i2) {
        int i3;
        Object obj;
        ab abVar;
        Object obj2;
        int i4;
        long j;
        long j2;
        ba.a aVar = new ba.a();
        if (alVar.f1352a.d()) {
            i3 = i2;
            obj = null;
            abVar = null;
            obj2 = null;
            i4 = -1;
        } else {
            Object obj3 = alVar.f1353b.f3085a;
            alVar.f1352a.a(obj3, aVar);
            int i5 = aVar.f1620c;
            int c2 = alVar.f1352a.c(obj3);
            Object obj4 = alVar.f1352a.a(i5, this.f1964a).f1630b;
            abVar = this.f1964a.f1632d;
            obj2 = obj3;
            i4 = c2;
            obj = obj4;
            i3 = i5;
        }
        if (i == 0) {
            j = aVar.f1622e + aVar.f1621d;
            if (alVar.f1353b.a()) {
                j = aVar.b(alVar.f1353b.f3086b, alVar.f1353b.f3087c);
                j2 = b(alVar);
            } else {
                if (alVar.f1353b.f3089e != -1 && this.G.f1353b.a()) {
                    j = b(this.G);
                }
                j2 = j;
            }
        } else if (alVar.f1353b.a()) {
            j = alVar.s;
            j2 = b(alVar);
        } else {
            j = aVar.f1622e + alVar.s;
            j2 = j;
        }
        return new an.e(obj, i3, abVar, obj2, i4, h.a(j), h.a(j2), alVar.f1353b.f3086b, alVar.f1353b.f3087c);
    }

    private List<ah.c> a(int i, List<com.applovin.exoplayer2.h.p> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ah.c cVar = new ah.c(list.get(i2), this.m);
            arrayList.add(cVar);
            this.l.add(i2 + i, new a(cVar.f1344b, cVar.f1343a.f()));
        }
        this.B = this.B.a(i, arrayList.size());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i, an.e eVar, an.e eVar2, an.b bVar) {
        bVar.e(i);
        bVar.a(eVar, eVar2, i);
    }

    private void a(final al alVar, final int i, final int i2, boolean z, boolean z2, final int i3, long j, int i4) {
        al alVar2 = this.G;
        this.G = alVar;
        Pair<Boolean, Integer> a2 = a(alVar, alVar2, z2, i3, !alVar2.f1352a.equals(alVar.f1352a));
        boolean booleanValue = ((Boolean) a2.first).booleanValue();
        final int intValue = ((Integer) a2.second).intValue();
        ac acVar = this.E;
        if (booleanValue) {
            r3 = alVar.f1352a.d() ? null : alVar.f1352a.a(alVar.f1352a.a(alVar.f1353b.f3085a, this.k).f1620c, this.f1964a).f1632d;
            acVar = r3 != null ? r3.f1234e : ac.f1288a;
        }
        if (!alVar2.j.equals(alVar.j)) {
            acVar = acVar.a().a(alVar.j).a();
        }
        boolean z3 = !acVar.equals(this.E);
        this.E = acVar;
        if (!alVar2.f1352a.equals(alVar.f1352a)) {
            this.i.a(0, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda15
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.b(al.this, i, (an.b) obj);
                }
            });
        }
        if (z2) {
            final an.e a3 = a(i3, alVar2, i4);
            final an.e c2 = c(j);
            this.i.a(11, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda21
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.a(i3, a3, c2, (an.b) obj);
                }
            });
        }
        if (booleanValue) {
            this.i.a(1, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda22
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    ((an.b) obj).a(ab.this, intValue);
                }
            });
        }
        if (alVar2.f1357f != alVar.f1357f) {
            this.i.a(10, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda1
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.h(al.this, (an.b) obj);
                }
            });
            if (alVar.f1357f != null) {
                this.i.a(10, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda2
                    @Override // com.applovin.exoplayer2.l.p.a
                    public final void invoke(Object obj) {
                        r.g(al.this, (an.b) obj);
                    }
                });
            }
        }
        if (alVar2.i != alVar.i) {
            this.f4042e.a(alVar.i.f3570d);
            final com.applovin.exoplayer2.j.h hVar = new com.applovin.exoplayer2.j.h(alVar.i.f3569c);
            this.i.a(2, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda3
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.a(al.this, hVar, (an.b) obj);
                }
            });
        }
        if (z3) {
            final ac acVar2 = this.E;
            this.i.a(14, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda4
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    ((an.b) obj).a(ac.this);
                }
            });
        }
        if (alVar2.f1358g != alVar.f1358g) {
            this.i.a(3, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda5
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.f(al.this, (an.b) obj);
                }
            });
        }
        if (alVar2.f1356e != alVar.f1356e || alVar2.l != alVar.l) {
            this.i.a(-1, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda6
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.e(al.this, (an.b) obj);
                }
            });
        }
        if (alVar2.f1356e != alVar.f1356e) {
            this.i.a(4, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda7
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.d(al.this, (an.b) obj);
                }
            });
        }
        if (alVar2.l != alVar.l) {
            this.i.a(5, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda16
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.a(al.this, i2, (an.b) obj);
                }
            });
        }
        if (alVar2.m != alVar.m) {
            this.i.a(6, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda17
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.c(al.this, (an.b) obj);
                }
            });
        }
        if (c(alVar2) != c(alVar)) {
            this.i.a(7, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda18
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.b(al.this, (an.b) obj);
                }
            });
        }
        if (!alVar2.n.equals(alVar.n)) {
            this.i.a(12, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda19
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.a(al.this, (an.b) obj);
                }
            });
        }
        if (z) {
            this.i.a(-1, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda20
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    ((an.b) obj).b();
                }
            });
        }
        X();
        this.i.a();
        if (alVar2.o != alVar.o) {
            Iterator<q.a> it = this.j.iterator();
            while (it.hasNext()) {
                it.next().a(alVar.o);
            }
        }
        if (alVar2.p != alVar.p) {
            Iterator<q.a> it2 = this.j.iterator();
            while (it2.hasNext()) {
                it2.next().b(alVar.p);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(al alVar, int i, an.b bVar) {
        bVar.b(alVar.l, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(al alVar, an.b bVar) {
        bVar.a(alVar.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(al alVar, com.applovin.exoplayer2.j.h hVar, an.b bVar) {
        bVar.a(alVar.f1359h, hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(an anVar, an.b bVar, com.applovin.exoplayer2.l.m mVar) {
        bVar.a(anVar, new an.c(mVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void c(s.d dVar) {
        long j;
        boolean z;
        this.w -= dVar.f4070b;
        boolean z2 = true;
        if (dVar.f4071c) {
            this.x = dVar.f4072d;
            this.y = true;
        }
        if (dVar.f4073e) {
            this.z = dVar.f4074f;
        }
        if (this.w == 0) {
            ba baVar = dVar.f4069a.f1352a;
            if (!this.G.f1352a.d() && baVar.d()) {
                this.H = -1;
                this.J = 0L;
                this.I = 0;
            }
            if (!baVar.d()) {
                List<ba> a2 = ((ap) baVar).a();
                com.applovin.exoplayer2.l.a.b(a2.size() == this.l.size());
                for (int i = 0; i < a2.size(); i++) {
                    this.l.get(i).f4047b = a2.get(i);
                }
            }
            boolean z3 = this.y;
            long j2 = C.TIME_UNSET;
            if (z3) {
                if (dVar.f4069a.f1353b.equals(this.G.f1353b) && dVar.f4069a.f1355d == this.G.s) {
                    z2 = false;
                }
                if (z2) {
                    j2 = (baVar.d() || dVar.f4069a.f1353b.a()) ? dVar.f4069a.f1355d : a(baVar, dVar.f4069a.f1353b, dVar.f4069a.f1355d);
                }
                j = j2;
                z = z2;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.y = false;
            a(dVar.f4069a, 1, this.z, false, z, this.x, j, -1);
        }
    }

    private void a(List<com.applovin.exoplayer2.h.p> list, int i, long j, boolean z) {
        int i2;
        long j2;
        int W = W();
        long I = I();
        boolean z2 = true;
        this.w++;
        if (!this.l.isEmpty()) {
            b(0, this.l.size());
        }
        List<ah.c> a2 = a(0, list);
        ba Y = Y();
        if (!Y.d() && i >= Y.b()) {
            throw new y(Y, i, j);
        }
        if (z) {
            int b2 = Y.b(this.v);
            j2 = C.TIME_UNSET;
            i2 = b2;
        } else if (i == -1) {
            i2 = W;
            j2 = I;
        } else {
            i2 = i;
            j2 = j;
        }
        al a3 = a(this.G, Y, a(Y, i2, j2));
        int i3 = a3.f1356e;
        if (i2 != -1 && a3.f1356e != 1) {
            i3 = (Y.d() || i2 >= Y.b()) ? 4 : 2;
        }
        al a4 = a3.a(i3);
        this.f4045h.a(a2, i2, h.b(j2), this.B);
        if (this.G.f1353b.f3085a.equals(a4.f1353b.f3085a) || this.G.f1352a.d()) {
            z2 = false;
        }
        a(a4, 0, 1, false, z2, 4, a(a4), -1);
    }

    private static long b(al alVar) {
        ba.c cVar = new ba.c();
        ba.a aVar = new ba.a();
        alVar.f1352a.a(alVar.f1353b.f3085a, aVar);
        return alVar.f1354c == C.TIME_UNSET ? alVar.f1352a.a(aVar.f1620c, cVar).b() : aVar.c() + alVar.f1354c;
    }

    private void b(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            this.l.remove(i3);
        }
        this.B = this.B.b(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(al alVar, int i, an.b bVar) {
        bVar.a(alVar.f1352a, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(al alVar, an.b bVar) {
        bVar.d(c(alVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final s.d dVar) {
        this.f4043f.a(new Runnable() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                r.this.c(dVar);
            }
        });
    }

    private an.e c(long j) {
        ab abVar;
        Object obj;
        int i;
        Object obj2;
        int G = G();
        if (this.G.f1352a.d()) {
            abVar = null;
            obj = null;
            i = -1;
            obj2 = null;
        } else {
            Object obj3 = this.G.f1353b.f3085a;
            this.G.f1352a.a(obj3, this.k);
            i = this.G.f1352a.c(obj3);
            obj2 = this.G.f1352a.a(G, this.f1964a).f1630b;
            abVar = this.f1964a.f1632d;
            obj = obj3;
        }
        long a2 = h.a(j);
        return new an.e(obj2, G, abVar, obj, i, a2, this.G.f1353b.a() ? h.a(b(this.G)) : a2, this.G.f1353b.f3086b, this.G.f1353b.f3087c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(al alVar, an.b bVar) {
        bVar.c(alVar.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(an.b bVar) {
        bVar.a(this.D);
    }

    private static boolean c(al alVar) {
        return alVar.f1356e == 3 && alVar.l && alVar.m == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(al alVar, an.b bVar) {
        bVar.b(alVar.f1356e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(an.b bVar) {
        bVar.a(this.E);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(al alVar, an.b bVar) {
        bVar.a(alVar.l, alVar.f1356e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(an.b bVar) {
        bVar.a(p.a(new u(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(al alVar, an.b bVar) {
        bVar.c(alVar.f1358g);
        bVar.b_(alVar.f1358g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(al alVar, an.b bVar) {
        bVar.a(alVar.f1357f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(al alVar, an.b bVar) {
        bVar.b(alVar.f1357f);
    }

    @Override // com.applovin.exoplayer2.an
    public long A() {
        return this.r;
    }

    @Override // com.applovin.exoplayer2.an
    public long B() {
        return this.s;
    }

    @Override // com.applovin.exoplayer2.an
    public long C() {
        return C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
    }

    @Override // com.applovin.exoplayer2.an
    public am D() {
        return this.G.n;
    }

    public void E() {
        com.applovin.exoplayer2.l.q.b("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.15.1] [" + com.applovin.exoplayer2.l.ai.f3785e + "] [" + t.a() + "]");
        if (!this.f4045h.c()) {
            this.i.b(10, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda13
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    r.e((an.b) obj);
                }
            });
        }
        this.i.b();
        this.f4043f.a((Object) null);
        com.applovin.exoplayer2.a.a aVar = this.o;
        if (aVar != null) {
            this.q.a(aVar);
        }
        al a2 = this.G.a(1);
        this.G = a2;
        al a3 = a2.a(a2.f1353b);
        this.G = a3;
        a3.q = a3.s;
        this.G.r = 0L;
    }

    @Override // com.applovin.exoplayer2.an
    public int F() {
        return this.G.f1352a.d() ? this.I : this.G.f1352a.c(this.G.f1353b.f3085a);
    }

    @Override // com.applovin.exoplayer2.an
    public int G() {
        int W = W();
        if (W == -1) {
            return 0;
        }
        return W;
    }

    @Override // com.applovin.exoplayer2.an
    public long H() {
        if (K()) {
            p.a aVar = this.G.f1353b;
            this.G.f1352a.a(aVar.f3085a, this.k);
            return h.a(this.k.b(aVar.f3086b, aVar.f3087c));
        }
        return p();
    }

    @Override // com.applovin.exoplayer2.an
    public long I() {
        return h.a(a(this.G));
    }

    @Override // com.applovin.exoplayer2.an
    public long J() {
        return h.a(this.G.r);
    }

    @Override // com.applovin.exoplayer2.an
    public boolean K() {
        return this.G.f1353b.a();
    }

    @Override // com.applovin.exoplayer2.an
    public int L() {
        if (K()) {
            return this.G.f1353b.f3086b;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.an
    public int M() {
        if (K()) {
            return this.G.f1353b.f3087c;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.an
    public long N() {
        if (K()) {
            this.G.f1352a.a(this.G.f1353b.f3085a, this.k);
            return this.G.f1354c == C.TIME_UNSET ? this.G.f1352a.a(G(), this.f1964a).a() : this.k.b() + h.a(this.G.f1354c);
        }
        return I();
    }

    @Override // com.applovin.exoplayer2.an
    public long O() {
        if (this.G.f1352a.d()) {
            return this.J;
        }
        if (this.G.k.f3088d != this.G.f1353b.f3088d) {
            return this.G.f1352a.a(G(), this.f1964a).c();
        }
        long j = this.G.q;
        if (this.G.k.a()) {
            ba.a a2 = this.G.f1352a.a(this.G.k.f3085a, this.k);
            long a3 = a2.a(this.G.k.f3086b);
            j = a3 == Long.MIN_VALUE ? a2.f1621d : a3;
        }
        return h.a(a(this.G.f1352a, this.G.k, j));
    }

    @Override // com.applovin.exoplayer2.an
    public com.applovin.exoplayer2.h.ad P() {
        return this.G.f1359h;
    }

    @Override // com.applovin.exoplayer2.an
    public com.applovin.exoplayer2.j.h Q() {
        return new com.applovin.exoplayer2.j.h(this.G.i.f3569c);
    }

    @Override // com.applovin.exoplayer2.an
    public ac R() {
        return this.E;
    }

    @Override // com.applovin.exoplayer2.an
    public ba S() {
        return this.G.f1352a;
    }

    @Override // com.applovin.exoplayer2.an
    public com.applovin.exoplayer2.m.o T() {
        return com.applovin.exoplayer2.m.o.f4012a;
    }

    @Override // com.applovin.exoplayer2.an
    /* renamed from: U */
    public com.applovin.exoplayer2.common.a.s<com.applovin.exoplayer2.i.a> V() {
        return com.applovin.exoplayer2.common.a.s.g();
    }

    public ao a(ao.b bVar) {
        return new ao(this.f4045h, bVar, this.G.f1352a, G(), this.t, this.f4045h.d());
    }

    @Override // com.applovin.exoplayer2.an
    public void a(int i, long j) {
        ba baVar = this.G.f1352a;
        if (i < 0 || (!baVar.d() && i >= baVar.b())) {
            throw new y(baVar, i, j);
        }
        this.w++;
        if (K()) {
            com.applovin.exoplayer2.l.q.c("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            s.d dVar = new s.d(this.G);
            dVar.a(1);
            this.f4044g.onPlaybackInfoUpdate(dVar);
            return;
        }
        int i2 = t() != 1 ? 2 : 1;
        int G = G();
        al a2 = a(this.G.a(i2), baVar, a(baVar, i, j));
        this.f4045h.a(baVar, i, h.b(j));
        a(a2, 0, 1, true, true, 1, a(a2), G);
    }

    @Override // com.applovin.exoplayer2.an
    public void a(SurfaceView surfaceView) {
    }

    @Override // com.applovin.exoplayer2.an
    public void a(TextureView textureView) {
    }

    public void a(an.b bVar) {
        this.i.a((com.applovin.exoplayer2.l.p<an.b>) bVar);
    }

    @Override // com.applovin.exoplayer2.an
    public void a(an.d dVar) {
        a((an.b) dVar);
    }

    public void a(com.applovin.exoplayer2.g.a aVar) {
        ac a2 = this.E.a().a(aVar).a();
        if (a2.equals(this.E)) {
            return;
        }
        this.E = a2;
        this.i.b(14, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda11
            @Override // com.applovin.exoplayer2.l.p.a
            public final void invoke(Object obj) {
                r.this.d((an.b) obj);
            }
        });
    }

    public void a(com.applovin.exoplayer2.h.p pVar) {
        a(Collections.singletonList(pVar));
    }

    public void a(q.a aVar) {
        this.j.add(aVar);
    }

    public void a(List<com.applovin.exoplayer2.h.p> list) {
        a(list, true);
    }

    public void a(List<com.applovin.exoplayer2.h.p> list, boolean z) {
        a(list, -1, C.TIME_UNSET, z);
    }

    @Override // com.applovin.exoplayer2.an
    public void a(boolean z) {
        a(z, 0, 1);
    }

    public void a(boolean z, int i, int i2) {
        if (this.G.l == z && this.G.m == i) {
            return;
        }
        this.w++;
        al a2 = this.G.a(z, i);
        this.f4045h.a(z, i);
        a(a2, 0, i2, false, false, 5, C.TIME_UNSET, -1);
    }

    public void a(boolean z, p pVar) {
        al a2;
        if (z) {
            a2 = a(0, this.l.size()).a((p) null);
        } else {
            al alVar = this.G;
            a2 = alVar.a(alVar.f1353b);
            a2.q = a2.s;
            a2.r = 0L;
        }
        al a3 = a2.a(1);
        if (pVar != null) {
            a3 = a3.a(pVar);
        }
        al alVar2 = a3;
        this.w++;
        this.f4045h.b();
        a(alVar2, 0, 1, false, alVar2.f1352a.d() && !this.G.f1352a.d(), 4, a(alVar2), -1);
    }

    public void b(long j) {
        this.f4045h.a(j);
    }

    @Override // com.applovin.exoplayer2.an
    public void b(SurfaceView surfaceView) {
    }

    @Override // com.applovin.exoplayer2.an
    public void b(TextureView textureView) {
    }

    public void b(an.b bVar) {
        this.i.b(bVar);
    }

    @Override // com.applovin.exoplayer2.an
    public void b(an.d dVar) {
        b((an.b) dVar);
    }

    @Override // com.applovin.exoplayer2.an
    public void b(final boolean z) {
        if (this.v != z) {
            this.v = z;
            this.f4045h.a(z);
            this.i.a(9, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda12
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    ((an.b) obj).e(z);
                }
            });
            X();
            this.i.a();
        }
    }

    @Override // com.applovin.exoplayer2.an
    public void c(final int i) {
        if (this.u != i) {
            this.u = i;
            this.f4045h.a(i);
            this.i.a(8, new p.a() { // from class: com.applovin.exoplayer2.r$$ExternalSyntheticLambda8
                @Override // com.applovin.exoplayer2.l.p.a
                public final void invoke(Object obj) {
                    ((an.b) obj).d(i);
                }
            });
            X();
            this.i.a();
        }
    }

    public boolean q() {
        return this.G.p;
    }

    @Override // com.applovin.exoplayer2.an
    public Looper r() {
        return this.p;
    }

    @Override // com.applovin.exoplayer2.an
    public an.a s() {
        return this.D;
    }

    @Override // com.applovin.exoplayer2.an
    public int t() {
        return this.G.f1356e;
    }

    @Override // com.applovin.exoplayer2.an
    public int u() {
        return this.G.m;
    }

    @Override // com.applovin.exoplayer2.an, com.applovin.exoplayer2.q
    /* renamed from: v */
    public p e() {
        return this.G.f1357f;
    }

    @Override // com.applovin.exoplayer2.an
    public void w() {
        if (this.G.f1356e != 1) {
            return;
        }
        al a2 = this.G.a((p) null);
        al a3 = a2.a(a2.f1352a.d() ? 4 : 2);
        this.w++;
        this.f4045h.a();
        a(a3, 1, 1, false, false, 5, C.TIME_UNSET, -1);
    }

    @Override // com.applovin.exoplayer2.an
    public boolean x() {
        return this.G.l;
    }

    @Override // com.applovin.exoplayer2.an
    public int y() {
        return this.u;
    }

    @Override // com.applovin.exoplayer2.an
    public boolean z() {
        return this.v;
    }
}
