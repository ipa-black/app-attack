package com.applovin.exoplayer2.d;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.applovin.exoplayer2.common.a.aq;
import com.applovin.exoplayer2.common.a.ax;
import com.applovin.exoplayer2.common.a.w;
import com.applovin.exoplayer2.d.b;
import com.applovin.exoplayer2.d.c;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.d.h;
import com.applovin.exoplayer2.d.m;
import com.applovin.exoplayer2.k.v;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes.dex */
public class c implements h {

    /* renamed from: a  reason: collision with root package name */
    volatile HandlerC0031c f1981a;

    /* renamed from: d  reason: collision with root package name */
    private final UUID f1982d;

    /* renamed from: e  reason: collision with root package name */
    private final m.c f1983e;

    /* renamed from: f  reason: collision with root package name */
    private final r f1984f;

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f1985g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f1986h;
    private final int[] i;
    private final boolean j;
    private final f k;
    private final v l;
    private final g m;
    private final long n;
    private final List<com.applovin.exoplayer2.d.b> o;
    private final Set<e> p;
    private final Set<com.applovin.exoplayer2.d.b> q;
    private int r;
    private m s;
    private com.applovin.exoplayer2.d.b t;
    private com.applovin.exoplayer2.d.b u;
    private Looper v;
    private Handler w;
    private int x;
    private byte[] y;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: d  reason: collision with root package name */
        private boolean f1990d;

        /* renamed from: f  reason: collision with root package name */
        private boolean f1992f;

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<String, String> f1987a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private UUID f1988b = com.applovin.exoplayer2.h.f2971d;

        /* renamed from: c  reason: collision with root package name */
        private m.c f1989c = o.f2038a;

        /* renamed from: g  reason: collision with root package name */
        private v f1993g = new com.applovin.exoplayer2.k.r();

        /* renamed from: e  reason: collision with root package name */
        private int[] f1991e = new int[0];

        /* renamed from: h  reason: collision with root package name */
        private long f1994h = 300000;

        public a a(UUID uuid, m.c cVar) {
            this.f1988b = (UUID) com.applovin.exoplayer2.l.a.b(uuid);
            this.f1989c = (m.c) com.applovin.exoplayer2.l.a.b(cVar);
            return this;
        }

        public a a(boolean z) {
            this.f1990d = z;
            return this;
        }

        public a a(int... iArr) {
            for (int i : iArr) {
                boolean z = true;
                if (i != 2 && i != 1) {
                    z = false;
                }
                com.applovin.exoplayer2.l.a.a(z);
            }
            this.f1991e = (int[]) iArr.clone();
            return this;
        }

        public c a(r rVar) {
            return new c(this.f1988b, this.f1989c, rVar, this.f1987a, this.f1990d, this.f1991e, this.f1992f, this.f1993g, this.f1994h);
        }

        public a b(boolean z) {
            this.f1992f = z;
            return this;
        }
    }

    /* loaded from: classes.dex */
    private class b implements m.b {
        private b() {
        }

        @Override // com.applovin.exoplayer2.d.m.b
        public void a(m mVar, byte[] bArr, int i, int i2, byte[] bArr2) {
            ((HandlerC0031c) com.applovin.exoplayer2.l.a.b(c.this.f1981a)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.d.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class HandlerC0031c extends Handler {
        public HandlerC0031c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (com.applovin.exoplayer2.d.b bVar : c.this.o) {
                if (bVar.a(bArr)) {
                    bVar.a(message.what);
                    return;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends Exception {
        private d(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e implements h.a {

        /* renamed from: c  reason: collision with root package name */
        private final g.a f1998c;

        /* renamed from: d  reason: collision with root package name */
        private com.applovin.exoplayer2.d.f f1999d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f2000e;

        public e(g.a aVar) {
            this.f1998c = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            if (this.f2000e) {
                return;
            }
            com.applovin.exoplayer2.d.f fVar = this.f1999d;
            if (fVar != null) {
                fVar.b(this.f1998c);
            }
            c.this.p.remove(this);
            this.f2000e = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(com.applovin.exoplayer2.v vVar) {
            if (c.this.r == 0 || this.f2000e) {
                return;
            }
            c cVar = c.this;
            this.f1999d = cVar.a((Looper) com.applovin.exoplayer2.l.a.b(cVar.v), this.f1998c, vVar, false);
            c.this.p.add(this);
        }

        public void a(final com.applovin.exoplayer2.v vVar) {
            ((Handler) com.applovin.exoplayer2.l.a.b(c.this.w)).post(new Runnable() { // from class: com.applovin.exoplayer2.d.c$e$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    c.e.this.b(vVar);
                }
            });
        }

        @Override // com.applovin.exoplayer2.d.h.a
        public void release() {
            ai.a((Handler) com.applovin.exoplayer2.l.a.b(c.this.w), new Runnable() { // from class: com.applovin.exoplayer2.d.c$e$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    c.e.this.a();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f implements b.a {

        /* renamed from: b  reason: collision with root package name */
        private final Set<com.applovin.exoplayer2.d.b> f2002b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        private com.applovin.exoplayer2.d.b f2003c;

        public f() {
        }

        @Override // com.applovin.exoplayer2.d.b.a
        public void a() {
            this.f2003c = null;
            com.applovin.exoplayer2.common.a.s a2 = com.applovin.exoplayer2.common.a.s.a((Collection) this.f2002b);
            this.f2002b.clear();
            ax it = a2.iterator();
            while (it.hasNext()) {
                ((com.applovin.exoplayer2.d.b) it.next()).b();
            }
        }

        @Override // com.applovin.exoplayer2.d.b.a
        public void a(com.applovin.exoplayer2.d.b bVar) {
            this.f2002b.add(bVar);
            if (this.f2003c != null) {
                return;
            }
            this.f2003c = bVar;
            bVar.a();
        }

        @Override // com.applovin.exoplayer2.d.b.a
        public void a(Exception exc, boolean z) {
            this.f2003c = null;
            com.applovin.exoplayer2.common.a.s a2 = com.applovin.exoplayer2.common.a.s.a((Collection) this.f2002b);
            this.f2002b.clear();
            ax it = a2.iterator();
            while (it.hasNext()) {
                ((com.applovin.exoplayer2.d.b) it.next()).a(exc, z);
            }
        }

        public void b(com.applovin.exoplayer2.d.b bVar) {
            this.f2002b.remove(bVar);
            if (this.f2003c == bVar) {
                this.f2003c = null;
                if (this.f2002b.isEmpty()) {
                    return;
                }
                com.applovin.exoplayer2.d.b next = this.f2002b.iterator().next();
                this.f2003c = next;
                next.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class g implements b.InterfaceC0030b {
        private g() {
        }

        @Override // com.applovin.exoplayer2.d.b.InterfaceC0030b
        public void a(com.applovin.exoplayer2.d.b bVar, int i) {
            if (c.this.n != C.TIME_UNSET) {
                c.this.q.remove(bVar);
                ((Handler) com.applovin.exoplayer2.l.a.b(c.this.w)).removeCallbacksAndMessages(bVar);
            }
        }

        @Override // com.applovin.exoplayer2.d.b.InterfaceC0030b
        public void b(final com.applovin.exoplayer2.d.b bVar, int i) {
            if (i == 1 && c.this.r > 0 && c.this.n != C.TIME_UNSET) {
                c.this.q.add(bVar);
                ((Handler) com.applovin.exoplayer2.l.a.b(c.this.w)).postAtTime(new Runnable() { // from class: com.applovin.exoplayer2.d.c$g$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.this.b(null);
                    }
                }, bVar, SystemClock.uptimeMillis() + c.this.n);
            } else if (i == 0) {
                c.this.o.remove(bVar);
                if (c.this.t == bVar) {
                    c.this.t = null;
                }
                if (c.this.u == bVar) {
                    c.this.u = null;
                }
                c.this.k.b(bVar);
                if (c.this.n != C.TIME_UNSET) {
                    ((Handler) com.applovin.exoplayer2.l.a.b(c.this.w)).removeCallbacksAndMessages(bVar);
                    c.this.q.remove(bVar);
                }
            }
            c.this.e();
        }
    }

    private c(UUID uuid, m.c cVar, r rVar, HashMap<String, String> hashMap, boolean z, int[] iArr, boolean z2, v vVar, long j) {
        com.applovin.exoplayer2.l.a.b(uuid);
        com.applovin.exoplayer2.l.a.a(!com.applovin.exoplayer2.h.f2969b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f1982d = uuid;
        this.f1983e = cVar;
        this.f1984f = rVar;
        this.f1985g = hashMap;
        this.f1986h = z;
        this.i = iArr;
        this.j = z2;
        this.l = vVar;
        this.k = new f();
        this.m = new g();
        this.x = 0;
        this.o = new ArrayList();
        this.p = aq.b();
        this.q = aq.b();
        this.n = j;
    }

    private com.applovin.exoplayer2.d.b a(List<e.a> list, boolean z, g.a aVar) {
        com.applovin.exoplayer2.l.a.b(this.s);
        com.applovin.exoplayer2.d.b bVar = new com.applovin.exoplayer2.d.b(this.f1982d, this.s, this.k, this.m, list, this.x, this.j | z, z, this.y, this.f1985g, this.f1984f, (Looper) com.applovin.exoplayer2.l.a.b(this.v), this.l);
        bVar.a(aVar);
        if (this.n != C.TIME_UNSET) {
            bVar.a((g.a) null);
        }
        return bVar;
    }

    private com.applovin.exoplayer2.d.b a(List<e.a> list, boolean z, g.a aVar, boolean z2) {
        com.applovin.exoplayer2.d.b a2 = a(list, z, aVar);
        if (a(a2) && !this.q.isEmpty()) {
            c();
            a(a2, aVar);
            a2 = a(list, z, aVar);
        }
        if (a(a2) && z2 && !this.p.isEmpty()) {
            d();
            if (!this.q.isEmpty()) {
                c();
            }
            a(a2, aVar);
            return a(list, z, aVar);
        }
        return a2;
    }

    private com.applovin.exoplayer2.d.f a(int i, boolean z) {
        m mVar = (m) com.applovin.exoplayer2.l.a.b(this.s);
        if ((mVar.d() == 2 && n.f2034a) || ai.a(this.i, i) == -1 || mVar.d() == 1) {
            return null;
        }
        com.applovin.exoplayer2.d.b bVar = this.t;
        if (bVar == null) {
            com.applovin.exoplayer2.d.b a2 = a((List<e.a>) com.applovin.exoplayer2.common.a.s.g(), true, (g.a) null, z);
            this.o.add(a2);
            this.t = a2;
        } else {
            bVar.a((g.a) null);
        }
        return this.t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.applovin.exoplayer2.d.f a(Looper looper, g.a aVar, com.applovin.exoplayer2.v vVar, boolean z) {
        List<e.a> list;
        b(looper);
        if (vVar.o == null) {
            return a(com.applovin.exoplayer2.l.u.e(vVar.l), z);
        }
        com.applovin.exoplayer2.d.b bVar = null;
        if (this.y == null) {
            list = a((com.applovin.exoplayer2.d.e) com.applovin.exoplayer2.l.a.b(vVar.o), this.f1982d, false);
            if (list.isEmpty()) {
                d dVar = new d(this.f1982d);
                com.applovin.exoplayer2.l.q.c("DefaultDrmSessionMgr", "DRM error", dVar);
                if (aVar != null) {
                    aVar.a(dVar);
                }
                return new l(new f.a(dVar, 6003));
            }
        } else {
            list = null;
        }
        if (this.f1986h) {
            Iterator<com.applovin.exoplayer2.d.b> it = this.o.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.applovin.exoplayer2.d.b next = it.next();
                if (ai.a(next.f1965a, list)) {
                    bVar = next;
                    break;
                }
            }
        } else {
            bVar = this.u;
        }
        if (bVar == null) {
            bVar = a(list, false, aVar, z);
            if (!this.f1986h) {
                this.u = bVar;
            }
            this.o.add(bVar);
        } else {
            bVar.a(aVar);
        }
        return bVar;
    }

    private static List<e.a> a(com.applovin.exoplayer2.d.e eVar, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(eVar.f2011b);
        for (int i = 0; i < eVar.f2011b; i++) {
            e.a a2 = eVar.a(i);
            if ((a2.a(uuid) || (com.applovin.exoplayer2.h.f2970c.equals(uuid) && a2.a(com.applovin.exoplayer2.h.f2969b))) && (a2.f2017d != null || z)) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    private synchronized void a(Looper looper) {
        Looper looper2 = this.v;
        if (looper2 == null) {
            this.v = looper;
            this.w = new Handler(looper);
        } else {
            com.applovin.exoplayer2.l.a.b(looper2 == looper);
            com.applovin.exoplayer2.l.a.b(this.w);
        }
    }

    private void a(com.applovin.exoplayer2.d.f fVar, g.a aVar) {
        fVar.b(aVar);
        if (this.n != C.TIME_UNSET) {
            fVar.b(null);
        }
    }

    private boolean a(com.applovin.exoplayer2.d.e eVar) {
        if (this.y != null) {
            return true;
        }
        if (a(eVar, this.f1982d, true).isEmpty()) {
            if (eVar.f2011b != 1 || !eVar.a(0).a(com.applovin.exoplayer2.h.f2969b)) {
                return false;
            }
            com.applovin.exoplayer2.l.q.c("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f1982d);
        }
        String str = eVar.f2010a;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        return C.CENC_TYPE_cbcs.equals(str) ? ai.f3781a >= 25 : (C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    private static boolean a(com.applovin.exoplayer2.d.f fVar) {
        return fVar.c() == 1 && (ai.f3781a < 19 || (((f.a) com.applovin.exoplayer2.l.a.b(fVar.e())).getCause() instanceof ResourceBusyException));
    }

    private void b(Looper looper) {
        if (this.f1981a == null) {
            this.f1981a = new HandlerC0031c(looper);
        }
    }

    private void c() {
        ax it = w.a((Collection) this.q).iterator();
        while (it.hasNext()) {
            ((com.applovin.exoplayer2.d.f) it.next()).b(null);
        }
    }

    private void d() {
        ax it = w.a((Collection) this.p).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.s != null && this.r == 0 && this.o.isEmpty() && this.p.isEmpty()) {
            ((m) com.applovin.exoplayer2.l.a.b(this.s)).c();
            this.s = null;
        }
    }

    @Override // com.applovin.exoplayer2.d.h
    public int a(com.applovin.exoplayer2.v vVar) {
        int d2 = ((m) com.applovin.exoplayer2.l.a.b(this.s)).d();
        if (vVar.o != null) {
            if (a(vVar.o)) {
                return d2;
            }
            return 1;
        }
        if (ai.a(this.i, com.applovin.exoplayer2.l.u.e(vVar.l)) != -1) {
            return d2;
        }
        return 0;
    }

    @Override // com.applovin.exoplayer2.d.h
    public h.a a(Looper looper, g.a aVar, com.applovin.exoplayer2.v vVar) {
        com.applovin.exoplayer2.l.a.b(this.r > 0);
        a(looper);
        e eVar = new e(aVar);
        eVar.a(vVar);
        return eVar;
    }

    @Override // com.applovin.exoplayer2.d.h
    public final void a() {
        int i = this.r;
        this.r = i + 1;
        if (i != 0) {
            return;
        }
        if (this.s == null) {
            m acquireExoMediaDrm = this.f1983e.acquireExoMediaDrm(this.f1982d);
            this.s = acquireExoMediaDrm;
            acquireExoMediaDrm.a(new b());
        } else if (this.n != C.TIME_UNSET) {
            for (int i2 = 0; i2 < this.o.size(); i2++) {
                this.o.get(i2).a((g.a) null);
            }
        }
    }

    public void a(int i, byte[] bArr) {
        com.applovin.exoplayer2.l.a.b(this.o.isEmpty());
        if (i == 1 || i == 3) {
            com.applovin.exoplayer2.l.a.b(bArr);
        }
        this.x = i;
        this.y = bArr;
    }

    @Override // com.applovin.exoplayer2.d.h
    public com.applovin.exoplayer2.d.f b(Looper looper, g.a aVar, com.applovin.exoplayer2.v vVar) {
        com.applovin.exoplayer2.l.a.b(this.r > 0);
        a(looper);
        return a(looper, aVar, vVar, true);
    }

    @Override // com.applovin.exoplayer2.d.h
    public final void b() {
        int i = this.r - 1;
        this.r = i;
        if (i != 0) {
            return;
        }
        if (this.n != C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.o);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((com.applovin.exoplayer2.d.b) arrayList.get(i2)).b(null);
            }
        }
        d();
        e();
    }
}
