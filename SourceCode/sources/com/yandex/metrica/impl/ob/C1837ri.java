package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
import com.yandex.metrica.impl.ob.C1516ei;
import com.yandex.metrica.impl.ob.C1790pi;
import com.yandex.metrica.impl.ob.C1814qi;
import com.yandex.metrica.impl.ob.Mg;
import com.yandex.metrica.networktasks.api.NetworkTask;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
/* renamed from: com.yandex.metrica.impl.ob.ri  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1837ri {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15655a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f15656b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1765oi f15657c;

    /* renamed from: d  reason: collision with root package name */
    private final C1790pi.b f15658d;

    /* renamed from: e  reason: collision with root package name */
    private volatile NetworkTask f15659e;

    /* renamed from: f  reason: collision with root package name */
    private C1541fi f15660f;

    /* renamed from: g  reason: collision with root package name */
    private final TimeProvider f15661g;

    /* renamed from: h  reason: collision with root package name */
    private final I f15662h;
    private final Rh i;
    private final C1675l3 j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ri$a */
    /* loaded from: classes5.dex */
    public class a implements Function0<I> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public I invoke() {
            return C1837ri.this.f15662h;
        }
    }

    public C1837ri(Context context, String str, Mg.b bVar, InterfaceC1765oi interfaceC1765oi) {
        this(context, new E3(str), bVar, interfaceC1765oi, new C1790pi.b(context), new Pl(context), new SystemTimeProvider(), F0.g().d(), new Rh(), C1675l3.a());
    }

    public Context b() {
        return this.f15655a;
    }

    public synchronized NetworkTask c() {
        if (e()) {
            if (this.f15659e == null) {
                this.f15659e = C1832rd.a(this, this.f15660f.b());
            }
            return this.f15659e;
        }
        return null;
    }

    public C1790pi d() {
        return this.f15660f.d();
    }

    public synchronized boolean e() {
        boolean b2;
        C1790pi d2 = this.f15660f.d();
        b2 = C1740ni.b(d2);
        if (!b2 && !(!C1740ni.a(d2))) {
            if (!this.i.a(this.f15660f.b().C(), d2, this.f15662h)) {
                b2 = true;
            }
        }
        return b2;
    }

    private void a(Pl pl, C1492dj c1492dj, C1790pi c1790pi) {
        C1790pi.a a2 = c1790pi.a();
        if (!C1740ni.a(c1790pi.V())) {
            a2 = a2.k(c1492dj.a().f14173a);
        }
        String a3 = pl.a();
        if (!C1740ni.a(c1790pi.i())) {
            a2 = a2.c(a3).d("");
        }
        C1790pi a4 = a2.a();
        b(a4);
        a(a4);
    }

    private synchronized void b(C1790pi c1790pi) {
        this.f15660f.a(c1790pi);
        this.f15658d.a(c1790pi);
        F0.g().a(c1790pi);
        this.j.a((C1725n3) new C1799q3(this.f15656b.b(), c1790pi));
    }

    private C1837ri(Context context, I3 i3, Mg.b bVar, InterfaceC1765oi interfaceC1765oi, C1790pi.b bVar2, Pl pl, TimeProvider timeProvider, I i, Rh rh, C1675l3 c1675l3) {
        this(context, i3, bVar, interfaceC1765oi, bVar2, bVar2.a(), pl, timeProvider, i, rh, c1675l3);
    }

    public I3 a() {
        return this.f15656b;
    }

    public void a(EnumC1566gi enumC1566gi) {
        HashMap hashMap;
        C1841rm c1841rm;
        ArrayList<InterfaceC1665ki> arrayList;
        synchronized (this) {
            this.f15659e = null;
        }
        InterfaceC1765oi interfaceC1765oi = this.f15657c;
        String b2 = this.f15656b.b();
        C1790pi d2 = this.f15660f.d();
        C1516ei.a aVar = (C1516ei.a) interfaceC1765oi;
        hashMap = C1516ei.this.f14692b;
        synchronized (hashMap) {
            c1841rm = C1516ei.this.f14691a;
            Collection a2 = c1841rm.a(b2);
            if (a2 == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(a2);
            }
        }
        for (InterfaceC1665ki interfaceC1665ki : arrayList) {
            interfaceC1665ki.a(enumC1566gi, d2);
        }
    }

    private C1837ri(Context context, I3 i3, Mg.b bVar, InterfaceC1765oi interfaceC1765oi, C1790pi.b bVar2, C1790pi c1790pi, Pl pl, TimeProvider timeProvider, I i, Rh rh, C1675l3 c1675l3) {
        this(context, i3, interfaceC1765oi, bVar2, c1790pi, pl, new C1541fi(new Mg.c(context, i3.b()), c1790pi, bVar), timeProvider, i, rh, C1517ej.a(context).a(context, new C1616ij(bVar2)), c1675l3);
    }

    C1837ri(Context context, I3 i3, InterfaceC1765oi interfaceC1765oi, C1790pi.b bVar, C1790pi c1790pi, Pl pl, C1541fi c1541fi, TimeProvider timeProvider, I i, Rh rh, C1492dj c1492dj, C1675l3 c1675l3) {
        this.f15655a = context;
        this.f15656b = i3;
        this.f15657c = interfaceC1765oi;
        this.f15658d = bVar;
        this.f15660f = c1541fi;
        this.f15661g = timeProvider;
        this.f15662h = i;
        this.i = rh;
        this.j = c1675l3;
        a(pl, c1492dj, c1790pi);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0051 A[Catch: all -> 0x005c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0008, B:14:0x0036, B:17:0x003d, B:18:0x0050, B:20:0x0053, B:21:0x0054, B:22:0x0057, B:19:0x0051), top: B:34:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.yandex.metrica.impl.ob.Ui r6, com.yandex.metrica.impl.ob.Mg r7, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r8) {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = com.yandex.metrica.impl.ob.A2.b(r8)     // Catch: java.lang.Throwable -> L5f
            r1 = 0
            if (r0 != 0) goto L33
            java.lang.String r0 = "Date"
            java.lang.Object r8 = r8.get(r0)     // Catch: java.lang.Throwable -> L5f
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Throwable -> L5f
            boolean r0 = com.yandex.metrica.impl.ob.A2.b(r8)     // Catch: java.lang.Throwable -> L5f
            if (r0 != 0) goto L33
            r0 = 0
            java.lang.Object r8 = r8.get(r0)     // Catch: java.lang.Throwable -> L33
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L33
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat     // Catch: java.lang.Throwable -> L33
            java.lang.String r2 = "E, d MMM yyyy HH:mm:ss z"
            java.util.Locale r3 = java.util.Locale.US     // Catch: java.lang.Throwable -> L33
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> L33
            java.util.Date r8 = r0.parse(r8)     // Catch: java.lang.Throwable -> L33
            long r2 = r8.getTime()     // Catch: java.lang.Throwable -> L33
            java.lang.Long r8 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L33
            goto L34
        L33:
            r8 = r1
        L34:
            r2 = 0
            java.lang.Long r0 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L5f
            if (r8 != 0) goto L3d
            r8 = r0
        L3d:
            java.lang.Long r0 = r6.N()     // Catch: java.lang.Throwable -> L5f
            com.yandex.metrica.impl.ob.fm r2 = com.yandex.metrica.impl.ob.C1545fm.c()     // Catch: java.lang.Throwable -> L5f
            long r3 = r8.longValue()     // Catch: java.lang.Throwable -> L5f
            r2.a(r3, r0)     // Catch: java.lang.Throwable -> L5f
            com.yandex.metrica.impl.ob.pi r6 = r5.a(r6, r7, r8)     // Catch: java.lang.Throwable -> L5f
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L5f
            r5.f15659e = r1     // Catch: java.lang.Throwable -> L5c
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L5f
            r5.b(r6)     // Catch: java.lang.Throwable -> L5f
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L5f
            r5.a(r6)
            return
        L5c:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L5f
            throw r6     // Catch: java.lang.Throwable -> L5f
        L5f:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L5f
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1837ri.a(com.yandex.metrica.impl.ob.Ui, com.yandex.metrica.impl.ob.Mg, java.util.Map):void");
    }

    protected C1790pi a(Ui ui, Mg mg, Long l) {
        boolean equals;
        String c2 = Tl.c(mg.C());
        Map<String, String> b2 = mg.B().b();
        String n = ui.n();
        String n2 = this.f15660f.d().n();
        if (!Tl.d(Tl.a(n))) {
            n = Tl.d(Tl.a(n2)) ? n2 : null;
        }
        String i = this.f15660f.d().i();
        if (TextUtils.isEmpty(i)) {
            i = ui.i();
        }
        C1790pi.a h2 = new C1790pi.a(new C1814qi.b(ui.e())).c(i).d(ui.h()).c(this.f15661g.currentTimeSeconds()).k(this.f15660f.d().V()).f(ui.o()).c(ui.G()).b(mg.J()).i(ui.y()).e(ui.r()).i(ui.x()).j(ui.D()).a(ui.d()).a(ui.j()).g(ui.t()).a(ui.g()).e(n).h(c2);
        this.i.getClass();
        Map<String, String> a2 = Tl.a(n);
        if (A2.b(b2)) {
            equals = A2.b(a2);
        } else {
            equals = a2.equals(b2);
        }
        C1790pi.a a3 = h2.c(equals).g(Tl.c(b2)).a(ui.E()).d(ui.q()).j(ui.z()).b(ui.f()).a(ui.w()).h(ui.v()).a(ui.C()).a(ui.H()).a(true);
        Long valueOf = Long.valueOf((System.currentTimeMillis() / 1000) * 1000);
        if (l != null) {
            valueOf = l;
        }
        return a3.b(valueOf.longValue()).a(this.f15660f.b().a(l.longValue())).b(false).a(ui.p()).a(ui.B()).a(ui.L()).b(ui.K()).c(ui.M()).a(ui.J()).a(ui.I()).a(ui.c()).a(ui.k()).f(ui.s()).a(ui.b()).a(ui.a()).a(ui.l()).a(ui.m()).a(ui.F()).b(ui.u()).a();
    }

    private void a(C1790pi c1790pi) {
        HashMap hashMap;
        C1841rm c1841rm;
        ArrayList<InterfaceC1665ki> arrayList;
        InterfaceC1765oi interfaceC1765oi = this.f15657c;
        String b2 = this.f15656b.b();
        C1516ei.a aVar = (C1516ei.a) interfaceC1765oi;
        hashMap = C1516ei.this.f14692b;
        synchronized (hashMap) {
            C1516ei.this.f14693c = c1790pi;
            c1841rm = C1516ei.this.f14691a;
            Collection a2 = c1841rm.a(b2);
            if (a2 == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(a2);
            }
        }
        for (InterfaceC1665ki interfaceC1665ki : arrayList) {
            interfaceC1665ki.a(c1790pi);
        }
    }

    public synchronized boolean a(List<String> list, Map<String, String> map) {
        return !C1740ni.a(this.f15660f.d(), list, map, new a());
    }

    public synchronized void a(Mg.b bVar) {
        boolean z;
        this.f15660f.a(bVar);
        Mg b2 = this.f15660f.b();
        if (b2.K()) {
            List<String> G = b2.G();
            boolean z2 = true;
            C1790pi.a aVar = null;
            if (!A2.b(G) || A2.b(b2.J())) {
                z = false;
            } else {
                aVar = this.f15660f.d().a().b((List<String>) null);
                z = true;
            }
            if (A2.b(G) || A2.a(G, b2.J())) {
                z2 = z;
            } else {
                aVar = this.f15660f.d().a().b(G);
            }
            if (z2) {
                C1790pi a2 = aVar.a();
                b(a2);
                a(a2);
            }
        }
    }
}
