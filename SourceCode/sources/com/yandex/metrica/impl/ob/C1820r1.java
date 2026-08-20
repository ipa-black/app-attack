package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.MetricaService;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.C1790pi;
import java.io.File;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.r1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1820r1 implements InterfaceC1773p1 {
    private final C1500e2 A;

    /* renamed from: a  reason: collision with root package name */
    private C1790pi f15609a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15610b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f15611c;

    /* renamed from: d  reason: collision with root package name */
    private volatile MetricaService.d f15612d;

    /* renamed from: e  reason: collision with root package name */
    private final Eh f15613e;

    /* renamed from: f  reason: collision with root package name */
    private X0 f15614f;

    /* renamed from: g  reason: collision with root package name */
    private final B0 f15615g;

    /* renamed from: h  reason: collision with root package name */
    private C1626j4 f15616h;
    private final A1 i;
    private Vc j;
    private C1507e9 k;
    private L1 l;
    private final E0 m;
    private final C2021za n;
    private final C1675l3 o;
    private Y6 p;
    private final InterfaceC1753o6 q;
    private final B7 r;
    private final C1938w s;
    private final ICommonExecutor t;
    private final C1988y1 u;
    private InterfaceC1719mm<String> v;
    private InterfaceC1719mm<File> w;
    private InterfaceC1505e7<String> x;
    private ICommonExecutor y;
    private M1 z;

    /* renamed from: com.yandex.metrica.impl.ob.r1$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1719mm<File> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(File file) {
            C1820r1.this.a(file);
        }
    }

    public C1820r1(Context context, MetricaService.d dVar) {
        this(context, dVar, new C1776p4(context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(C1820r1 c1820r1) {
        if (c1820r1.f15609a != null) {
            F0.g().o().a(c1820r1.f15609a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(C1820r1 c1820r1) {
        c1820r1.f15613e.b();
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void onConfigurationChanged(Configuration configuration) {
        C1549g1.a(this.f15611c).b(configuration);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void reportData(Bundle bundle) {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        this.f15614f.a();
        this.l.a(C1448c0.a(bundle), bundle);
    }

    private C1820r1(Context context, MetricaService.d dVar, C1776p4 c1776p4) {
        this(context, dVar, new C1626j4(context, c1776p4), new A1(), new B0(), new E0(), new C2021za(context), C1675l3.a(), new Eh(context), F0.g().b(), F0.g().h().c(), B7.a(), F0.g().q().e(), F0.g().q().a(), new C1988y1(), F0.g().n());
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a() {
        if (!this.f15610b) {
            this.k = F0.g().s();
            this.m.a(this.f15611c);
            F0.g().x();
            C1545fm.c().d();
            this.j = new Vc(C1927vc.a(this.f15611c), H2.a(this.f15611c), this.k);
            this.f15609a = new C1790pi.b(this.f15611c).a();
            F0.g().t().getClass();
            this.i.b(new C1916v1(this));
            this.i.c(new C1940w1(this));
            this.i.a(new C1964x1(this));
            this.o.a(this, C1799q3.class, C1775p3.a(new C1868t1(this)).a(new C1844s1(this)).a());
            F0.g().r().a(this.f15611c, this.f15609a);
            this.f15614f = new X0(this.k, this.f15609a.t(), new SystemTimeProvider(), new C1965x2(), C1764oh.a());
            C1790pi c1790pi = this.f15609a;
            if (c1790pi != null) {
                this.f15613e.b(c1790pi);
            }
            a(this.f15609a);
            C1988y1 c1988y1 = this.u;
            Context context = this.f15611c;
            C1626j4 c1626j4 = this.f15616h;
            c1988y1.getClass();
            this.l = new L1(context, c1626j4, F0.g().q().e(), new B0());
            YandexMetrica.getReporter(this.f15611c, "20799a27-fa80-4b36-b2db-0f8141f24180");
            File a2 = this.f15615g.a(this.f15611c, "appmetrica_crashes");
            if (a2 != null) {
                C1988y1 c1988y12 = this.u;
                InterfaceC1719mm<File> interfaceC1719mm = this.w;
                c1988y12.getClass();
                this.p = new Y6(a2, interfaceC1719mm);
                this.t.execute(new RunnableC1897u6(this.f15611c, a2, this.w));
                this.p.a();
            }
            if (A2.a(21)) {
                C1988y1 c1988y13 = this.u;
                L1 l1 = this.l;
                c1988y13.getClass();
                this.x = new C1874t7(new C1922v7(l1));
                this.v = new C1892u1(this);
                if (this.r.b()) {
                    this.x.a();
                    this.y.executeDelayed(new F7(), 1L, TimeUnit.MINUTES);
                }
            }
            F0.g().f().a(this.f15609a);
            this.f15610b = true;
        } else {
            C1549g1.a(this.f15611c).b(this.f15611c.getResources().getConfiguration());
        }
        if (A2.a(21)) {
            this.q.a(this.v);
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b(Intent intent) {
        this.i.b(intent);
        if (intent != null) {
            String action = intent.getAction();
            Uri data = intent.getData();
            String encodedAuthority = data == null ? null : data.getEncodedAuthority();
            if ("com.yandex.metrica.IMetricaService".equals(action) && data != null && data.getPath().equals("/client")) {
                int parseInt = Integer.parseInt(data.getQueryParameter("pid"));
                this.f15616h.a(encodedAuthority, parseInt, data.getQueryParameter("psid"));
                this.s.a(parseInt);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void c(Intent intent) {
        this.i.c(intent);
    }

    private Integer c(Bundle bundle) {
        A3 a3;
        bundle.setClassLoader(A3.class.getClassLoader());
        String str = A3.f12617c;
        try {
            a3 = (A3) bundle.getParcelable("PROCESS_CFG_OBJ");
        } catch (Throwable unused) {
            a3 = null;
        }
        if (a3 == null) {
            return null;
        }
        return a3.g();
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b() {
        if (A2.a(21)) {
            this.q.b(this.v);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void b(Bundle bundle) {
        Integer c2 = c(bundle);
        if (c2 != null) {
            this.s.c(c2.intValue());
        }
    }

    C1820r1(Context context, MetricaService.d dVar, C1626j4 c1626j4, A1 a1, B0 b0, E0 e0, C2021za c2021za, C1675l3 c1675l3, Eh eh, C1938w c1938w, InterfaceC1753o6 interfaceC1753o6, B7 b7, ICommonExecutor iCommonExecutor, ICommonExecutor iCommonExecutor2, C1988y1 c1988y1, C1500e2 c1500e2) {
        this.f15610b = false;
        this.w = new a();
        this.f15611c = context;
        this.f15612d = dVar;
        this.f15616h = c1626j4;
        this.i = a1;
        this.f15615g = b0;
        this.m = e0;
        this.n = c2021za;
        this.o = c1675l3;
        this.f15613e = eh;
        this.s = c1938w;
        this.t = iCommonExecutor;
        this.y = iCommonExecutor2;
        this.u = c1988y1;
        this.q = interfaceC1753o6;
        this.r = b7;
        this.z = new M1(this, context);
        this.A = c1500e2;
    }

    private void b(Intent intent, int i) {
        if (intent != null) {
            intent.getExtras().setClassLoader(CounterConfiguration.class.getClassLoader());
            if (intent.getData() != null) {
                Bundle extras = intent.getExtras();
                C2014z3 c2014z3 = new C2014z3(extras);
                if (!C2014z3.a(c2014z3, this.f15611c)) {
                    C1448c0 a2 = C1448c0.a(extras);
                    if (!((a2.f14507a == null) | (EnumC1399a1.EVENT_TYPE_UNDEFINED.b() == a2.f14511e))) {
                        try {
                            this.l.a(C1602i4.a(c2014z3), a2, new D3(c2014z3));
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
        }
        this.f15612d.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(C1820r1 c1820r1, C1790pi c1790pi) {
        Vc vc = c1820r1.j;
        if (vc != null) {
            vc.a(c1790pi);
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent, int i) {
        b(intent, i);
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent, int i, int i2) {
        b(intent, i2);
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent) {
        this.i.a(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(C1820r1 c1820r1, C1790pi c1790pi) {
        c1820r1.f15609a = c1790pi;
        Vc vc = c1820r1.j;
        if (vc != null) {
            vc.a(c1790pi);
        }
        c1820r1.f15614f.a(c1820r1.f15609a.t());
        c1820r1.n.a(c1790pi);
        c1820r1.f15613e.b(c1790pi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(C1820r1 c1820r1, Intent intent) {
        c1820r1.f15613e.a();
        c1820r1.A.a(Tl.f(intent.getStringExtra("screen_size")));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    @Deprecated
    public void a(String str, int i, String str2, Bundle bundle) {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        this.l.a(new C1448c0(str2, str, i), bundle);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void a(int i, Bundle bundle) {
        this.z.a(i, bundle);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void a(Bundle bundle) {
        Integer c2 = c(bundle);
        if (c2 != null) {
            this.s.b(c2.intValue());
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void a(MetricaService.d dVar) {
        this.f15612d = dVar;
    }

    public void a(File file) {
        this.l.a(file);
    }

    private void a(C1790pi c1790pi) {
        Vc vc = this.j;
        if (vc != null) {
            vc.a(c1790pi);
        }
    }
}
