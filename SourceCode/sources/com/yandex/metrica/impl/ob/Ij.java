package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.If;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Ij extends AbstractC1815qj {

    /* renamed from: a  reason: collision with root package name */
    private final TelephonyManager f13207a;

    /* renamed from: b  reason: collision with root package name */
    private PhoneStateListener f13208b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f13209c;

    /* renamed from: d  reason: collision with root package name */
    private C1790pi f13210d;

    /* renamed from: e  reason: collision with root package name */
    private C1709mc f13211e;

    /* renamed from: f  reason: collision with root package name */
    private final G<Zj> f13212f;

    /* renamed from: g  reason: collision with root package name */
    private final G<Collection<C1910uj>> f13213g;

    /* renamed from: h  reason: collision with root package name */
    private final ICommonExecutor f13214h;
    private final Context i;
    private final C1958wj j;
    private final Uj k;
    private final C1838rj l;
    private final Ed m;
    private C2000yd n;
    private Lj o;
    private final InterfaceC2024zd p;
    private final C1675l3 q;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Ij.this.f13208b = new d(Ij.this, null);
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Ij.this.f13209c) {
                return;
            }
            Ij.this.f13209c = true;
            if (Ij.this.f13208b == null || Ij.this.f13207a == null) {
                return;
            }
            try {
                Ij.this.f13207a.listen(Ij.this.f13208b, 256);
            } catch (Throwable unused) {
            }
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Ij.this.f13209c) {
                Ij.this.f13209c = false;
                Ij.this.q.a(Ij.this);
                if (Ij.this.f13208b == null || Ij.this.f13207a == null) {
                    return;
                }
                try {
                    Ij.this.f13207a.listen(Ij.this.f13208b, 0);
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    private class d extends PhoneStateListener {
        private d() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            super.onSignalStrengthsChanged(signalStrength);
            Ij.a(Ij.this, signalStrength);
        }

        /* synthetic */ d(Ij ij, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Ij(Context context, ICommonExecutor iCommonExecutor) {
        this(context, new Ed(), iCommonExecutor);
    }

    public Context e() {
        return this.i;
    }

    public TelephonyManager f() {
        return this.f13207a;
    }

    synchronized Zj g() {
        C1910uj b2;
        if (this.f13212f.b() || this.f13212f.d()) {
            Zj zj = new Zj(this.j, this.k, this.l);
            C1910uj b3 = zj.b();
            if (b3 != null && b3.p() == null && !this.f13212f.b() && (b2 = this.f13212f.a().b()) != null) {
                zj.b().a(b2.p());
            }
            this.f13212f.a(zj);
        }
        return this.f13212f.a();
    }

    protected Ij(Context context, Ed ed, ICommonExecutor iCommonExecutor) {
        this(context, ed, new C2000yd(ed.a()), iCommonExecutor, A2.a(17) ? new C1862sj() : new C1886tj(), new G1(), C1675l3.a());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public synchronized void b() {
        this.f13214h.execute(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean c() {
        boolean z;
        C1709mc c1709mc = this.f13211e;
        if (c1709mc != null) {
            z = c1709mc.l;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0014, code lost:
        if (r0.f().s != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean d() {
        /*
            r4 = this;
            monitor-enter(r4)
            monitor-enter(r4)     // Catch: java.lang.Throwable -> L1d
            com.yandex.metrica.impl.ob.pi r0 = r4.f13210d     // Catch: java.lang.Throwable -> L1a
            r1 = 1
            r2 = 0
            if (r0 == 0) goto La
            r3 = r1
            goto Lb
        La:
            r3 = r2
        Lb:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1d
            if (r3 == 0) goto L17
            com.yandex.metrica.impl.ob.Sh r0 = r0.f()     // Catch: java.lang.Throwable -> L1d
            boolean r0 = r0.s     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto L17
            goto L18
        L17:
            r1 = r2
        L18:
            monitor-exit(r4)
            return r1
        L1a:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1d
            throw r0     // Catch: java.lang.Throwable -> L1d
        L1d:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Ij.d():boolean");
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public synchronized void a() {
        this.f13214h.execute(new b());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public synchronized void a(InterfaceC1418ak interfaceC1418ak) {
        if (interfaceC1418ak != null) {
            interfaceC1418ak.a(g());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x004f A[Catch: all -> 0x0097, LOOP:0: B:29:0x004f->B:34:0x0066, LOOP_START, PHI: r5 
      PHI: (r5v2 int) = (r5v1 int), (r5v3 int) binds: [B:28:0x004d, B:34:0x0066] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {, blocks: (B:4:0x0003, B:48:0x0092, B:49:0x0093, B:5:0x0004, B:7:0x000c, B:47:0x008a, B:9:0x0014, B:11:0x0025, B:13:0x002f, B:20:0x003c, B:22:0x003f, B:27:0x0049, B:29:0x004f, B:31:0x0055, B:33:0x0063, B:34:0x0066, B:38:0x006c, B:40:0x0072, B:46:0x0087, B:43:0x007d, B:44:0x0082, B:14:0x0030, B:16:0x0035), top: B:59:0x0003 }] */
    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.yandex.metrica.impl.ob.InterfaceC1934vj r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            if (r9 == 0) goto L9d
            monitor-enter(r8)     // Catch: java.lang.Throwable -> L9a
            com.yandex.metrica.impl.ob.G<java.util.Collection<com.yandex.metrica.impl.ob.uj>> r0 = r8.f13213g     // Catch: java.lang.Throwable -> L97
            boolean r0 = r0.b()     // Catch: java.lang.Throwable -> L97
            if (r0 != 0) goto L14
            com.yandex.metrica.impl.ob.G<java.util.Collection<com.yandex.metrica.impl.ob.uj>> r0 = r8.f13213g     // Catch: java.lang.Throwable -> L97
            boolean r0 = r0.d()     // Catch: java.lang.Throwable -> L97
            if (r0 == 0) goto L8a
        L14:
            com.yandex.metrica.impl.ob.G<java.util.Collection<com.yandex.metrica.impl.ob.uj>> r0 = r8.f13213g     // Catch: java.lang.Throwable -> L97
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L97
            r1.<init>()     // Catch: java.lang.Throwable -> L97
            r2 = 17
            boolean r2 = com.yandex.metrica.impl.ob.A2.a(r2)     // Catch: java.lang.Throwable -> L97
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L6c
            com.yandex.metrica.impl.ob.zd r2 = r8.p     // Catch: java.lang.Throwable -> L97
            android.content.Context r5 = r8.i     // Catch: java.lang.Throwable -> L97
            boolean r2 = r2.a(r5)     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L6c
            monitor-enter(r8)     // Catch: java.lang.Throwable -> L97
            com.yandex.metrica.impl.ob.mc r2 = r8.f13211e     // Catch: java.lang.Throwable -> L69
            r5 = 0
            if (r2 == 0) goto L3b
            boolean r2 = r2.k     // Catch: java.lang.Throwable -> L69
            if (r2 == 0) goto L3b
            r2 = r4
            goto L3c
        L3b:
            r2 = r5
        L3c:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L6c
            android.telephony.TelephonyManager r2 = r8.f13207a     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L48
            java.util.List r2 = r2.getAllCellInfo()     // Catch: java.lang.Throwable -> L48
            goto L49
        L48:
            r2 = r3
        L49:
            boolean r6 = com.yandex.metrica.impl.ob.A2.b(r2)     // Catch: java.lang.Throwable -> L97
            if (r6 != 0) goto L6c
        L4f:
            int r6 = r2.size()     // Catch: java.lang.Throwable -> L97
            if (r5 >= r6) goto L6c
            java.lang.Object r6 = r2.get(r5)     // Catch: java.lang.Throwable -> L97
            android.telephony.CellInfo r6 = (android.telephony.CellInfo) r6     // Catch: java.lang.Throwable -> L97
            com.yandex.metrica.impl.ob.Lj r7 = r8.o     // Catch: java.lang.Throwable -> L97
            com.yandex.metrica.impl.ob.uj r6 = r7.a(r6)     // Catch: java.lang.Throwable -> L97
            if (r6 == 0) goto L66
            r1.add(r6)     // Catch: java.lang.Throwable -> L97
        L66:
            int r5 = r5 + 1
            goto L4f
        L69:
            r9 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L97
            throw r9     // Catch: java.lang.Throwable -> L97
        L6c:
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L97
            if (r2 >= r4) goto L82
            com.yandex.metrica.impl.ob.Zj r1 = r8.g()     // Catch: java.lang.Throwable -> L97
            com.yandex.metrica.impl.ob.uj r1 = r1.b()     // Catch: java.lang.Throwable -> L97
            if (r1 != 0) goto L7d
            goto L87
        L7d:
            java.util.List r1 = java.util.Collections.singletonList(r1)     // Catch: java.lang.Throwable -> L97
            goto L86
        L82:
            java.util.List r1 = com.yandex.metrica.impl.ob.A2.c(r1)     // Catch: java.lang.Throwable -> L97
        L86:
            r3 = r1
        L87:
            r0.a(r3)     // Catch: java.lang.Throwable -> L97
        L8a:
            com.yandex.metrica.impl.ob.G<java.util.Collection<com.yandex.metrica.impl.ob.uj>> r0 = r8.f13213g     // Catch: java.lang.Throwable -> L97
            java.lang.Object r0 = r0.a()     // Catch: java.lang.Throwable -> L97
            java.util.Collection r0 = (java.util.Collection) r0     // Catch: java.lang.Throwable -> L97
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L9a
            r9.a(r0)     // Catch: java.lang.Throwable -> L9a
            goto L9d
        L97:
            r9 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L9a
            throw r9     // Catch: java.lang.Throwable -> L9a
        L9a:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        L9d:
            monitor-exit(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Ij.a(com.yandex.metrica.impl.ob.vj):void");
    }

    protected Ij(Context context, Ed ed, C2000yd c2000yd, ICommonExecutor iCommonExecutor, Lj lj, G1 g1, C1675l3 c1675l3) {
        TelephonyManager telephonyManager;
        this.f13209c = false;
        If.c cVar = G.f12951e;
        long j = cVar.f13086a;
        this.f13212f = new G<>(j, j * 2);
        long j2 = cVar.f13086a;
        this.f13213g = new G<>(j2, 2 * j2);
        this.i = context;
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
        } catch (Throwable unused) {
            telephonyManager = null;
        }
        this.f13207a = telephonyManager;
        this.p = a(c2000yd, g1);
        this.f13214h = iCommonExecutor;
        iCommonExecutor.execute(new a());
        this.j = new C1958wj(this, c2000yd);
        this.k = new Uj(this, c2000yd);
        this.l = new C1838rj(this);
        this.m = ed;
        this.n = c2000yd;
        this.o = lj;
        this.q = c1675l3;
    }

    static void a(Ij ij, SignalStrength signalStrength) {
        C1910uj b2;
        int evdoDbm;
        synchronized (ij) {
            if (!ij.f13212f.b() && !ij.f13212f.d() && (b2 = ij.f13212f.a().b()) != null) {
                if (signalStrength.isGsm()) {
                    int gsmSignalStrength = signalStrength.getGsmSignalStrength();
                    evdoDbm = 99 == gsmSignalStrength ? -1 : (gsmSignalStrength * 2) - 113;
                } else {
                    int cdmaDbm = signalStrength.getCdmaDbm();
                    evdoDbm = signalStrength.getEvdoDbm();
                    if (-120 == evdoDbm) {
                        evdoDbm = cdmaDbm;
                    } else if (-120 != cdmaDbm) {
                        evdoDbm = Math.min(cdmaDbm, evdoDbm);
                    }
                }
                b2.a(Integer.valueOf(evdoDbm));
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public void a(C1790pi c1790pi) {
        this.f13210d = c1790pi;
        this.m.a(c1790pi);
        this.n.a(this.m.a());
        this.o.a(c1790pi.f());
        if (c1790pi.d() != null) {
            this.f13212f.a(c1790pi.d().f13716a, c1790pi.d().f13716a * 2);
            this.f13213g.a(c1790pi.d().f13716a, c1790pi.d().f13716a * 2);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1734nc
    public synchronized void a(C1709mc c1709mc) {
        this.f13211e = c1709mc;
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1815qj
    public void a(boolean z) {
        this.m.a(z);
        this.n.a(this.m.a());
    }

    private static InterfaceC2024zd a(C2000yd c2000yd, G1 g1) {
        if (A2.a(29)) {
            return g1.c(c2000yd);
        }
        return g1.b(c2000yd);
    }
}
