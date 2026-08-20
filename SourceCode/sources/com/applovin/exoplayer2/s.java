package com.applovin.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ah;
import com.applovin.exoplayer2.ao;
import com.applovin.exoplayer2.ar;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.common.base.Supplier;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.h.n;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.j.j;
import com.applovin.exoplayer2.m;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s implements Handler.Callback, ah.d, ao.a, n.a, j.a, m.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private g K;
    private long L;
    private int M;
    private boolean N;
    private p O;
    private long P;

    /* renamed from: a  reason: collision with root package name */
    private final ar[] f4048a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<ar> f4049b;

    /* renamed from: c  reason: collision with root package name */
    private final as[] f4050c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.exoplayer2.j.j f4051d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.exoplayer2.j.k f4052e;

    /* renamed from: f  reason: collision with root package name */
    private final aa f4053f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.d f4054g;

    /* renamed from: h  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.o f4055h;
    private final HandlerThread i;
    private final Looper j;
    private final ba.c k;
    private final ba.a l;
    private final long m;
    private final boolean n;
    private final m o;
    private final ArrayList<c> p;
    private final com.applovin.exoplayer2.l.d q;
    private final e r;
    private final af s;
    private final ah t;
    private final z u;
    private final long v;
    private av w;
    private al x;
    private d y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<ah.c> f4057a;

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.exoplayer2.h.z f4058b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4059c;

        /* renamed from: d  reason: collision with root package name */
        private final long f4060d;

        private a(List<ah.c> list, com.applovin.exoplayer2.h.z zVar, int i, long j) {
            this.f4057a = list;
            this.f4058b = zVar;
            this.f4059c = i;
            this.f4060d = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f4061a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4062b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4063c;

        /* renamed from: d  reason: collision with root package name */
        public final com.applovin.exoplayer2.h.z f4064d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        public final ao f4065a;

        /* renamed from: b  reason: collision with root package name */
        public int f4066b;

        /* renamed from: c  reason: collision with root package name */
        public long f4067c;

        /* renamed from: d  reason: collision with root package name */
        public Object f4068d;

        public c(ao aoVar) {
            this.f4065a = aoVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            Object obj = this.f4068d;
            if ((obj == null) != (cVar.f4068d == null)) {
                return obj != null ? -1 : 1;
            } else if (obj == null) {
                return 0;
            } else {
                int i = this.f4066b - cVar.f4066b;
                return i != 0 ? i : com.applovin.exoplayer2.l.ai.a(this.f4067c, cVar.f4067c);
            }
        }

        public void a(int i, long j, Object obj) {
            this.f4066b = i;
            this.f4067c = j;
            this.f4068d = obj;
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public al f4069a;

        /* renamed from: b  reason: collision with root package name */
        public int f4070b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f4071c;

        /* renamed from: d  reason: collision with root package name */
        public int f4072d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f4073e;

        /* renamed from: f  reason: collision with root package name */
        public int f4074f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f4075g;

        public d(al alVar) {
            this.f4069a = alVar;
        }

        public void a(int i) {
            this.f4075g |= i > 0;
            this.f4070b += i;
        }

        public void a(al alVar) {
            this.f4075g |= this.f4069a != alVar;
            this.f4069a = alVar;
        }

        public void b(int i) {
            if (this.f4071c && this.f4072d != 5) {
                com.applovin.exoplayer2.l.a.a(i == 5);
                return;
            }
            this.f4075g = true;
            this.f4071c = true;
            this.f4072d = i;
        }

        public void c(int i) {
            this.f4075g = true;
            this.f4073e = true;
            this.f4074f = i;
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        void onPlaybackInfoUpdate(d dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final p.a f4076a;

        /* renamed from: b  reason: collision with root package name */
        public final long f4077b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4078c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f4079d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f4080e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f4081f;

        public f(p.a aVar, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.f4076a = aVar;
            this.f4077b = j;
            this.f4078c = j2;
            this.f4079d = z;
            this.f4080e = z2;
            this.f4081f = z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final ba f4082a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4083b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4084c;

        public g(ba baVar, int i, long j) {
            this.f4082a = baVar;
            this.f4083b = i;
            this.f4084c = j;
        }
    }

    public s(ar[] arVarArr, com.applovin.exoplayer2.j.j jVar, com.applovin.exoplayer2.j.k kVar, aa aaVar, com.applovin.exoplayer2.k.d dVar, int i, boolean z, com.applovin.exoplayer2.a.a aVar, av avVar, z zVar, long j, boolean z2, Looper looper, com.applovin.exoplayer2.l.d dVar2, e eVar) {
        this.r = eVar;
        this.f4048a = arVarArr;
        this.f4051d = jVar;
        this.f4052e = kVar;
        this.f4053f = aaVar;
        this.f4054g = dVar;
        this.E = i;
        this.F = z;
        this.w = avVar;
        this.u = zVar;
        this.v = j;
        this.P = j;
        this.A = z2;
        this.q = dVar2;
        this.m = aaVar.e();
        this.n = aaVar.f();
        this.x = al.a(kVar);
        this.y = new d(this.x);
        this.f4050c = new as[arVarArr.length];
        for (int i2 = 0; i2 < arVarArr.length; i2++) {
            arVarArr[i2].a(i2);
            this.f4050c[i2] = arVarArr[i2].b();
        }
        this.o = new m(this, dVar2);
        this.p = new ArrayList<>();
        this.f4049b = com.applovin.exoplayer2.common.a.aq.b();
        this.k = new ba.c();
        this.l = new ba.a();
        jVar.a(this, dVar);
        this.N = true;
        Handler handler = new Handler(looper);
        this.s = new af(aVar, handler);
        this.t = new ah(this, aVar, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.i = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.j = looper2;
        this.f4055h = dVar2.a(looper2, this);
    }

    private void A() {
        ad c2 = this.s.c();
        this.B = c2 != null && c2.f1309f.f1319h && this.A;
    }

    private boolean B() {
        ad c2;
        ad g2;
        return J() && !this.B && (c2 = this.s.c()) != null && (g2 = c2.g()) != null && this.L >= g2.b() && g2.f1310g;
    }

    private boolean C() {
        ad d2 = this.s.d();
        if (d2.f1307d) {
            int i = 0;
            while (true) {
                ar[] arVarArr = this.f4048a;
                if (i >= arVarArr.length) {
                    return true;
                }
                ar arVar = arVarArr[i];
                com.applovin.exoplayer2.h.x xVar = d2.f1306c[i];
                if (arVar.f() != xVar || (xVar != null && !arVar.g() && !a(arVar, d2))) {
                    break;
                }
                i++;
            }
            return false;
        }
        return false;
    }

    private void D() {
        boolean E = E();
        this.D = E;
        if (E) {
            this.s.b().e(this.L);
        }
        G();
    }

    private boolean E() {
        if (F()) {
            ad b2 = this.s.b();
            return this.f4053f.a(b2 == this.s.c() ? b2.b(this.L) : b2.b(this.L) - b2.f1309f.f1313b, d(b2.e()), this.o.d().f1362b);
        }
        return false;
    }

    private boolean F() {
        ad b2 = this.s.b();
        return (b2 == null || b2.e() == Long.MIN_VALUE) ? false : true;
    }

    private void G() {
        ad b2 = this.s.b();
        boolean z = this.D || (b2 != null && b2.f1304a.f());
        if (z != this.x.f1358g) {
            this.x = this.x.a(z);
        }
    }

    private void H() throws p {
        a(new boolean[this.f4048a.length]);
    }

    private long I() {
        return d(this.x.q);
    }

    private boolean J() {
        return this.x.l && this.x.m == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean K() {
        return Boolean.valueOf(this.z);
    }

    private long a(ba baVar, Object obj, long j) {
        baVar.a(baVar.a(obj, this.l).f1620c, this.k);
        return (this.k.f1635g != C.TIME_UNSET && this.k.e() && this.k.j) ? h.b(this.k.d() - this.k.f1635g) - (j + this.l.c()) : C.TIME_UNSET;
    }

    private long a(p.a aVar, long j, boolean z) throws p {
        return a(aVar, j, this.s.c() != this.s.d(), z);
    }

    private long a(p.a aVar, long j, boolean z, boolean z2) throws p {
        j();
        this.C = false;
        if (z2 || this.x.f1356e == 3) {
            b(2);
        }
        ad c2 = this.s.c();
        ad adVar = c2;
        while (adVar != null && !aVar.equals(adVar.f1309f.f1312a)) {
            adVar = adVar.g();
        }
        if (z || c2 != adVar || (adVar != null && adVar.a(j) < 0)) {
            for (ar arVar : this.f4048a) {
                b(arVar);
            }
            if (adVar != null) {
                while (this.s.c() != adVar) {
                    this.s.f();
                }
                this.s.a(adVar);
                adVar.c(0L);
                H();
            }
        }
        af afVar = this.s;
        if (adVar != null) {
            afVar.a(adVar);
            if (!adVar.f1307d) {
                adVar.f1309f = adVar.f1309f.a(j);
            } else if (adVar.f1308e) {
                long b2 = adVar.f1304a.b(j);
                adVar.f1304a.a(b2 - this.m, this.n);
                j = b2;
            }
            b(j);
            D();
        } else {
            afVar.g();
            b(j);
        }
        h(false);
        this.f4055h.c(2);
        return j;
    }

    private Pair<p.a, Long> a(ba baVar) {
        if (baVar.d()) {
            return Pair.create(al.a(), 0L);
        }
        Pair<Object, Long> a2 = baVar.a(this.k, this.l, baVar.b(this.F), C.TIME_UNSET);
        p.a a3 = this.s.a(baVar, a2.first, 0L);
        long longValue = ((Long) a2.second).longValue();
        if (a3.a()) {
            baVar.a(a3.f3085a, this.l);
            longValue = a3.f3087c == this.l.b(a3.f3086b) ? this.l.f() : 0L;
        }
        return Pair.create(a3, Long.valueOf(longValue));
    }

    private static Pair<Object, Long> a(ba baVar, g gVar, boolean z, int i, boolean z2, ba.c cVar, ba.a aVar) {
        Pair<Object, Long> a2;
        Object a3;
        ba baVar2 = gVar.f4082a;
        if (baVar.d()) {
            return null;
        }
        ba baVar3 = baVar2.d() ? baVar : baVar2;
        try {
            a2 = baVar3.a(cVar, aVar, gVar.f4083b, gVar.f4084c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (baVar.equals(baVar3)) {
            return a2;
        }
        if (baVar.c(a2.first) != -1) {
            return (baVar3.a(a2.first, aVar).f1623f && baVar3.a(aVar.f1620c, cVar).p == baVar3.c(a2.first)) ? baVar.a(cVar, aVar, baVar.a(a2.first, aVar).f1620c, gVar.f4084c) : a2;
        }
        if (z && (a3 = a(cVar, aVar, i, z2, a2.first, baVar3, baVar)) != null) {
            return baVar.a(cVar, aVar, baVar.a(a3, aVar).f1620c, C.TIME_UNSET);
        }
        return null;
    }

    private al a(p.a aVar, long j, long j2, long j3, boolean z, int i) {
        com.applovin.exoplayer2.h.ad adVar;
        com.applovin.exoplayer2.j.k kVar;
        List list;
        this.N = (!this.N && j == this.x.s && aVar.equals(this.x.f1353b)) ? false : true;
        A();
        com.applovin.exoplayer2.h.ad adVar2 = this.x.f1359h;
        com.applovin.exoplayer2.j.k kVar2 = this.x.i;
        List list2 = this.x.j;
        if (this.t.a()) {
            ad c2 = this.s.c();
            com.applovin.exoplayer2.h.ad h2 = c2 == null ? com.applovin.exoplayer2.h.ad.f3008a : c2.h();
            com.applovin.exoplayer2.j.k i2 = c2 == null ? this.f4052e : c2.i();
            List a2 = a(i2.f3569c);
            if (c2 != null && c2.f1309f.f1314c != j2) {
                c2.f1309f = c2.f1309f.b(j2);
            }
            adVar = h2;
            kVar = i2;
            list = a2;
        } else {
            if (!aVar.equals(this.x.f1353b)) {
                adVar2 = com.applovin.exoplayer2.h.ad.f3008a;
                kVar2 = this.f4052e;
                list2 = com.applovin.exoplayer2.common.a.s.g();
            }
            adVar = adVar2;
            kVar = kVar2;
            list = list2;
        }
        if (z) {
            this.y.b(i);
        }
        return this.x.a(aVar, j, j2, j3, I(), adVar, kVar, list);
    }

    private com.applovin.exoplayer2.common.a.s<com.applovin.exoplayer2.g.a> a(com.applovin.exoplayer2.j.d[] dVarArr) {
        s.a aVar = new s.a();
        boolean z = false;
        for (com.applovin.exoplayer2.j.d dVar : dVarArr) {
            if (dVar != null) {
                v a2 = dVar.a(0);
                if (a2.j == null) {
                    aVar.a(new com.applovin.exoplayer2.g.a(new a.InterfaceC0042a[0]));
                } else {
                    aVar.a(a2.j);
                    z = true;
                }
            }
        }
        return z ? aVar.a() : com.applovin.exoplayer2.common.a.s.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.applovin.exoplayer2.s.f a(com.applovin.exoplayer2.ba r30, com.applovin.exoplayer2.al r31, com.applovin.exoplayer2.s.g r32, com.applovin.exoplayer2.af r33, int r34, boolean r35, com.applovin.exoplayer2.ba.c r36, com.applovin.exoplayer2.ba.a r37) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.s.a(com.applovin.exoplayer2.ba, com.applovin.exoplayer2.al, com.applovin.exoplayer2.s$g, com.applovin.exoplayer2.af, int, boolean, com.applovin.exoplayer2.ba$c, com.applovin.exoplayer2.ba$a):com.applovin.exoplayer2.s$f");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(ba.c cVar, ba.a aVar, int i, boolean z, Object obj, ba baVar, ba baVar2) {
        int c2 = baVar.c(obj);
        int c3 = baVar.c();
        int i2 = c2;
        int i3 = -1;
        for (int i4 = 0; i4 < c3 && i3 == -1; i4++) {
            i2 = baVar.a(i2, aVar, cVar, i, z);
            if (i2 == -1) {
                break;
            }
            i3 = baVar2.c(baVar.a(i2));
        }
        if (i3 == -1) {
            return null;
        }
        return baVar2.a(i3);
    }

    private void a(float f2) {
        com.applovin.exoplayer2.j.d[] dVarArr;
        for (ad c2 = this.s.c(); c2 != null; c2 = c2.g()) {
            for (com.applovin.exoplayer2.j.d dVar : c2.i().f3569c) {
                if (dVar != null) {
                    dVar.a(f2);
                }
            }
        }
    }

    private void a(int i, boolean z) throws p {
        ar arVar = this.f4048a[i];
        if (c(arVar)) {
            return;
        }
        ad d2 = this.s.d();
        boolean z2 = d2 == this.s.c();
        com.applovin.exoplayer2.j.k i2 = d2.i();
        at atVar = i2.f3568b[i];
        v[] a2 = a(i2.f3569c[i]);
        boolean z3 = J() && this.x.f1356e == 3;
        boolean z4 = !z && z3;
        this.J++;
        this.f4049b.add(arVar);
        arVar.a(atVar, a2, d2.f1306c[i], this.L, z4, z2, d2.b(), d2.a());
        arVar.a(11, new ar.a() { // from class: com.applovin.exoplayer2.s.1
            @Override // com.applovin.exoplayer2.ar.a
            public void a() {
                s.this.f4055h.c(2);
            }

            @Override // com.applovin.exoplayer2.ar.a
            public void a(long j) {
                if (j >= ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                    s.this.H = true;
                }
            }
        });
        this.o.a(arVar);
        if (z3) {
            arVar.e();
        }
    }

    private void a(long j, long j2) {
        this.f4055h.d(2);
        this.f4055h.a(2, j + j2);
    }

    private void a(am amVar, float f2, boolean z, boolean z2) throws p {
        ar[] arVarArr;
        if (z) {
            if (z2) {
                this.y.a(1);
            }
            this.x = this.x.a(amVar);
        }
        a(amVar.f1362b);
        for (ar arVar : this.f4048a) {
            if (arVar != null) {
                arVar.a(f2, amVar.f1362b);
            }
        }
    }

    private void a(am amVar, boolean z) throws p {
        a(amVar, amVar.f1362b, true, z);
    }

    private void a(ar arVar) throws p {
        if (arVar.d_() == 2) {
            arVar.l();
        }
    }

    private void a(ar arVar, long j) {
        arVar.i();
        if (arVar instanceof com.applovin.exoplayer2.i.m) {
            ((com.applovin.exoplayer2.i.m) arVar).c(j);
        }
    }

    private void a(av avVar) {
        this.w = avVar;
    }

    private void a(ba baVar, ba baVar2) {
        if (baVar.d() && baVar2.d()) {
            return;
        }
        for (int size = this.p.size() - 1; size >= 0; size--) {
            if (!a(this.p.get(size), baVar, baVar2, this.E, this.F, this.k, this.l)) {
                this.p.get(size).f4065a.a(false);
                this.p.remove(size);
            }
        }
        Collections.sort(this.p);
    }

    private void a(ba baVar, p.a aVar, ba baVar2, p.a aVar2, long j) {
        if (baVar.d() || !a(baVar, aVar)) {
            if (this.o.d().f1362b != this.x.n.f1362b) {
                this.o.a(this.x.n);
                return;
            }
            return;
        }
        baVar.a(baVar.a(aVar.f3085a, this.l).f1620c, this.k);
        this.u.a((ab.e) com.applovin.exoplayer2.l.ai.a(this.k.l));
        if (j != C.TIME_UNSET) {
            this.u.a(a(baVar, aVar.f3085a, j));
            return;
        }
        if (com.applovin.exoplayer2.l.ai.a(!baVar2.d() ? baVar2.a(baVar2.a(aVar2.f3085a, this.l).f1620c, this.k).f1630b : null, this.k.f1630b)) {
            return;
        }
        this.u.a(C.TIME_UNSET);
    }

    private static void a(ba baVar, c cVar, ba.c cVar2, ba.a aVar) {
        int i = baVar.a(baVar.a(cVar.f4068d, aVar).f1620c, cVar2).q;
        cVar.a(i, aVar.f1621d != C.TIME_UNSET ? aVar.f1621d - 1 : Long.MAX_VALUE, baVar.a(i, aVar, true).f1619b);
    }

    private void a(ba baVar, boolean z) throws p {
        int i;
        int i2;
        boolean z2;
        f a2 = a(baVar, this.x, this.K, this.s, this.E, this.F, this.k, this.l);
        p.a aVar = a2.f4076a;
        long j = a2.f4078c;
        boolean z3 = a2.f4079d;
        long j2 = a2.f4077b;
        boolean z4 = (this.x.f1353b.equals(aVar) && j2 == this.x.s) ? false : true;
        g gVar = null;
        long j3 = C.TIME_UNSET;
        try {
            if (a2.f4080e) {
                if (this.x.f1356e != 1) {
                    b(4);
                }
                a(false, false, false, true);
            }
            try {
                if (z4) {
                    i2 = 4;
                    z2 = false;
                    if (!baVar.d()) {
                        for (ad c2 = this.s.c(); c2 != null; c2 = c2.g()) {
                            if (c2.f1309f.f1312a.equals(aVar)) {
                                c2.f1309f = this.s.a(baVar, c2.f1309f);
                                c2.j();
                            }
                        }
                        j2 = a(aVar, j2, z3);
                    }
                } else {
                    try {
                    } catch (Throwable th) {
                        th = th;
                        i = 4;
                    }
                    try {
                        i2 = 4;
                        z2 = false;
                        if (!this.s.a(baVar, this.L, t())) {
                            f(false);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        i = 4;
                        gVar = null;
                        ba baVar2 = this.x.f1352a;
                        p.a aVar2 = this.x.f1353b;
                        if (a2.f4081f) {
                            j3 = j2;
                        }
                        g gVar2 = gVar;
                        a(baVar, aVar, baVar2, aVar2, j3);
                        if (z4 || j != this.x.f1354c) {
                            Object obj = this.x.f1353b.f3085a;
                            ba baVar3 = this.x.f1352a;
                            this.x = a(aVar, j2, j, this.x.f1355d, z4 && z && !baVar3.d() && !baVar3.a(obj, this.l).f1623f, baVar.c(obj) == -1 ? i : 3);
                        }
                        A();
                        a(baVar, this.x.f1352a);
                        this.x = this.x.a(baVar);
                        if (!baVar.d()) {
                            this.K = gVar2;
                        }
                        h(false);
                        throw th;
                    }
                }
                a(baVar, aVar, this.x.f1352a, this.x.f1353b, a2.f4081f ? j2 : -9223372036854775807L);
                if (z4 || j != this.x.f1354c) {
                    Object obj2 = this.x.f1353b.f3085a;
                    ba baVar4 = this.x.f1352a;
                    this.x = a(aVar, j2, j, this.x.f1355d, (!z4 || !z || baVar4.d() || baVar4.a(obj2, this.l).f1623f) ? z2 : true, baVar.c(obj2) == -1 ? i2 : 3);
                }
                A();
                a(baVar, this.x.f1352a);
                this.x = this.x.a(baVar);
                if (!baVar.d()) {
                    this.K = null;
                }
                h(z2);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            i = 4;
        }
    }

    private synchronized void a(Supplier<Boolean> supplier, long j) {
        long a2 = this.q.a() + j;
        boolean z = false;
        while (!supplier.get().booleanValue() && j > 0) {
            try {
                this.q.c();
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = a2 - this.q.a();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private void a(com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.k kVar) {
        this.f4053f.a(this.f4048a, adVar, kVar.f3569c);
    }

    private void a(com.applovin.exoplayer2.h.z zVar) throws p {
        this.y.a(1);
        a(this.t.a(zVar), false);
    }

    private void a(a aVar) throws p {
        this.y.a(1);
        if (aVar.f4059c != -1) {
            this.K = new g(new ap(aVar.f4057a, aVar.f4058b), aVar.f4059c, aVar.f4060d);
        }
        a(this.t.a(aVar.f4057a, aVar.f4058b), false);
    }

    private void a(a aVar, int i) throws p {
        this.y.a(1);
        ah ahVar = this.t;
        if (i == -1) {
            i = ahVar.b();
        }
        a(ahVar.a(i, aVar.f4057a, aVar.f4058b), false);
    }

    private void a(b bVar) throws p {
        this.y.a(1);
        a(this.t.a(bVar.f4061a, bVar.f4062b, bVar.f4063c, bVar.f4064d), false);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ac A[Catch: all -> 0x0153, TryCatch #0 {all -> 0x0153, blocks: (B:22:0x00a2, B:24:0x00ac, B:27:0x00b2, B:29:0x00b8, B:30:0x00bb, B:32:0x00c1, B:34:0x00cb, B:36:0x00d3, B:40:0x00db, B:42:0x00e5, B:44:0x00f5, B:46:0x00fc, B:48:0x0103, B:52:0x0117, B:56:0x0120), top: B:72:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.applovin.exoplayer2.s.g r19) throws com.applovin.exoplayer2.p {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.s.a(com.applovin.exoplayer2.s$g):void");
    }

    private void a(IOException iOException, int i) {
        p a2 = p.a(iOException, i);
        ad c2 = this.s.c();
        if (c2 != null) {
            a2 = a2.a(c2.f1309f.f1312a);
        }
        com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Playback error", a2);
        a(false, false);
        this.x = this.x.a(a2);
    }

    private void a(boolean z, int i, boolean z2, int i2) throws p {
        this.y.a(z2 ? 1 : 0);
        this.y.c(i2);
        this.x = this.x.a(z, i);
        this.C = false;
        b(z);
        if (!J()) {
            j();
            l();
            return;
        }
        if (this.x.f1356e == 3) {
            i();
        } else if (this.x.f1356e != 2) {
            return;
        }
        this.f4055h.c(2);
    }

    private void a(boolean z, AtomicBoolean atomicBoolean) {
        ar[] arVarArr;
        if (this.G != z) {
            this.G = z;
            if (!z) {
                for (ar arVar : this.f4048a) {
                    if (!c(arVar) && this.f4049b.remove(arVar)) {
                        arVar.n();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void a(boolean z, boolean z2) {
        a(z || !this.G, false, true, false);
        this.y.a(z2 ? 1 : 0);
        this.f4053f.b();
        b(1);
    }

    private void a(boolean z, boolean z2, boolean z3, boolean z4) {
        p.a aVar;
        boolean z5;
        long j;
        long j2;
        ar[] arVarArr;
        this.f4055h.d(2);
        this.O = null;
        this.C = false;
        this.o.b();
        this.L = 0L;
        for (ar arVar : this.f4048a) {
            try {
                b(arVar);
            } catch (p | RuntimeException e2) {
                com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Disable failed.", e2);
            }
        }
        if (z) {
            for (ar arVar2 : this.f4048a) {
                if (this.f4049b.remove(arVar2)) {
                    try {
                        arVar2.n();
                    } catch (RuntimeException e3) {
                        com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Reset failed.", e3);
                    }
                }
            }
        }
        this.J = 0;
        p.a aVar2 = this.x.f1353b;
        long j3 = this.x.s;
        long j4 = (this.x.f1353b.a() || a(this.x, this.l)) ? this.x.f1354c : this.x.s;
        if (z2) {
            this.K = null;
            Pair<p.a, Long> a2 = a(this.x.f1352a);
            p.a aVar3 = (p.a) a2.first;
            long longValue = ((Long) a2.second).longValue();
            z5 = !aVar3.equals(this.x.f1353b);
            aVar = aVar3;
            j = longValue;
            j2 = -9223372036854775807L;
        } else {
            aVar = aVar2;
            z5 = false;
            j = j3;
            j2 = j4;
        }
        this.s.g();
        this.D = false;
        this.x = new al(this.x.f1352a, aVar, j2, j, this.x.f1356e, z4 ? null : this.x.f1357f, false, z5 ? com.applovin.exoplayer2.h.ad.f3008a : this.x.f1359h, z5 ? this.f4052e : this.x.i, z5 ? com.applovin.exoplayer2.common.a.s.g() : this.x.j, aVar, this.x.l, this.x.m, this.x.n, j, 0L, j, this.I, false);
        if (z3) {
            this.t.c();
        }
    }

    private void a(boolean[] zArr) throws p {
        ad d2 = this.s.d();
        com.applovin.exoplayer2.j.k i = d2.i();
        for (int i2 = 0; i2 < this.f4048a.length; i2++) {
            if (!i.a(i2) && this.f4049b.remove(this.f4048a[i2])) {
                this.f4048a[i2].n();
            }
        }
        for (int i3 = 0; i3 < this.f4048a.length; i3++) {
            if (i.a(i3)) {
                a(i3, zArr[i3]);
            }
        }
        d2.f1310g = true;
    }

    private static boolean a(al alVar, ba.a aVar) {
        p.a aVar2 = alVar.f1353b;
        ba baVar = alVar.f1352a;
        return baVar.d() || baVar.a(aVar2.f3085a, aVar).f1623f;
    }

    private boolean a(ar arVar, ad adVar) {
        ad g2 = adVar.g();
        return adVar.f1309f.f1317f && g2.f1307d && ((arVar instanceof com.applovin.exoplayer2.i.m) || arVar.h() >= g2.b());
    }

    private boolean a(ba baVar, p.a aVar) {
        if (aVar.a() || baVar.d()) {
            return false;
        }
        baVar.a(baVar.a(aVar.f3085a, this.l).f1620c, this.k);
        return this.k.e() && this.k.j && this.k.f1635g != C.TIME_UNSET;
    }

    private static boolean a(c cVar, ba baVar, ba baVar2, int i, boolean z, ba.c cVar2, ba.a aVar) {
        if (cVar.f4068d == null) {
            Pair<Object, Long> a2 = a(baVar, new g(cVar.f4065a.a(), cVar.f4065a.g(), cVar.f4065a.f() == Long.MIN_VALUE ? C.TIME_UNSET : h.b(cVar.f4065a.f())), false, i, z, cVar2, aVar);
            if (a2 == null) {
                return false;
            }
            cVar.a(baVar.c(a2.first), ((Long) a2.second).longValue(), a2.first);
            if (cVar.f4065a.f() == Long.MIN_VALUE) {
                a(baVar, cVar, cVar2, aVar);
            }
            return true;
        }
        int c2 = baVar.c(cVar.f4068d);
        if (c2 == -1) {
            return false;
        }
        if (cVar.f4065a.f() == Long.MIN_VALUE) {
            a(baVar, cVar, cVar2, aVar);
            return true;
        }
        cVar.f4066b = c2;
        baVar2.a(cVar.f4068d, aVar);
        if (aVar.f1623f && baVar2.a(aVar.f1620c, cVar2).p == baVar2.c(cVar.f4068d)) {
            Pair<Object, Long> a3 = baVar.a(cVar2, aVar, baVar.a(cVar.f4068d, aVar).f1620c, cVar.f4067c + aVar.c());
            cVar.a(baVar.c(a3.first), ((Long) a3.second).longValue(), a3.first);
        }
        return true;
    }

    private static v[] a(com.applovin.exoplayer2.j.d dVar) {
        int e2 = dVar != null ? dVar.e() : 0;
        v[] vVarArr = new v[e2];
        for (int i = 0; i < e2; i++) {
            vVarArr[i] = dVar.a(i);
        }
        return vVarArr;
    }

    private void b(int i) {
        if (this.x.f1356e != i) {
            this.x = this.x.a(i);
        }
    }

    private void b(int i, int i2, com.applovin.exoplayer2.h.z zVar) throws p {
        this.y.a(1);
        a(this.t.a(i, i2, zVar), false);
    }

    private void b(long j) throws p {
        ar[] arVarArr;
        ad c2 = this.s.c();
        if (c2 != null) {
            j = c2.a(j);
        }
        this.L = j;
        this.o.a(j);
        for (ar arVar : this.f4048a) {
            if (c(arVar)) {
                arVar.a(this.L);
            }
        }
        r();
    }

    private void b(am amVar) throws p {
        this.o.a(amVar);
        a(this.o.d(), true);
    }

    private void b(ao aoVar) throws p {
        if (aoVar.f() == C.TIME_UNSET) {
            c(aoVar);
        } else if (this.x.f1352a.d()) {
            this.p.add(new c(aoVar));
        } else {
            c cVar = new c(aoVar);
            if (!a(cVar, this.x.f1352a, this.x.f1352a, this.E, this.F, this.k, this.l)) {
                aoVar.a(false);
                return;
            }
            this.p.add(cVar);
            Collections.sort(this.p);
        }
    }

    private void b(ar arVar) throws p {
        if (c(arVar)) {
            this.o.b(arVar);
            a(arVar);
            arVar.m();
            this.J--;
        }
    }

    private void b(boolean z) {
        com.applovin.exoplayer2.j.d[] dVarArr;
        for (ad c2 = this.s.c(); c2 != null; c2 = c2.g()) {
            for (com.applovin.exoplayer2.j.d dVar : c2.i().f3569c) {
                if (dVar != null) {
                    dVar.a(z);
                }
            }
        }
    }

    private boolean b(long j, long j2) {
        if (this.I && this.H) {
            return false;
        }
        a(j, j2);
        return true;
    }

    private void c(int i) throws p {
        this.E = i;
        if (!this.s.a(this.x.f1352a, i)) {
            f(true);
        }
        h(false);
    }

    private void c(long j) {
        ar[] arVarArr;
        for (ar arVar : this.f4048a) {
            if (arVar.f() != null) {
                a(arVar, j);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
        if (r1 < r7.p.size()) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
        r3 = r7.p.get(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007d, code lost:
        if (r3 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
        if (r3.f4068d == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0085, code lost:
        if (r3.f4066b < r0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0089, code lost:
        if (r3.f4066b != r0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008f, code lost:
        if (r3.f4067c > r8) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0091, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0099, code lost:
        if (r1 >= r7.p.size()) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009c, code lost:
        if (r3 == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a0, code lost:
        if (r3.f4068d == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a4, code lost:
        if (r3.f4066b != r0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00aa, code lost:
        if (r3.f4067c <= r8) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b0, code lost:
        if (r3.f4067c > r10) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b2, code lost:
        c(r3.f4065a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00bd, code lost:
        if (r3.f4065a.h() != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c5, code lost:
        if (r3.f4065a.j() == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c8, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00cb, code lost:
        r7.p.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d6, code lost:
        if (r1 >= r7.p.size()) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d8, code lost:
        r3 = r7.p.get(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e1, code lost:
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e3, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ea, code lost:
        if (r3.f4065a.h() != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00f4, code lost:
        r7.p.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f9, code lost:
        throw r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00fa, code lost:
        r7.M = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00fc, code lost:
        return;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007c -> B:30:0x007d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0099 -> B:28:0x0073). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(long r8, long r10) throws com.applovin.exoplayer2.p {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.s.c(long, long):void");
    }

    private void c(ao aoVar) throws p {
        if (aoVar.e() != this.j) {
            this.f4055h.a(15, aoVar).a();
            return;
        }
        e(aoVar);
        if (this.x.f1356e == 3 || this.x.f1356e == 2) {
            this.f4055h.c(2);
        }
    }

    private void c(com.applovin.exoplayer2.h.n nVar) throws p {
        if (this.s.a(nVar)) {
            ad b2 = this.s.b();
            b2.a(this.o.d().f1362b, this.x.f1352a);
            a(b2.h(), b2.i());
            if (b2 == this.s.c()) {
                b(b2.f1309f.f1313b);
                H();
                this.x = a(this.x.f1353b, b2.f1309f.f1313b, this.x.f1354c, b2.f1309f.f1313b, false, 5);
            }
            D();
        }
    }

    private void c(boolean z) throws p {
        this.A = z;
        A();
        if (!this.B || this.s.d() == this.s.c()) {
            return;
        }
        f(true);
        h(false);
    }

    private static boolean c(ar arVar) {
        return arVar.d_() != 0;
    }

    private long d(long j) {
        ad b2 = this.s.b();
        if (b2 == null) {
            return 0L;
        }
        return Math.max(0L, j - b2.b(this.L));
    }

    private void d(final ao aoVar) {
        Looper e2 = aoVar.e();
        if (e2.getThread().isAlive()) {
            this.q.a(e2, null).a(new Runnable() { // from class: com.applovin.exoplayer2.s$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    s.this.f(aoVar);
                }
            });
            return;
        }
        com.applovin.exoplayer2.l.q.c("TAG", "Trying to send message on a dead thread.");
        aoVar.a(false);
    }

    private void d(com.applovin.exoplayer2.h.n nVar) {
        if (this.s.a(nVar)) {
            this.s.a(this.L);
            D();
        }
    }

    private void d(boolean z) {
        if (z == this.I) {
            return;
        }
        this.I = z;
        int i = this.x.f1356e;
        if (z || i == 4 || i == 1) {
            this.x = this.x.b(z);
        } else {
            this.f4055h.c(2);
        }
    }

    private void e(ao aoVar) throws p {
        if (aoVar.j()) {
            return;
        }
        try {
            aoVar.b().a(aoVar.c(), aoVar.d());
        } finally {
            aoVar.a(true);
        }
    }

    private void e(boolean z) throws p {
        this.F = z;
        if (!this.s.a(this.x.f1352a, z)) {
            f(true);
        }
        h(false);
    }

    private void f() {
        this.y.a(this.x);
        if (this.y.f4075g) {
            this.r.onPlaybackInfoUpdate(this.y);
            this.y = new d(this.x);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(ao aoVar) {
        try {
            e(aoVar);
        } catch (p e2) {
            com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    private void f(boolean z) throws p {
        p.a aVar = this.s.c().f1309f.f1312a;
        long a2 = a(aVar, this.x.s, true, false);
        if (a2 != this.x.s) {
            this.x = a(aVar, a2, this.x.f1354c, this.x.f1355d, z, 5);
        }
    }

    private void g() {
        this.y.a(1);
        a(false, false, false, true);
        this.f4053f.a();
        b(this.x.f1352a.d() ? 4 : 2);
        this.t.a(this.f4054g.a());
        this.f4055h.c(2);
    }

    private boolean g(boolean z) {
        if (this.J == 0) {
            return s();
        }
        if (z) {
            if (this.x.f1358g) {
                long b2 = a(this.x.f1352a, this.s.c().f1309f.f1312a) ? this.u.b() : C.TIME_UNSET;
                ad b3 = this.s.b();
                return (b3.c() && b3.f1309f.i) || (b3.f1309f.f1312a.a() && !b3.f1307d) || this.f4053f.a(I(), this.o.d().f1362b, this.C, b2);
            }
            return true;
        }
        return false;
    }

    private void h() throws p {
        a(this.t.d(), true);
    }

    private void h(boolean z) {
        ad b2 = this.s.b();
        p.a aVar = b2 == null ? this.x.f1353b : b2.f1309f.f1312a;
        boolean z2 = !this.x.k.equals(aVar);
        if (z2) {
            this.x = this.x.a(aVar);
        }
        al alVar = this.x;
        alVar.q = b2 == null ? alVar.s : b2.d();
        this.x.r = I();
        if ((z2 || z) && b2 != null && b2.f1307d) {
            a(b2.h(), b2.i());
        }
    }

    private void i() throws p {
        ar[] arVarArr;
        this.C = false;
        this.o.a();
        for (ar arVar : this.f4048a) {
            if (c(arVar)) {
                arVar.e();
            }
        }
    }

    private void j() throws p {
        ar[] arVarArr;
        this.o.b();
        for (ar arVar : this.f4048a) {
            if (c(arVar)) {
                a(arVar);
            }
        }
    }

    private void k() throws p {
        f(true);
    }

    private void l() throws p {
        ad c2 = this.s.c();
        if (c2 == null) {
            return;
        }
        long c3 = c2.f1307d ? c2.f1304a.c() : -9223372036854775807L;
        if (c3 != C.TIME_UNSET) {
            b(c3);
            if (c3 != this.x.s) {
                this.x = a(this.x.f1353b, c3, this.x.f1354c, c3, true, 5);
            }
        } else {
            long a2 = this.o.a(c2 != this.s.d());
            this.L = a2;
            long b2 = c2.b(a2);
            c(this.x.s, b2);
            this.x.s = b2;
        }
        this.x.q = this.s.b().d();
        this.x.r = I();
        if (this.x.l && this.x.f1356e == 3 && a(this.x.f1352a, this.x.f1353b) && this.x.n.f1362b == 1.0f) {
            float a3 = this.u.a(o(), I());
            if (this.o.d().f1362b != a3) {
                this.o.a(this.x.n.a(a3));
                a(this.x.n, this.o.d().f1362b, false, false);
            }
        }
    }

    private void m() {
        com.applovin.exoplayer2.j.d[] dVarArr;
        for (ad c2 = this.s.c(); c2 != null; c2 = c2.g()) {
            for (com.applovin.exoplayer2.j.d dVar : c2.i().f3569c) {
                if (dVar != null) {
                    dVar.h();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n() throws com.applovin.exoplayer2.p, java.io.IOException {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.s.n():void");
    }

    private long o() {
        return a(this.x.f1352a, this.x.f1353b.f3085a, this.x.s);
    }

    private void p() {
        a(true, false, true, false);
        this.f4053f.c();
        b(1);
        this.i.quit();
        synchronized (this) {
            this.z = true;
            notifyAll();
        }
    }

    private void q() throws p {
        float f2 = this.o.d().f1362b;
        ad d2 = this.s.d();
        boolean z = true;
        for (ad c2 = this.s.c(); c2 != null && c2.f1307d; c2 = c2.g()) {
            com.applovin.exoplayer2.j.k b2 = c2.b(f2, this.x.f1352a);
            if (!b2.a(c2.i())) {
                af afVar = this.s;
                if (z) {
                    ad c3 = afVar.c();
                    boolean a2 = this.s.a(c3);
                    boolean[] zArr = new boolean[this.f4048a.length];
                    long a3 = c3.a(b2, this.x.s, a2, zArr);
                    boolean z2 = (this.x.f1356e == 4 || a3 == this.x.s) ? false : true;
                    this.x = a(this.x.f1353b, a3, this.x.f1354c, this.x.f1355d, z2, 5);
                    if (z2) {
                        b(a3);
                    }
                    boolean[] zArr2 = new boolean[this.f4048a.length];
                    int i = 0;
                    while (true) {
                        ar[] arVarArr = this.f4048a;
                        if (i >= arVarArr.length) {
                            break;
                        }
                        ar arVar = arVarArr[i];
                        zArr2[i] = c(arVar);
                        com.applovin.exoplayer2.h.x xVar = c3.f1306c[i];
                        if (zArr2[i]) {
                            if (xVar != arVar.f()) {
                                b(arVar);
                            } else if (zArr[i]) {
                                arVar.a(this.L);
                            }
                        }
                        i++;
                    }
                    a(zArr2);
                } else {
                    afVar.a(c2);
                    if (c2.f1307d) {
                        c2.a(b2, Math.max(c2.f1309f.f1313b, c2.b(this.L)), false);
                    }
                }
                h(true);
                if (this.x.f1356e != 4) {
                    D();
                    l();
                    this.f4055h.c(2);
                    return;
                }
                return;
            }
            if (c2 == d2) {
                z = false;
            }
        }
    }

    private void r() {
        com.applovin.exoplayer2.j.d[] dVarArr;
        for (ad c2 = this.s.c(); c2 != null; c2 = c2.g()) {
            for (com.applovin.exoplayer2.j.d dVar : c2.i().f3569c) {
                if (dVar != null) {
                    dVar.g();
                }
            }
        }
    }

    private boolean s() {
        ad c2 = this.s.c();
        long j = c2.f1309f.f1316e;
        return c2.f1307d && (j == C.TIME_UNSET || this.x.s < j || !J());
    }

    private long t() {
        ad d2 = this.s.d();
        if (d2 == null) {
            return 0L;
        }
        long a2 = d2.a();
        if (!d2.f1307d) {
            return a2;
        }
        int i = 0;
        while (true) {
            ar[] arVarArr = this.f4048a;
            if (i >= arVarArr.length) {
                return a2;
            }
            if (c(arVarArr[i]) && this.f4048a[i].f() == d2.f1306c[i]) {
                long h2 = this.f4048a[i].h();
                if (h2 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                a2 = Math.max(h2, a2);
            }
            i++;
        }
    }

    private void u() throws p, IOException {
        if (this.x.f1352a.d() || !this.t.a()) {
            return;
        }
        v();
        w();
        x();
        z();
    }

    private void v() throws p {
        ae a2;
        this.s.a(this.L);
        if (this.s.a() && (a2 = this.s.a(this.L, this.x)) != null) {
            ad a3 = this.s.a(this.f4050c, this.f4051d, this.f4053f.d(), this.t, a2, this.f4052e);
            a3.f1304a.a(this, a2.f1313b);
            if (this.s.c() == a3) {
                b(a3.b());
            }
            h(false);
        }
        if (!this.D) {
            D();
            return;
        }
        this.D = F();
        G();
    }

    private void w() {
        ad d2 = this.s.d();
        if (d2 == null) {
            return;
        }
        int i = 0;
        if (d2.g() != null && !this.B) {
            if (C()) {
                if (d2.g().f1307d || this.L >= d2.g().b()) {
                    com.applovin.exoplayer2.j.k i2 = d2.i();
                    ad e2 = this.s.e();
                    com.applovin.exoplayer2.j.k i3 = e2.i();
                    if (e2.f1307d && e2.f1304a.c() != C.TIME_UNSET) {
                        c(e2.b());
                        return;
                    }
                    for (int i4 = 0; i4 < this.f4048a.length; i4++) {
                        boolean a2 = i2.a(i4);
                        boolean a3 = i3.a(i4);
                        if (a2 && !this.f4048a[i4].j()) {
                            boolean z = this.f4050c[i4].a() == -2;
                            at atVar = i2.f3568b[i4];
                            at atVar2 = i3.f3568b[i4];
                            if (!a3 || !atVar2.equals(atVar) || z) {
                                a(this.f4048a[i4], e2.b());
                            }
                        }
                    }
                }
            }
        } else if (d2.f1309f.i || this.B) {
            while (true) {
                ar[] arVarArr = this.f4048a;
                if (i >= arVarArr.length) {
                    return;
                }
                ar arVar = arVarArr[i];
                com.applovin.exoplayer2.h.x xVar = d2.f1306c[i];
                if (xVar != null && arVar.f() == xVar && arVar.g()) {
                    a(arVar, (d2.f1309f.f1316e == C.TIME_UNSET || d2.f1309f.f1316e == Long.MIN_VALUE) ? -9223372036854775807L : d2.a() + d2.f1309f.f1316e);
                }
                i++;
            }
        }
    }

    private void x() throws p {
        ad d2 = this.s.d();
        if (d2 == null || this.s.c() == d2 || d2.f1310g || !y()) {
            return;
        }
        H();
    }

    private boolean y() throws p {
        ad d2 = this.s.d();
        com.applovin.exoplayer2.j.k i = d2.i();
        int i2 = 0;
        boolean z = false;
        while (true) {
            ar[] arVarArr = this.f4048a;
            if (i2 >= arVarArr.length) {
                return !z;
            }
            ar arVar = arVarArr[i2];
            if (c(arVar)) {
                boolean z2 = arVar.f() != d2.f1306c[i2];
                if (!i.a(i2) || z2) {
                    if (!arVar.j()) {
                        arVar.a(a(i.f3569c[i2]), d2.f1306c[i2], d2.b(), d2.a());
                    } else if (arVar.A()) {
                        b(arVar);
                    } else {
                        z = true;
                    }
                }
            }
            i2++;
        }
    }

    private void z() throws p {
        boolean z = false;
        while (B()) {
            if (z) {
                f();
            }
            ad c2 = this.s.c();
            ad f2 = this.s.f();
            al a2 = a(f2.f1309f.f1312a, f2.f1309f.f1313b, f2.f1309f.f1314c, f2.f1309f.f1313b, true, 0);
            this.x = a2;
            a(a2.f1352a, f2.f1309f.f1312a, this.x.f1352a, c2.f1309f.f1312a, C.TIME_UNSET);
            A();
            l();
            z = true;
        }
    }

    public void a() {
        this.f4055h.b(0).a();
    }

    public void a(int i) {
        this.f4055h.a(11, i, 0).a();
    }

    public void a(int i, int i2, com.applovin.exoplayer2.h.z zVar) {
        this.f4055h.a(20, i, i2, zVar).a();
    }

    public void a(long j) {
        this.P = j;
    }

    @Override // com.applovin.exoplayer2.m.a
    public void a(am amVar) {
        this.f4055h.a(16, amVar).a();
    }

    @Override // com.applovin.exoplayer2.ao.a
    public synchronized void a(ao aoVar) {
        if (!this.z && this.i.isAlive()) {
            this.f4055h.a(14, aoVar).a();
            return;
        }
        com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        aoVar.a(false);
    }

    public void a(ba baVar, int i, long j) {
        this.f4055h.a(3, new g(baVar, i, j)).a();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.applovin.exoplayer2.h.n.a
    public void a(com.applovin.exoplayer2.h.n nVar) {
        this.f4055h.a(8, nVar).a();
    }

    public void a(List<ah.c> list, int i, long j, com.applovin.exoplayer2.h.z zVar) {
        this.f4055h.a(17, new a(list, zVar, i, j)).a();
    }

    public void a(boolean z) {
        this.f4055h.a(12, z ? 1 : 0, 0).a();
    }

    public void a(boolean z, int i) {
        this.f4055h.a(1, z ? 1 : 0, i).a();
    }

    public void b() {
        this.f4055h.b(6).a();
    }

    @Override // com.applovin.exoplayer2.h.y.a
    /* renamed from: b */
    public void a(com.applovin.exoplayer2.h.n nVar) {
        this.f4055h.a(9, nVar).a();
    }

    public synchronized boolean c() {
        if (!this.z && this.i.isAlive()) {
            this.f4055h.c(7);
            a(new Supplier() { // from class: com.applovin.exoplayer2.s$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.common.base.Supplier
                public final Object get() {
                    Boolean K;
                    K = s.this.K();
                    return K;
                }
            }, this.v);
            return this.z;
        }
        return true;
    }

    public Looper d() {
        return this.j;
    }

    @Override // com.applovin.exoplayer2.ah.d
    public void e() {
        this.f4055h.c(22);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        p e2;
        int i;
        ad d2;
        IOException iOException;
        int i2;
        int i3 = 1000;
        try {
            switch (message.what) {
                case 0:
                    g();
                    break;
                case 1:
                    a(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    n();
                    break;
                case 3:
                    a((g) message.obj);
                    break;
                case 4:
                    b((am) message.obj);
                    break;
                case 5:
                    a((av) message.obj);
                    break;
                case 6:
                    a(false, true);
                    break;
                case 7:
                    p();
                    return true;
                case 8:
                    c((com.applovin.exoplayer2.h.n) message.obj);
                    break;
                case 9:
                    d((com.applovin.exoplayer2.h.n) message.obj);
                    break;
                case 10:
                    q();
                    break;
                case 11:
                    c(message.arg1);
                    break;
                case 12:
                    e(message.arg1 != 0);
                    break;
                case 13:
                    a(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    b((ao) message.obj);
                    break;
                case 15:
                    d((ao) message.obj);
                    break;
                case 16:
                    a((am) message.obj, false);
                    break;
                case 17:
                    a((a) message.obj);
                    break;
                case 18:
                    a((a) message.obj, message.arg1);
                    break;
                case 19:
                    a((b) message.obj);
                    break;
                case 20:
                    b(message.arg1, message.arg2, (com.applovin.exoplayer2.h.z) message.obj);
                    break;
                case 21:
                    a((com.applovin.exoplayer2.h.z) message.obj);
                    break;
                case 22:
                    h();
                    break;
                case 23:
                    c(message.arg1 != 0);
                    break;
                case 24:
                    d(message.arg1 == 1);
                    break;
                case 25:
                    k();
                    break;
                default:
                    return false;
            }
        } catch (ai e3) {
            if (e3.f1349b == 1) {
                i2 = e3.f1348a ? 3001 : 3003;
            } else {
                if (e3.f1349b == 4) {
                    i2 = e3.f1348a ? 3002 : 3004;
                }
                a(e3, i3);
            }
            i3 = i2;
            a(e3, i3);
        } catch (f.a e4) {
            i = e4.f2019a;
            iOException = e4;
            a(iOException, i);
        } catch (com.applovin.exoplayer2.h.b e5) {
            i = 1002;
            iOException = e5;
            a(iOException, i);
        } catch (com.applovin.exoplayer2.k.j e6) {
            i = e6.f3619a;
            iOException = e6;
            a(iOException, i);
        } catch (p e7) {
            e2 = e7;
            if (e2.f4032a == 1 && (d2 = this.s.d()) != null) {
                e2 = e2.a(d2.f1309f.f1312a);
            }
            if (e2.f4038g && this.O == null) {
                com.applovin.exoplayer2.l.q.b("ExoPlayerImplInternal", "Recoverable renderer error", e2);
                this.O = e2;
                com.applovin.exoplayer2.l.o oVar = this.f4055h;
                oVar.a(oVar.a(25, e2));
            } else {
                p pVar = this.O;
                if (pVar != null) {
                    pVar.addSuppressed(e2);
                    e2 = this.O;
                }
                com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Playback error", e2);
                a(true, false);
                this.x = this.x.a(e2);
            }
        } catch (IOException e8) {
            i = 2000;
            iOException = e8;
            a(iOException, i);
        } catch (RuntimeException e9) {
            e2 = p.a(e9, ((e9 instanceof IllegalStateException) || (e9 instanceof IllegalArgumentException)) ? 1004 : 1004);
            com.applovin.exoplayer2.l.q.c("ExoPlayerImplInternal", "Playback error", e2);
            a(true, false);
            this.x = this.x.a(e2);
        }
        f();
        return true;
    }
}
