package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.util.Log;
import android.webkit.WebView;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IReporter;
import com.yandex.metrica.ReporterConfig;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.impl.ob.C1795q;
import com.yandex.metrica.profile.UserProfile;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class Uf extends Lf {
    private final Qf i;
    private final Xf j;
    private final Wf k;
    private final C1749o2 l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class A implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f14035a;

        A(Activity activity) {
            this.f14035a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.l.a(this.f14035a, Uf.a(Uf.this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class B implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1795q.c f14037a;

        B(C1795q.c cVar) {
            this.f14037a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).a(this.f14037a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class C implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14039a;

        C(String str) {
            this.f14039a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportEvent(this.f14039a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class D implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14041a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f14042b;

        D(String str, String str2) {
            this.f14041a = str;
            this.f14042b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportEvent(this.f14041a, this.f14042b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class E implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14044a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f14045b;

        E(String str, List list) {
            this.f14044a = str;
            this.f14045b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportEvent(this.f14044a, A2.a(this.f14045b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class F implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14047a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f14048b;

        F(String str, Throwable th) {
            this.f14047a = str;
            this.f14048b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportError(this.f14047a, this.f14048b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$a  reason: case insensitive filesystem */
    /* loaded from: classes5.dex */
    public class RunnableC1391a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14050a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f14051b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Throwable f14052c;

        RunnableC1391a(String str, String str2, Throwable th) {
            this.f14050a = str;
            this.f14051b = str2;
            this.f14052c = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportError(this.f14050a, this.f14051b, this.f14052c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$b  reason: case insensitive filesystem */
    /* loaded from: classes5.dex */
    public class RunnableC1392b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f14054a;

        RunnableC1392b(Throwable th) {
            this.f14054a = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportUnhandledException(this.f14054a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$c  reason: case insensitive filesystem */
    /* loaded from: classes5.dex */
    public class RunnableC1393c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14056a;

        RunnableC1393c(String str) {
            this.f14056a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).c(this.f14056a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$d  reason: case insensitive filesystem */
    /* loaded from: classes5.dex */
    public class RunnableC1394d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f14058a;

        RunnableC1394d(Intent intent) {
            this.f14058a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.c(Uf.this).a().a(this.f14058a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$e  reason: case insensitive filesystem */
    /* loaded from: classes5.dex */
    public class RunnableC1395e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14060a;

        RunnableC1395e(String str) {
            this.f14060a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.c(Uf.this).a().a(this.f14060a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$f  reason: case insensitive filesystem */
    /* loaded from: classes5.dex */
    public class RunnableC1396f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f14062a;

        RunnableC1396f(Intent intent) {
            this.f14062a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.c(Uf.this).a().a(this.f14062a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14064a;

        g(String str) {
            this.f14064a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).a(this.f14064a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Location f14066a;

        h(Location location) {
            this.f14066a = location;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e2 = Uf.this.e();
            Location location = this.f14066a;
            e2.getClass();
            R2.a(location);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f14068a;

        i(boolean z) {
            this.f14068a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e2 = Uf.this.e();
            boolean z = this.f14068a;
            e2.getClass();
            R2.a(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f14070a;

        j(boolean z) {
            this.f14070a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e2 = Uf.this.e();
            boolean z = this.f14070a;
            e2.getClass();
            R2.a(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f14072a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ YandexMetricaConfig f14073b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.i f14074c;

        k(Context context, YandexMetricaConfig yandexMetricaConfig, com.yandex.metrica.i iVar) {
            this.f14072a = context;
            this.f14073b = yandexMetricaConfig;
            this.f14074c = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e2 = Uf.this.e();
            Context context = this.f14072a;
            e2.getClass();
            R2.a(context).b(this.f14073b, Uf.this.c().a(this.f14074c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f14076a;

        l(boolean z) {
            this.f14076a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e2 = Uf.this.e();
            boolean z = this.f14076a;
            e2.getClass();
            R2.c(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14078a;

        m(String str) {
            this.f14078a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e2 = Uf.this.e();
            String str = this.f14078a;
            e2.getClass();
            R2.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserProfile f14080a;

        n(UserProfile userProfile) {
            this.f14080a = userProfile;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportUserProfile(this.f14080a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Revenue f14082a;

        o(Revenue revenue) {
            this.f14082a = revenue;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportRevenue(this.f14082a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdRevenue f14084a;

        p(AdRevenue adRevenue) {
            this.f14084a = adRevenue;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportAdRevenue(this.f14084a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ECommerceEvent f14086a;

        q(ECommerceEvent eCommerceEvent) {
            this.f14086a = eCommerceEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportECommerce(this.f14086a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DeferredDeeplinkParametersListener f14088a;

        r(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
            this.f14088a = deferredDeeplinkParametersListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.e().getClass();
            R2.k().a(this.f14088a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DeferredDeeplinkListener f14090a;

        s(DeferredDeeplinkListener deferredDeeplinkListener) {
            this.f14090a = deferredDeeplinkListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.e().getClass();
            R2.k().a(this.f14090a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppMetricaDeviceIDListener f14092a;

        t(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
            this.f14092a = appMetricaDeviceIDListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.e().getClass();
            R2.k().b(this.f14092a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14094a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f14095b;

        u(String str, String str2) {
            this.f14094a = str;
            this.f14095b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e2 = Uf.this.e();
            String str = this.f14094a;
            String str2 = this.f14095b;
            e2.getClass();
            R2.a(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).sendEventsBuffer();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).a(Uf.this.h());
        }
    }

    /* loaded from: classes5.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14099a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f14100b;

        x(String str, String str2) {
            this.f14099a = str;
            this.f14100b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).a(this.f14099a, this.f14100b);
        }
    }

    /* loaded from: classes5.dex */
    class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14102a;

        y(String str) {
            this.f14102a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).b(this.f14102a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f14104a;

        z(Activity activity) {
            this.f14104a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.l.b(this.f14104a, Uf.a(Uf.this));
        }
    }

    public Uf(ICommonExecutor iCommonExecutor) {
        this(new Sf(), iCommonExecutor, new Xf(), new Wf(), new D2());
    }

    public void a(Context context, YandexMetricaConfig yandexMetricaConfig) {
        com.yandex.metrica.i iVar;
        this.j.a(context, yandexMetricaConfig);
        Wf wf = this.k;
        if (yandexMetricaConfig instanceof com.yandex.metrica.i) {
            iVar = (com.yandex.metrica.i) yandexMetricaConfig;
        } else {
            iVar = new com.yandex.metrica.i(yandexMetricaConfig);
        }
        com.yandex.metrica.i a2 = wf.a(iVar);
        g().a(context, a2);
        d().execute(new k(context, yandexMetricaConfig, a2));
        e().getClass();
        R2.j();
    }

    public void c(Activity activity) {
        a().a(null);
        this.j.getClass();
        g().getClass();
        d().execute(new z(activity));
    }

    public void d(String str) {
        a().a(null);
        this.j.c(str);
        g().getClass();
        d().execute(new RunnableC1393c(str));
    }

    public void e(String str) {
        a().a(null);
        this.j.a(str);
        d().execute(new g(str));
    }

    public void f(String str) {
        this.j.getClass();
        g().getClass();
        d().execute(new m(str));
    }

    public void i() {
        a().a(null);
        this.j.getClass();
        g().getClass();
        d().execute(new v());
    }

    private Uf(Sf sf, ICommonExecutor iCommonExecutor, Xf xf, Wf wf, D2 d2) {
        this(sf, iCommonExecutor, xf, wf, new Kf(sf), new Qf(sf), d2, new com.yandex.metrica.f(sf, d2), Pf.a(), P.g().f(), P.g().l(), P.g().e());
    }

    public void b(String str) {
        a().a(null);
        this.j.reportEvent(str);
        g().getClass();
        d().execute(new C(str));
    }

    public void b(String str, String str2) {
        a().a(null);
        this.j.reportEvent(str, str2);
        g().getClass();
        d().execute(new D(str, str2));
    }

    public void c(String str, String str2) {
        a().a(null);
        if (!this.j.f(str)) {
            Log.w("AppMetrica", "Impossible to report event because parameters are invalid.");
            return;
        }
        g().getClass();
        d().execute(new x(str, str2));
    }

    public void b(Activity activity) {
        Intent intent = null;
        a().a(null);
        this.j.c(activity);
        g().getClass();
        if (activity != null) {
            try {
                intent = activity.getIntent();
            } catch (Throwable unused) {
            }
        }
        d().execute(new RunnableC1394d(intent));
    }

    Uf(Sf sf, ICommonExecutor iCommonExecutor, Xf xf, Wf wf, Kf kf, Qf qf, D2 d2, com.yandex.metrica.f fVar, Pf pf, C1672l0 c1672l0, C1749o2 c1749o2, C1398a0 c1398a0) {
        super(sf, iCommonExecutor, kf, d2, fVar, pf, c1672l0, c1398a0);
        this.k = wf;
        this.j = xf;
        this.i = qf;
        this.l = c1749o2;
    }

    public void c(String str) {
        if (this.i.a().b() && this.j.g(str)) {
            g().getClass();
            d().execute(new y(str));
        }
    }

    public void b(Context context, boolean z2) {
        this.j.b(context);
        g().c(context);
        d().execute(new l(z2));
    }

    static C1648k1 c(Uf uf) {
        uf.e().getClass();
        return R2.k().d();
    }

    public void a(Activity activity) {
        a().a(null);
        this.j.getClass();
        g().getClass();
        d().execute(new A(activity));
    }

    public void a(Application application) {
        a().a(null);
        this.j.a(application);
        d().execute(new B(g().a(application)));
    }

    public void a(String str, Map<String, Object> map) {
        a().a(null);
        this.j.reportEvent(str, map);
        g().getClass();
        d().execute(new E(str, A2.a((Map) map)));
    }

    public void a(String str, Throwable th) {
        a().a(null);
        this.j.reportError(str, th);
        g().getClass();
        if (th == null) {
            th = new C1653k6();
            th.fillInStackTrace();
        }
        d().execute(new F(str, th));
    }

    public void a(String str, String str2, Throwable th) {
        a().a(null);
        this.j.reportError(str, str2, th);
        d().execute(new RunnableC1391a(str, str2, th));
    }

    public void a(Throwable th) {
        a().a(null);
        this.j.reportUnhandledException(th);
        g().getClass();
        d().execute(new RunnableC1392b(th));
    }

    public void a(String str) {
        a().a(null);
        this.j.e(str);
        g().getClass();
        d().execute(new RunnableC1395e(str));
    }

    public void a(Intent intent) {
        a().a(null);
        this.j.a(intent);
        g().getClass();
        d().execute(new RunnableC1396f(intent));
    }

    public void a(Location location) {
        this.j.getClass();
        g().getClass();
        d().execute(new h(location));
    }

    public void a(boolean z2) {
        this.j.getClass();
        g().getClass();
        d().execute(new i(z2));
    }

    public void a(Context context, boolean z2) {
        this.j.a(context);
        g().b(context);
        d().execute(new j(z2));
    }

    public void a(UserProfile userProfile) {
        a().a(null);
        this.j.reportUserProfile(userProfile);
        g().getClass();
        d().execute(new n(userProfile));
    }

    public void a(Revenue revenue) {
        a().a(null);
        this.j.reportRevenue(revenue);
        g().getClass();
        d().execute(new o(revenue));
    }

    public void a(AdRevenue adRevenue) {
        a().a(null);
        this.j.reportAdRevenue(adRevenue);
        g().getClass();
        d().execute(new p(adRevenue));
    }

    public void a(ECommerceEvent eCommerceEvent) {
        a().a(null);
        this.j.reportECommerce(eCommerceEvent);
        g().getClass();
        d().execute(new q(eCommerceEvent));
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        a().a(null);
        this.j.a(deferredDeeplinkParametersListener);
        g().getClass();
        d().execute(new r(deferredDeeplinkParametersListener));
    }

    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        a().a(null);
        this.j.a(deferredDeeplinkListener);
        g().getClass();
        d().execute(new s(deferredDeeplinkListener));
    }

    public void a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        a().a(null);
        this.j.a(appMetricaDeviceIDListener);
        g().getClass();
        d().execute(new t(appMetricaDeviceIDListener));
    }

    public IReporter a(Context context, String str) {
        this.j.a(context, str);
        b().a(context);
        return f().a(context, str);
    }

    public void a(Context context, ReporterConfig reporterConfig) {
        this.j.a(context, reporterConfig);
        com.yandex.metrica.e a2 = com.yandex.metrica.e.a(reporterConfig);
        g().a(context);
        f().a(context, a2);
    }

    public void a(String str, String str2) {
        this.j.d(str);
        g().getClass();
        d().execute(new u(str, str2));
    }

    public void a(WebView webView) {
        a().a(null);
        this.j.a(webView);
        g().a(webView, this);
        d().execute(new w());
    }

    static K0 a(Uf uf) {
        uf.e().getClass();
        return R2.k().d().b();
    }
}
