package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.e;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.profile.UserProfile;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Of implements M0 {

    /* renamed from: a  reason: collision with root package name */
    private final Sf f13587a;

    /* renamed from: b  reason: collision with root package name */
    private final C1414ag f13588b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f13589c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f13590d;

    /* renamed from: e  reason: collision with root package name */
    private final Wf f13591e;

    /* renamed from: f  reason: collision with root package name */
    private final com.yandex.metrica.e f13592f;

    /* renamed from: g  reason: collision with root package name */
    private final com.yandex.metrica.f f13593g;

    /* renamed from: h  reason: collision with root package name */
    private final Nf f13594h;

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13595a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13596b;

        a(String str, String str2) {
            this.f13595a = str;
            this.f13596b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().b(this.f13595a, this.f13596b);
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13598a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13599b;

        b(String str, String str2) {
            this.f13598a = str;
            this.f13599b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().d(this.f13598a, this.f13599b);
        }
    }

    /* loaded from: classes5.dex */
    class c implements InterfaceC1818qm<M0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Sf f13601a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f13602b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.e f13603c;

        c(Sf sf, Context context, com.yandex.metrica.e eVar) {
            this.f13601a = sf;
            this.f13602b = context;
            this.f13603c = eVar;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1818qm
        public M0 a() {
            Sf sf = this.f13601a;
            Context context = this.f13602b;
            com.yandex.metrica.e eVar = this.f13603c;
            sf.getClass();
            return R2.a(context).a(eVar);
        }
    }

    /* loaded from: classes5.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13604a;

        d(String str) {
            this.f13604a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportEvent(this.f13604a);
        }
    }

    /* loaded from: classes5.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13606a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13607b;

        e(String str, String str2) {
            this.f13606a = str;
            this.f13607b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportEvent(this.f13606a, this.f13607b);
        }
    }

    /* loaded from: classes5.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13609a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f13610b;

        f(String str, List list) {
            this.f13609a = str;
            this.f13610b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportEvent(this.f13609a, A2.a(this.f13610b));
        }
    }

    /* loaded from: classes5.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13612a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f13613b;

        g(String str, Throwable th) {
            this.f13612a = str;
            this.f13613b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportError(this.f13612a, this.f13613b);
        }
    }

    /* loaded from: classes5.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13615a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13616b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Throwable f13617c;

        h(String str, String str2, Throwable th) {
            this.f13615a = str;
            this.f13616b = str2;
            this.f13617c = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportError(this.f13615a, this.f13616b, this.f13617c);
        }
    }

    /* loaded from: classes5.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f13619a;

        i(Throwable th) {
            this.f13619a = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportUnhandledException(this.f13619a);
        }
    }

    /* loaded from: classes5.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().resumeSession();
        }
    }

    /* loaded from: classes5.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().pauseSession();
        }
    }

    /* loaded from: classes5.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13623a;

        l(String str) {
            this.f13623a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().setUserProfileID(this.f13623a);
        }
    }

    /* loaded from: classes5.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ H6 f13625a;

        m(H6 h6) {
            this.f13625a = h6;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().a(this.f13625a);
        }
    }

    /* loaded from: classes5.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserProfile f13627a;

        n(UserProfile userProfile) {
            this.f13627a = userProfile;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportUserProfile(this.f13627a);
        }
    }

    /* loaded from: classes5.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Revenue f13629a;

        o(Revenue revenue) {
            this.f13629a = revenue;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportRevenue(this.f13629a);
        }
    }

    /* loaded from: classes5.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdRevenue f13631a;

        p(AdRevenue adRevenue) {
            this.f13631a = adRevenue;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportAdRevenue(this.f13631a);
        }
    }

    /* loaded from: classes5.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ECommerceEvent f13633a;

        q(ECommerceEvent eCommerceEvent) {
            this.f13633a = eCommerceEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportECommerce(this.f13633a);
        }
    }

    /* loaded from: classes5.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f13635a;

        r(boolean z) {
            this.f13635a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().setStatisticsSending(this.f13635a);
        }
    }

    /* loaded from: classes5.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.e f13637a;

        s(com.yandex.metrica.e eVar) {
            this.f13637a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.a(Of.this, this.f13637a);
        }
    }

    /* loaded from: classes5.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.e f13639a;

        t(com.yandex.metrica.e eVar) {
            this.f13639a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.a(Of.this, this.f13639a);
        }
    }

    /* loaded from: classes5.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1945w6 f13641a;

        u(C1945w6 c1945w6) {
            this.f13641a = c1945w6;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().a(this.f13641a);
        }
    }

    /* loaded from: classes5.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().b();
        }
    }

    /* loaded from: classes5.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13644a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f13645b;

        w(String str, JSONObject jSONObject) {
            this.f13644a = str;
            this.f13645b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().a(this.f13644a, this.f13645b);
        }
    }

    /* loaded from: classes5.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().sendEventsBuffer();
        }
    }

    public Of(ICommonExecutor iCommonExecutor, Context context, String str) {
        this(iCommonExecutor, context.getApplicationContext(), str, new Sf());
    }

    final M0 a() {
        Sf sf = this.f13587a;
        Context context = this.f13590d;
        com.yandex.metrica.e eVar = this.f13592f;
        sf.getClass();
        return R2.a(context).a(eVar);
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void b() {
        this.f13593g.getClass();
        this.f13589c.execute(new v());
    }

    public void d(String str) {
        com.yandex.metrica.e a2 = new e.a(str).a();
        this.f13593g.getClass();
        this.f13589c.execute(new s(a2));
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this.f13594h;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
        this.f13588b.getClass();
        this.f13593g.getClass();
        this.f13589c.execute(new k());
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
        this.f13588b.reportAdRevenue(adRevenue);
        this.f13593g.getClass();
        this.f13589c.execute(new p(adRevenue));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
        this.f13588b.reportECommerce(eCommerceEvent);
        this.f13593g.getClass();
        this.f13589c.execute(new q(eCommerceEvent));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
        this.f13588b.reportError(str, th);
        this.f13593g.getClass();
        if (th == null) {
            th = new C1653k6();
            th.fillInStackTrace();
        }
        this.f13589c.execute(new g(str, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) {
        this.f13588b.reportEvent(str);
        this.f13593g.getClass();
        this.f13589c.execute(new d(str));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
        this.f13588b.reportRevenue(revenue);
        this.f13593g.getClass();
        this.f13589c.execute(new o(revenue));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
        this.f13588b.reportUnhandledException(th);
        this.f13593g.getClass();
        this.f13589c.execute(new i(th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
        this.f13588b.reportUserProfile(userProfile);
        this.f13593g.getClass();
        this.f13589c.execute(new n(userProfile));
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
        this.f13588b.getClass();
        this.f13593g.getClass();
        this.f13589c.execute(new j());
    }

    @Override // com.yandex.metrica.IReporter
    public void sendEventsBuffer() {
        this.f13588b.getClass();
        this.f13593g.getClass();
        this.f13589c.execute(new x());
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z) {
        this.f13588b.getClass();
        this.f13593g.getClass();
        this.f13589c.execute(new r(z));
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
        this.f13588b.getClass();
        this.f13593g.getClass();
        this.f13589c.execute(new l(str));
    }

    private Of(ICommonExecutor iCommonExecutor, Context context, String str, Sf sf) {
        this(iCommonExecutor, context, new C1414ag(), sf, new Wf(), new com.yandex.metrica.f(sf, new D2()), com.yandex.metrica.e.a(str).a());
    }

    @Override // com.yandex.metrica.d
    public void b(String str, String str2) {
        this.f13588b.getClass();
        this.f13593g.getClass();
        this.f13589c.execute(new a(str, str2));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
        this.f13588b.reportEvent(str, str2);
        this.f13593g.getClass();
        this.f13589c.execute(new e(str, str2));
    }

    @Override // com.yandex.metrica.d
    public void d(String str, String str2) {
        this.f13588b.d(str, str2);
        this.f13593g.getClass();
        this.f13589c.execute(new b(str, str2));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) {
        this.f13588b.reportEvent(str, map);
        this.f13593g.getClass();
        this.f13589c.execute(new f(str, A2.a((Map) map)));
    }

    private Of(ICommonExecutor iCommonExecutor, Context context, C1414ag c1414ag, Sf sf, Wf wf, com.yandex.metrica.f fVar, com.yandex.metrica.e eVar) {
        this(iCommonExecutor, context, c1414ag, sf, wf, fVar, eVar, new Nf(c1414ag.a(), fVar, iCommonExecutor, new c(sf, context, eVar)));
    }

    Of(ICommonExecutor iCommonExecutor, Context context, C1414ag c1414ag, Sf sf, Wf wf, com.yandex.metrica.f fVar, com.yandex.metrica.e eVar, Nf nf) {
        this.f13589c = iCommonExecutor;
        this.f13590d = context;
        this.f13588b = c1414ag;
        this.f13587a = sf;
        this.f13591e = wf;
        this.f13593g = fVar;
        this.f13592f = eVar;
        this.f13594h = nf;
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(H6 h6) {
        this.f13593g.getClass();
        this.f13589c.execute(new m(h6));
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(C1945w6 c1945w6) {
        this.f13593g.getClass();
        this.f13589c.execute(new u(c1945w6));
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void a(String str, JSONObject jSONObject) {
        this.f13593g.getClass();
        this.f13589c.execute(new w(str, jSONObject));
    }

    public void a(com.yandex.metrica.e eVar) {
        com.yandex.metrica.e a2 = this.f13591e.a(eVar);
        this.f13593g.getClass();
        this.f13589c.execute(new t(a2));
    }

    static void a(Of of, com.yandex.metrica.e eVar) {
        Sf sf = of.f13587a;
        Context context = of.f13590d;
        sf.getClass();
        R2.a(context).c(eVar);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
        this.f13588b.reportError(str, str2, null);
        this.f13589c.execute(new h(str, str2, null));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
        this.f13588b.reportError(str, str2, th);
        this.f13589c.execute(new h(str, str2, th));
    }
}
