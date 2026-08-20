package com.applovin.exoplayer2.h;

import android.net.Uri;
import android.os.Handler;
import com.applovin.exoplayer2.av;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.h.i;
import com.applovin.exoplayer2.h.n;
import com.applovin.exoplayer2.h.q;
import com.applovin.exoplayer2.h.w;
import com.applovin.exoplayer2.k.l;
import com.applovin.exoplayer2.k.v;
import com.applovin.exoplayer2.k.w;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t implements com.applovin.exoplayer2.e.j, n, w.c, w.a<a>, w.e {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, String> f3096b = t();

    /* renamed from: c  reason: collision with root package name */
    private static final com.applovin.exoplayer2.v f3097c = new v.a().a("icy").f(MimeTypes.APPLICATION_ICY).a();
    private e A;
    private com.applovin.exoplayer2.e.v B;
    private boolean D;
    private boolean F;
    private boolean G;
    private int H;
    private long J;
    private boolean L;
    private int M;
    private boolean N;
    private boolean O;

    /* renamed from: d  reason: collision with root package name */
    private final Uri f3098d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.i f3099e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.exoplayer2.d.h f3100f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.v f3101g;

    /* renamed from: h  reason: collision with root package name */
    private final q.a f3102h;
    private final g.a i;
    private final b j;
    private final com.applovin.exoplayer2.k.b k;
    private final String l;
    private final long m;
    private final s o;
    private n.a t;
    private com.applovin.exoplayer2.g.d.b u;
    private boolean x;
    private boolean y;
    private boolean z;
    private final com.applovin.exoplayer2.k.w n = new com.applovin.exoplayer2.k.w("ProgressiveMediaPeriod");
    private final com.applovin.exoplayer2.l.g p = new com.applovin.exoplayer2.l.g();
    private final Runnable q = new Runnable() { // from class: com.applovin.exoplayer2.h.t$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            t.this.n();
        }
    };
    private final Runnable r = new Runnable() { // from class: com.applovin.exoplayer2.h.t$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            t.this.u();
        }
    };
    private final Handler s = ai.a();
    private d[] w = new d[0];
    private w[] v = new w[0];
    private long K = C.TIME_UNSET;
    private long I = -1;
    private long C = C.TIME_UNSET;
    private int E = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class a implements i.a, w.d {

        /* renamed from: c  reason: collision with root package name */
        private final Uri f3105c;

        /* renamed from: d  reason: collision with root package name */
        private final com.applovin.exoplayer2.k.z f3106d;

        /* renamed from: e  reason: collision with root package name */
        private final s f3107e;

        /* renamed from: f  reason: collision with root package name */
        private final com.applovin.exoplayer2.e.j f3108f;

        /* renamed from: g  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.g f3109g;
        private volatile boolean i;
        private long k;
        private com.applovin.exoplayer2.e.x n;
        private boolean o;

        /* renamed from: h  reason: collision with root package name */
        private final com.applovin.exoplayer2.e.u f3110h = new com.applovin.exoplayer2.e.u();
        private boolean j = true;
        private long m = -1;

        /* renamed from: b  reason: collision with root package name */
        private final long f3104b = j.a();
        private com.applovin.exoplayer2.k.l l = a(0);

        public a(Uri uri, com.applovin.exoplayer2.k.i iVar, s sVar, com.applovin.exoplayer2.e.j jVar, com.applovin.exoplayer2.l.g gVar) {
            this.f3105c = uri;
            this.f3106d = new com.applovin.exoplayer2.k.z(iVar);
            this.f3107e = sVar;
            this.f3108f = jVar;
            this.f3109g = gVar;
        }

        private com.applovin.exoplayer2.k.l a(long j) {
            return new l.a().a(this.f3105c).a(j).b(t.this.l).b(6).a(t.f3096b).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j, long j2) {
            this.f3110h.f2707a = j;
            this.k = j2;
            this.j = true;
            this.o = false;
        }

        @Override // com.applovin.exoplayer2.k.w.d
        public void a() {
            this.i = true;
        }

        @Override // com.applovin.exoplayer2.h.i.a
        public void a(com.applovin.exoplayer2.l.y yVar) {
            long max = !this.o ? this.k : Math.max(t.this.q(), this.k);
            int a2 = yVar.a();
            com.applovin.exoplayer2.e.x xVar = (com.applovin.exoplayer2.e.x) com.applovin.exoplayer2.l.a.b(this.n);
            xVar.a(yVar, a2);
            xVar.a(max, 1, a2, 0, null);
            this.o = true;
        }

        @Override // com.applovin.exoplayer2.k.w.d
        public void b() throws IOException {
            int i = 0;
            while (i == 0 && !this.i) {
                try {
                    long j = this.f3110h.f2707a;
                    com.applovin.exoplayer2.k.l a2 = a(j);
                    this.l = a2;
                    long a3 = this.f3106d.a(a2);
                    this.m = a3;
                    if (a3 != -1) {
                        this.m = a3 + j;
                    }
                    t.this.u = com.applovin.exoplayer2.g.d.b.a(this.f3106d.b());
                    com.applovin.exoplayer2.k.g gVar = this.f3106d;
                    if (t.this.u != null && t.this.u.f2867f != -1) {
                        gVar = new i(this.f3106d, t.this.u.f2867f, this);
                        com.applovin.exoplayer2.e.x j2 = t.this.j();
                        this.n = j2;
                        j2.a(t.f3097c);
                    }
                    long j3 = j;
                    this.f3107e.a(gVar, this.f3105c, this.f3106d.b(), j, this.m, this.f3108f);
                    if (t.this.u != null) {
                        this.f3107e.b();
                    }
                    if (this.j) {
                        this.f3107e.a(j3, this.k);
                        this.j = false;
                    }
                    while (true) {
                        long j4 = j3;
                        while (i == 0 && !this.i) {
                            try {
                                this.f3109g.c();
                                i = this.f3107e.a(this.f3110h);
                                j3 = this.f3107e.c();
                                if (j3 > t.this.m + j4) {
                                    break;
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                        this.f3109g.b();
                        t.this.s.post(t.this.r);
                    }
                    if (i == 1) {
                        i = 0;
                    } else if (this.f3107e.c() != -1) {
                        this.f3110h.f2707a = this.f3107e.c();
                    }
                    ai.a((com.applovin.exoplayer2.k.i) this.f3106d);
                } catch (Throwable th) {
                    if (i != 1 && this.f3107e.c() != -1) {
                        this.f3110h.f2707a = this.f3107e.c();
                    }
                    ai.a((com.applovin.exoplayer2.k.i) this.f3106d);
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        void a(long j, boolean z, boolean z2);
    }

    /* loaded from: classes.dex */
    private final class c implements x {

        /* renamed from: b  reason: collision with root package name */
        private final int f3112b;

        public c(int i) {
            this.f3112b = i;
        }

        @Override // com.applovin.exoplayer2.h.x
        public int a(long j) {
            return t.this.a(this.f3112b, j);
        }

        @Override // com.applovin.exoplayer2.h.x
        public int a(com.applovin.exoplayer2.w wVar, com.applovin.exoplayer2.c.g gVar, int i) {
            return t.this.a(this.f3112b, wVar, gVar, i);
        }

        @Override // com.applovin.exoplayer2.h.x
        public boolean b() {
            return t.this.a(this.f3112b);
        }

        @Override // com.applovin.exoplayer2.h.x
        public void c() throws IOException {
            t.this.b(this.f3112b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f3113a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3114b;

        public d(int i, boolean z) {
            this.f3113a = i;
            this.f3114b = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f3113a == dVar.f3113a && this.f3114b == dVar.f3114b;
        }

        public int hashCode() {
            return (this.f3113a * 31) + (this.f3114b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final ad f3115a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f3116b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f3117c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f3118d;

        public e(ad adVar, boolean[] zArr) {
            this.f3115a = adVar;
            this.f3116b = zArr;
            this.f3117c = new boolean[adVar.f3010b];
            this.f3118d = new boolean[adVar.f3010b];
        }
    }

    public t(Uri uri, com.applovin.exoplayer2.k.i iVar, s sVar, com.applovin.exoplayer2.d.h hVar, g.a aVar, com.applovin.exoplayer2.k.v vVar, q.a aVar2, b bVar, com.applovin.exoplayer2.k.b bVar2, String str, int i) {
        this.f3098d = uri;
        this.f3099e = iVar;
        this.f3100f = hVar;
        this.i = aVar;
        this.f3101g = vVar;
        this.f3102h = aVar2;
        this.j = bVar;
        this.k = bVar2;
        this.l = str;
        this.m = i;
        this.o = sVar;
    }

    private com.applovin.exoplayer2.e.x a(d dVar) {
        int length = this.v.length;
        for (int i = 0; i < length; i++) {
            if (dVar.equals(this.w[i])) {
                return this.v[i];
            }
        }
        w a2 = w.a(this.k, this.s.getLooper(), this.f3100f, this.i);
        a2.a(this);
        int i2 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.w, i2);
        dVarArr[length] = dVar;
        this.w = (d[]) ai.a((Object[]) dVarArr);
        w[] wVarArr = (w[]) Arrays.copyOf(this.v, i2);
        wVarArr[length] = a2;
        this.v = (w[]) ai.a((Object[]) wVarArr);
        return a2;
    }

    private void a(a aVar) {
        if (this.I == -1) {
            this.I = aVar.m;
        }
    }

    private boolean a(a aVar, int i) {
        com.applovin.exoplayer2.e.v vVar;
        if (this.I != -1 || ((vVar = this.B) != null && vVar.b() != C.TIME_UNSET)) {
            this.M = i;
            return true;
        }
        if (this.y && !m()) {
            this.L = true;
            return false;
        }
        this.G = this.y;
        this.J = 0L;
        this.M = 0;
        for (w wVar : this.v) {
            wVar.b();
        }
        aVar.a(0L, 0L);
        return true;
    }

    private boolean a(boolean[] zArr, long j) {
        int length = this.v.length;
        for (int i = 0; i < length; i++) {
            if (!this.v[i].a(j, false) && (zArr[i] || !this.z)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void c(com.applovin.exoplayer2.e.v vVar) {
        this.B = this.u == null ? vVar : new v.b(C.TIME_UNSET);
        this.C = vVar.b();
        boolean z = this.I == -1 && vVar.b() == C.TIME_UNSET;
        this.D = z;
        this.E = z ? 7 : 1;
        this.j.a(this.C, vVar.a(), this.D);
        if (this.y) {
            return;
        }
        n();
    }

    private void c(int i) {
        s();
        boolean[] zArr = this.A.f3118d;
        if (zArr[i]) {
            return;
        }
        com.applovin.exoplayer2.v a2 = this.A.f3115a.a(i).a(0);
        this.f3102h.a(com.applovin.exoplayer2.l.u.e(a2.l), a2, 0, (Object) null, this.J);
        zArr[i] = true;
    }

    private void d(int i) {
        s();
        boolean[] zArr = this.A.f3116b;
        if (this.L && zArr[i]) {
            if (this.v[i].b(false)) {
                return;
            }
            this.K = 0L;
            this.L = false;
            this.G = true;
            this.J = 0L;
            this.M = 0;
            for (w wVar : this.v) {
                wVar.b();
            }
            ((n.a) com.applovin.exoplayer2.l.a.b(this.t)).a((n.a) this);
        }
    }

    private boolean m() {
        return this.G || r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.O || this.y || !this.x || this.B == null) {
            return;
        }
        for (w wVar : this.v) {
            if (wVar.g() == null) {
                return;
            }
        }
        this.p.b();
        int length = this.v.length;
        ac[] acVarArr = new ac[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            com.applovin.exoplayer2.v vVar = (com.applovin.exoplayer2.v) com.applovin.exoplayer2.l.a.b(this.v[i].g());
            String str = vVar.l;
            boolean a2 = com.applovin.exoplayer2.l.u.a(str);
            boolean z = a2 || com.applovin.exoplayer2.l.u.b(str);
            zArr[i] = z;
            this.z = z | this.z;
            com.applovin.exoplayer2.g.d.b bVar = this.u;
            if (bVar != null) {
                if (a2 || this.w[i].f3114b) {
                    com.applovin.exoplayer2.g.a aVar = vVar.j;
                    vVar = vVar.a().a(aVar == null ? new com.applovin.exoplayer2.g.a(bVar) : aVar.a(bVar)).a();
                }
                if (a2 && vVar.f4183f == -1 && vVar.f4184g == -1 && bVar.f2862a != -1) {
                    vVar = vVar.a().d(bVar.f2862a).a();
                }
            }
            acVarArr[i] = new ac(vVar.a(this.f3100f.a(vVar)));
        }
        this.A = new e(new ad(acVarArr), zArr);
        this.y = true;
        ((n.a) com.applovin.exoplayer2.l.a.b(this.t)).a((n) this);
    }

    private void o() {
        a aVar = new a(this.f3098d, this.f3099e, this.o, this, this.p);
        if (this.y) {
            com.applovin.exoplayer2.l.a.b(r());
            long j = this.C;
            if (j != C.TIME_UNSET && this.K > j) {
                this.N = true;
                this.K = C.TIME_UNSET;
                return;
            }
            aVar.a(((com.applovin.exoplayer2.e.v) com.applovin.exoplayer2.l.a.b(this.B)).a(this.K).f2708a.f2714c, this.K);
            for (w wVar : this.v) {
                wVar.a(this.K);
            }
            this.K = C.TIME_UNSET;
        }
        this.M = p();
        this.f3102h.a(new j(aVar.f3104b, aVar.l, this.n.a(aVar, this, this.f3101g.a(this.E))), 1, -1, null, 0, null, aVar.k, this.C);
    }

    private int p() {
        int i = 0;
        for (w wVar : this.v) {
            i += wVar.c();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long q() {
        long j = Long.MIN_VALUE;
        for (w wVar : this.v) {
            j = Math.max(j, wVar.h());
        }
        return j;
    }

    private boolean r() {
        return this.K != C.TIME_UNSET;
    }

    private void s() {
        com.applovin.exoplayer2.l.a.b(this.y);
        com.applovin.exoplayer2.l.a.b(this.A);
        com.applovin.exoplayer2.l.a.b(this.B);
    }

    private static Map<String, String> t() {
        HashMap hashMap = new HashMap();
        hashMap.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        return Collections.unmodifiableMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        if (this.O) {
            return;
        }
        ((n.a) com.applovin.exoplayer2.l.a.b(this.t)).a((n.a) this);
    }

    int a(int i, long j) {
        if (m()) {
            return 0;
        }
        c(i);
        w wVar = this.v[i];
        int b2 = wVar.b(j, this.N);
        wVar.a(b2);
        if (b2 == 0) {
            d(i);
        }
        return b2;
    }

    int a(int i, com.applovin.exoplayer2.w wVar, com.applovin.exoplayer2.c.g gVar, int i2) {
        if (m()) {
            return -3;
        }
        c(i);
        int a2 = this.v[i].a(wVar, gVar, i2, this.N);
        if (a2 == -3) {
            d(i);
        }
        return a2;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long a(long j, av avVar) {
        s();
        if (this.B.a()) {
            v.a a2 = this.B.a(j);
            return avVar.a(j, a2.f2708a.f2713b, a2.f2709b.f2713b);
        }
        return 0L;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long a(com.applovin.exoplayer2.j.d[] dVarArr, boolean[] zArr, x[] xVarArr, boolean[] zArr2, long j) {
        com.applovin.exoplayer2.j.d dVar;
        s();
        ad adVar = this.A.f3115a;
        boolean[] zArr3 = this.A.f3117c;
        int i = this.H;
        int i2 = 0;
        for (int i3 = 0; i3 < dVarArr.length; i3++) {
            x xVar = xVarArr[i3];
            if (xVar != null && (dVarArr[i3] == null || !zArr[i3])) {
                int i4 = ((c) xVar).f3112b;
                com.applovin.exoplayer2.l.a.b(zArr3[i4]);
                this.H--;
                zArr3[i4] = false;
                xVarArr[i3] = null;
            }
        }
        boolean z = !this.F ? j == 0 : i != 0;
        for (int i5 = 0; i5 < dVarArr.length; i5++) {
            if (xVarArr[i5] == null && (dVar = dVarArr[i5]) != null) {
                com.applovin.exoplayer2.l.a.b(dVar.e() == 1);
                com.applovin.exoplayer2.l.a.b(dVar.b(0) == 0);
                int a2 = adVar.a(dVar.d());
                com.applovin.exoplayer2.l.a.b(!zArr3[a2]);
                this.H++;
                zArr3[a2] = true;
                xVarArr[i5] = new c(a2);
                zArr2[i5] = true;
                if (!z) {
                    w wVar = this.v[a2];
                    z = (wVar.a(j, true) || wVar.f() == 0) ? false : true;
                }
            }
        }
        if (this.H == 0) {
            this.L = false;
            this.G = false;
            if (this.n.c()) {
                w[] wVarArr = this.v;
                int length = wVarArr.length;
                while (i2 < length) {
                    wVarArr[i2].k();
                    i2++;
                }
                this.n.d();
            } else {
                w[] wVarArr2 = this.v;
                int length2 = wVarArr2.length;
                while (i2 < length2) {
                    wVarArr2[i2].b();
                    i2++;
                }
            }
        } else if (z) {
            j = b(j);
            while (i2 < xVarArr.length) {
                if (xVarArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.F = true;
        return j;
    }

    @Override // com.applovin.exoplayer2.e.j
    public com.applovin.exoplayer2.e.x a(int i, int i2) {
        return a(new d(i, false));
    }

    @Override // com.applovin.exoplayer2.k.w.a
    public w.b a(a aVar, long j, long j2, IOException iOException, int i) {
        boolean z;
        a aVar2;
        w.b a2;
        a(aVar);
        com.applovin.exoplayer2.k.z zVar = aVar.f3106d;
        j jVar = new j(aVar.f3104b, aVar.l, zVar.e(), zVar.f(), j, j2, zVar.d());
        long a3 = this.f3101g.a(new v.a(jVar, new m(1, -1, null, 0, null, com.applovin.exoplayer2.h.a(aVar.k), com.applovin.exoplayer2.h.a(this.C)), iOException, i));
        if (a3 == C.TIME_UNSET) {
            a2 = com.applovin.exoplayer2.k.w.f3716d;
        } else {
            int p = p();
            if (p > this.M) {
                aVar2 = aVar;
                z = true;
            } else {
                z = false;
                aVar2 = aVar;
            }
            a2 = a(aVar2, p) ? com.applovin.exoplayer2.k.w.a(z, a3) : com.applovin.exoplayer2.k.w.f3715c;
        }
        boolean z2 = !a2.a();
        this.f3102h.a(jVar, 1, -1, null, 0, null, aVar.k, this.C, iOException, z2);
        if (z2) {
            this.f3101g.a(aVar.f3104b);
        }
        return a2;
    }

    @Override // com.applovin.exoplayer2.e.j
    public void a() {
        this.x = true;
        this.s.post(this.q);
    }

    @Override // com.applovin.exoplayer2.h.n
    public void a(long j) {
    }

    @Override // com.applovin.exoplayer2.h.n
    public void a(long j, boolean z) {
        s();
        if (r()) {
            return;
        }
        boolean[] zArr = this.A.f3117c;
        int length = this.v.length;
        for (int i = 0; i < length; i++) {
            this.v[i].a(j, z, zArr[i]);
        }
    }

    @Override // com.applovin.exoplayer2.e.j
    public void a(final com.applovin.exoplayer2.e.v vVar) {
        this.s.post(new Runnable() { // from class: com.applovin.exoplayer2.h.t$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                t.this.c(vVar);
            }
        });
    }

    @Override // com.applovin.exoplayer2.h.n
    public void a(n.a aVar, long j) {
        this.t = aVar;
        this.p.a();
        o();
    }

    @Override // com.applovin.exoplayer2.k.w.a
    public void a(a aVar, long j, long j2) {
        com.applovin.exoplayer2.e.v vVar;
        if (this.C == C.TIME_UNSET && (vVar = this.B) != null) {
            boolean a2 = vVar.a();
            long q = q();
            long j3 = q == Long.MIN_VALUE ? 0L : q + 10000;
            this.C = j3;
            this.j.a(j3, a2, this.D);
        }
        com.applovin.exoplayer2.k.z zVar = aVar.f3106d;
        j jVar = new j(aVar.f3104b, aVar.l, zVar.e(), zVar.f(), j, j2, zVar.d());
        this.f3101g.a(aVar.f3104b);
        this.f3102h.b(jVar, 1, -1, null, 0, null, aVar.k, this.C);
        a(aVar);
        this.N = true;
        ((n.a) com.applovin.exoplayer2.l.a.b(this.t)).a((n.a) this);
    }

    @Override // com.applovin.exoplayer2.k.w.a
    public void a(a aVar, long j, long j2, boolean z) {
        com.applovin.exoplayer2.k.z zVar = aVar.f3106d;
        j jVar = new j(aVar.f3104b, aVar.l, zVar.e(), zVar.f(), j, j2, zVar.d());
        this.f3101g.a(aVar.f3104b);
        this.f3102h.c(jVar, 1, -1, null, 0, null, aVar.k, this.C);
        if (z) {
            return;
        }
        a(aVar);
        for (w wVar : this.v) {
            wVar.b();
        }
        if (this.H > 0) {
            ((n.a) com.applovin.exoplayer2.l.a.b(this.t)).a((n.a) this);
        }
    }

    @Override // com.applovin.exoplayer2.h.w.c
    public void a(com.applovin.exoplayer2.v vVar) {
        this.s.post(this.q);
    }

    boolean a(int i) {
        return !m() && this.v[i].b(this.N);
    }

    @Override // com.applovin.exoplayer2.h.n
    public long b(long j) {
        s();
        boolean[] zArr = this.A.f3116b;
        if (!this.B.a()) {
            j = 0;
        }
        int i = 0;
        this.G = false;
        this.J = j;
        if (r()) {
            this.K = j;
            return j;
        } else if (this.E == 7 || !a(zArr, j)) {
            this.L = false;
            this.K = j;
            this.N = false;
            if (this.n.c()) {
                w[] wVarArr = this.v;
                int length = wVarArr.length;
                while (i < length) {
                    wVarArr[i].k();
                    i++;
                }
                this.n.d();
            } else {
                this.n.b();
                w[] wVarArr2 = this.v;
                int length2 = wVarArr2.length;
                while (i < length2) {
                    wVarArr2[i].b();
                    i++;
                }
            }
            return j;
        } else {
            return j;
        }
    }

    @Override // com.applovin.exoplayer2.h.n
    public ad b() {
        s();
        return this.A.f3115a;
    }

    void b(int i) throws IOException {
        this.v[i].e();
        i();
    }

    @Override // com.applovin.exoplayer2.h.n
    public long c() {
        if (this.G) {
            if (this.N || p() > this.M) {
                this.G = false;
                return this.J;
            }
            return C.TIME_UNSET;
        }
        return C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.h.n
    public boolean c(long j) {
        if (this.N || this.n.a() || this.L) {
            return false;
        }
        if (this.y && this.H == 0) {
            return false;
        }
        boolean a2 = this.p.a();
        if (this.n.c()) {
            return a2;
        }
        o();
        return true;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long d() {
        long j;
        s();
        boolean[] zArr = this.A.f3116b;
        if (this.N) {
            return Long.MIN_VALUE;
        }
        if (r()) {
            return this.K;
        }
        if (this.z) {
            int length = this.v.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                if (zArr[i] && !this.v[i].j()) {
                    j = Math.min(j, this.v[i].h());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = q();
        }
        return j == Long.MIN_VALUE ? this.J : j;
    }

    @Override // com.applovin.exoplayer2.h.n
    public long e() {
        if (this.H == 0) {
            return Long.MIN_VALUE;
        }
        return d();
    }

    @Override // com.applovin.exoplayer2.h.n
    public void e_() throws IOException {
        i();
        if (this.N && !this.y) {
            throw com.applovin.exoplayer2.ai.b("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.applovin.exoplayer2.h.n
    public boolean f() {
        return this.n.c() && this.p.e();
    }

    public void g() {
        if (this.y) {
            for (w wVar : this.v) {
                wVar.d();
            }
        }
        this.n.a(this);
        this.s.removeCallbacksAndMessages(null);
        this.t = null;
        this.O = true;
    }

    @Override // com.applovin.exoplayer2.k.w.e
    public void h() {
        for (w wVar : this.v) {
            wVar.a();
        }
        this.o.a();
    }

    void i() throws IOException {
        this.n.a(this.f3101g.a(this.E));
    }

    com.applovin.exoplayer2.e.x j() {
        return a(new d(0, true));
    }
}
