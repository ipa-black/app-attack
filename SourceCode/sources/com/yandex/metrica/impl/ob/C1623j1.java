package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.yandex.metrica.PreloadInfo;
import com.yandex.metrica.a;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1397a;
import com.yandex.metrica.impl.ob.C1795q;
import com.yandex.metrica.impl.ob.r;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.j1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1623j1 extends B implements K0 {
    private static final Kn<String> y = new Hn(new Fn("Referral url"));
    private static final Long z = Long.valueOf(TimeUnit.SECONDS.toMillis(5));
    private final com.yandex.metrica.a p;
    private final com.yandex.metrica.i q;
    private final C1591hi r;
    private C1397a s;
    private final C1912ul t;
    private final r u;
    private final AtomicBoolean v;
    private final C1650k3 w;
    private final C1629j7 x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.j1$a */
    /* loaded from: classes5.dex */
    public class a implements C1397a.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ICommonExecutor f14938a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C1499e1 f14939b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ C1989y2 f14940c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ C1989y2 f14941d;

        /* renamed from: com.yandex.metrica.impl.ob.j1$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0354a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ C1945w6 f14943a;

            RunnableC0354a(C1945w6 c1945w6) {
                this.f14943a = c1945w6;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1623j1.this.a(this.f14943a);
                if (a.this.f14939b.a(this.f14943a.f15953a.f12860f)) {
                    a.this.f14940c.a().a(this.f14943a);
                }
                if (a.this.f14939b.b(this.f14943a.f15953a.f12860f)) {
                    a.this.f14941d.a().a(this.f14943a);
                }
            }
        }

        a(ICommonExecutor iCommonExecutor, C1499e1 c1499e1, C1989y2 c1989y2, C1989y2 c1989y22) {
            this.f14938a = iCommonExecutor;
            this.f14939b = c1499e1;
            this.f14940c = c1989y2;
            this.f14941d = c1989y22;
        }

        @Override // com.yandex.metrica.impl.ob.C1397a.b
        public void a() {
            this.f14938a.execute(new RunnableC0354a(C1623j1.this.w.a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.j1$b */
    /* loaded from: classes5.dex */
    public class b implements a.InterfaceC0343a {
        b() {
        }

        @Override // com.yandex.metrica.a.InterfaceC0343a
        public void a() {
            C1623j1 c1623j1 = C1623j1.this;
            c1623j1.i.a(c1623j1.f12654b.a());
        }

        @Override // com.yandex.metrica.a.InterfaceC0343a
        public void b() {
            C1623j1 c1623j1 = C1623j1.this;
            c1623j1.i.b(c1623j1.f12654b.a());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.j1$c */
    /* loaded from: classes5.dex */
    static class c {
        c() {
        }

        C1912ul a(Context context, ICommonExecutor iCommonExecutor, C1432b9 c1432b9, C1623j1 c1623j1, C1591hi c1591hi) {
            return new C1912ul(context, c1432b9, c1623j1, iCommonExecutor, c1591hi.d());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1623j1(android.content.Context r26, com.yandex.metrica.impl.ob.A3 r27, com.yandex.metrica.i r28, com.yandex.metrica.impl.ob.T1 r29, com.yandex.metrica.impl.ob.C1629j7 r30, com.yandex.metrica.impl.ob.C1591hi r31, com.yandex.metrica.impl.ob.C1989y2 r32, com.yandex.metrica.impl.ob.C1989y2 r33, com.yandex.metrica.impl.ob.C1432b9 r34, com.yandex.metrica.impl.ob.P r35, com.yandex.metrica.impl.ob.A0 r36) {
        /*
            r25 = this;
            r2 = r28
            com.yandex.metrica.impl.ob.Q1 r5 = new com.yandex.metrica.impl.ob.Q1
            com.yandex.metrica.CounterConfiguration r0 = new com.yandex.metrica.CounterConfiguration
            com.yandex.metrica.CounterConfiguration$b r1 = com.yandex.metrica.CounterConfiguration.b.MAIN
            r0.<init>(r2, r1)
            java.lang.String r1 = r2.userProfileID
            r3 = r27
            r5.<init>(r3, r0, r1)
            com.yandex.metrica.a r6 = new com.yandex.metrica.a
            java.lang.Integer r0 = r2.sessionTimeout
            if (r0 != 0) goto L21
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            r3 = 10
            long r0 = r0.toMillis(r3)
            goto L26
        L21:
            int r0 = r0.intValue()
            long r0 = (long) r0
        L26:
            r6.<init>(r0)
            com.yandex.metrica.impl.ob.e1 r0 = new com.yandex.metrica.impl.ob.e1
            r8 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.bm r9 = r35.j()
            com.yandex.metrica.core.api.executors.ICommonExecutor r13 = r35.c()
            com.yandex.metrica.impl.ob.j1$c r0 = new com.yandex.metrica.impl.ob.j1$c
            r15 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.r r0 = new com.yandex.metrica.impl.ob.r
            r16 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.Zg r0 = new com.yandex.metrica.impl.ob.Zg
            r17 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.Yg r0 = new com.yandex.metrica.impl.ob.Yg
            r18 = r0
            java.lang.String r1 = r2.appVersion
            java.lang.String r3 = r2.f12560a
            r0.<init>(r1, r3)
            com.yandex.metrica.impl.ob.s6 r0 = new com.yandex.metrica.impl.ob.s6
            r19 = r0
            r14 = r36
            r0.<init>(r14)
            com.yandex.metrica.impl.ob.X6 r0 = new com.yandex.metrica.impl.ob.X6
            r20 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.S6 r0 = new com.yandex.metrica.impl.ob.S6
            r21 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.M6 r0 = new com.yandex.metrica.impl.ob.M6
            r22 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.K6 r0 = new com.yandex.metrica.impl.ob.K6
            r23 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.zg r24 = r35.k()
            r0 = r25
            r1 = r26
            r2 = r28
            r3 = r29
            r4 = r30
            r7 = r31
            r10 = r32
            r11 = r33
            r12 = r34
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1623j1.<init>(android.content.Context, com.yandex.metrica.impl.ob.A3, com.yandex.metrica.i, com.yandex.metrica.impl.ob.T1, com.yandex.metrica.impl.ob.j7, com.yandex.metrica.impl.ob.hi, com.yandex.metrica.impl.ob.y2, com.yandex.metrica.impl.ob.y2, com.yandex.metrica.impl.ob.b9, com.yandex.metrica.impl.ob.P, com.yandex.metrica.impl.ob.A0):void");
    }

    private void h() {
        this.i.a(this.f12654b.a());
        this.p.a(new b(), z.longValue());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void a(boolean z2) {
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void b(Activity activity) {
        if (this.u.a(activity, r.a.PAUSED)) {
            d(activity != null ? activity.getClass().getSimpleName() : null);
            this.p.a();
            if (activity != null) {
                this.t.a(activity);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.B, com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void c(String str, String str2) {
        super.c(str, str2);
        this.x.a(this.f12654b.f13738c.a());
    }

    public final void g() {
        if (this.v.compareAndSet(false, true)) {
            this.s.c();
        }
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(String str, boolean z2) {
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("App opened via deeplink: " + f(str));
        }
        this.i.a(C2011z0.a(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, str, z2, this.f12655c), this.f12654b);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void b(boolean z2) {
        this.f12654b.b().b(z2);
    }

    @Override // com.yandex.metrica.impl.ob.El
    public void b(JSONObject jSONObject) {
        T1 t1 = this.i;
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J(jSONObject.toString(), "view_tree", EnumC1399a1.EVENT_TYPE_VIEW_TREE.b(), 0, c1470cm), this.f12654b);
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(String str) {
        ((Hn) y).a(str);
        this.i.a(C2011z0.a("referral", str, false, this.f12655c), this.f12654b);
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("Referral URL received: " + f(str));
        }
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(C1795q.c cVar) {
        if (cVar == C1795q.c.WATCHING) {
            if (this.f12655c.isEnabled()) {
                this.f12655c.i("Enable activity auto tracking");
            }
        } else if (this.f12655c.isEnabled()) {
            this.f12655c.w("Could not enable activity auto tracking. " + cVar.f15435a);
        }
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(Activity activity) {
        if (this.u.a(activity, r.a.RESUMED)) {
            e(activity != null ? activity.getClass().getSimpleName() : null);
            this.p.b();
            if (activity != null) {
                this.t.b(activity);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void a(Location location) {
        this.f12654b.b().a(location);
        if (this.f12655c.isEnabled()) {
            this.f12655c.fi("Set location: %s", location);
        }
    }

    C1623j1(Context context, com.yandex.metrica.i iVar, T1 t1, C1629j7 c1629j7, Q1 q1, com.yandex.metrica.a aVar, C1591hi c1591hi, C1499e1 c1499e1, InterfaceC1445bm interfaceC1445bm, C1989y2 c1989y2, C1989y2 c1989y22, C1432b9 c1432b9, ICommonExecutor iCommonExecutor, A0 a0, c cVar, r rVar, Zg zg, Yg yg, C1849s6 c1849s6, X6 x6, S6 s6, M6 m6, K6 k6, C2027zg c2027zg) {
        super(context, t1, q1, a0, interfaceC1445bm, zg.a(t1.b(), iVar.apiKey, true), yg, x6, s6, m6, k6, c1849s6);
        this.v = new AtomicBoolean(false);
        this.w = new C1650k3();
        this.f12654b.a(a(iVar));
        this.p = aVar;
        this.x = c1629j7;
        this.q = iVar;
        this.u = rVar;
        C1912ul a2 = cVar.a(context, iCommonExecutor, c1432b9, this, c1591hi);
        this.t = a2;
        this.r = c1591hi;
        c1591hi.a(a2);
        a(iVar.nativeCrashReporting, this.f12654b);
        context.getApplicationContext();
        c1591hi.b();
        Bg bg = Bg.f12704b;
        this.s = a(iCommonExecutor, c1499e1, c1989y2, c1989y22);
        if (C1422b.a(iVar.k)) {
            g();
        }
        h();
    }

    private C1397a a(ICommonExecutor iCommonExecutor, C1499e1 c1499e1, C1989y2 c1989y2, C1989y2 c1989y22) {
        return new C1397a(new a(iCommonExecutor, c1499e1, c1989y2, c1989y22));
    }

    @Override // com.yandex.metrica.impl.ob.El
    public void a(JSONObject jSONObject) {
        T1 t1 = this.i;
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J(jSONObject.toString(), "view_tree", EnumC1399a1.EVENT_TYPE_RAW_VIEW_TREE.b(), 0, c1470cm), this.f12654b);
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(InterfaceC1693ll interfaceC1693ll, boolean z2) {
        this.t.a(interfaceC1693ll, z2);
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(D2 d2) {
        d2.a(this.f12655c);
    }

    private void a(Boolean bool, Q1 q1) {
        Boolean bool2 = Boolean.TRUE;
        if (bool == null) {
            bool = bool2;
        }
        boolean booleanValue = bool.booleanValue();
        this.x.a(booleanValue, q1.b().a(), q1.f13738c.a());
        if (this.f12655c.isEnabled()) {
            this.f12655c.fi("Set report native crashes enabled: %b", Boolean.valueOf(booleanValue));
        }
    }

    private C1612ie a(com.yandex.metrica.i iVar) {
        PreloadInfo preloadInfo = iVar.preloadInfo;
        C1470cm c1470cm = this.f12655c;
        Boolean bool = iVar.i;
        Boolean bool2 = Boolean.FALSE;
        if (bool == null) {
            bool = bool2;
        }
        return new C1612ie(preloadInfo, c1470cm, bool.booleanValue());
    }
}
