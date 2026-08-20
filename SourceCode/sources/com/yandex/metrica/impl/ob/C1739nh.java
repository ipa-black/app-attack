package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.plugins.PluginErrorDetails;
import com.yandex.metrica.profile.UserProfile;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.nh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1739nh implements M0, IPluginReporter {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC1639jh> f15253a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private volatile M0 f15254b;

    /* renamed from: com.yandex.metrica.impl.ob.nh$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15255a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15256b;

        a(C1739nh c1739nh, String str, String str2) {
            this.f15255a = str;
            this.f15256b = str2;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.d(this.f15255a, this.f15256b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$b */
    /* loaded from: classes5.dex */
    class b implements InterfaceC1639jh {
        b(C1739nh c1739nh) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.sendEventsBuffer();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$c */
    /* loaded from: classes5.dex */
    class c implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ H6 f15257a;

        c(C1739nh c1739nh, H6 h6) {
            this.f15257a = h6;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.a(this.f15257a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$d */
    /* loaded from: classes5.dex */
    class d implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15258a;

        d(C1739nh c1739nh, String str) {
            this.f15258a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportEvent(this.f15258a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$e */
    /* loaded from: classes5.dex */
    class e implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15259a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15260b;

        e(C1739nh c1739nh, String str, String str2) {
            this.f15259a = str;
            this.f15260b = str2;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportEvent(this.f15259a, this.f15260b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.nh$f */
    /* loaded from: classes5.dex */
    public class f implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15261a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f15262b;

        f(C1739nh c1739nh, String str, Map map) {
            this.f15261a = str;
            this.f15262b = map;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportEvent(this.f15261a, this.f15262b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.nh$g */
    /* loaded from: classes5.dex */
    public class g implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15263a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f15264b;

        g(C1739nh c1739nh, String str, Throwable th) {
            this.f15263a = str;
            this.f15264b = th;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportError(this.f15263a, this.f15264b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$h */
    /* loaded from: classes5.dex */
    class h implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15265a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15266b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Throwable f15267c;

        h(C1739nh c1739nh, String str, String str2, Throwable th) {
            this.f15265a = str;
            this.f15266b = str2;
            this.f15267c = th;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportError(this.f15265a, this.f15266b, this.f15267c);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$i */
    /* loaded from: classes5.dex */
    class i implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f15268a;

        i(C1739nh c1739nh, Throwable th) {
            this.f15268a = th;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportUnhandledException(this.f15268a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$j */
    /* loaded from: classes5.dex */
    class j implements InterfaceC1639jh {
        j(C1739nh c1739nh) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.resumeSession();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$k */
    /* loaded from: classes5.dex */
    class k implements InterfaceC1639jh {
        k(C1739nh c1739nh) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.pauseSession();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$l */
    /* loaded from: classes5.dex */
    class l implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15269a;

        l(C1739nh c1739nh, String str) {
            this.f15269a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.setUserProfileID(this.f15269a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$m */
    /* loaded from: classes5.dex */
    class m implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserProfile f15270a;

        m(C1739nh c1739nh, UserProfile userProfile) {
            this.f15270a = userProfile;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportUserProfile(this.f15270a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$n */
    /* loaded from: classes5.dex */
    class n implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1945w6 f15271a;

        n(C1739nh c1739nh, C1945w6 c1945w6) {
            this.f15271a = c1945w6;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.a(this.f15271a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$o */
    /* loaded from: classes5.dex */
    class o implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Revenue f15272a;

        o(C1739nh c1739nh, Revenue revenue) {
            this.f15272a = revenue;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportRevenue(this.f15272a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$p */
    /* loaded from: classes5.dex */
    class p implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ECommerceEvent f15273a;

        p(C1739nh c1739nh, ECommerceEvent eCommerceEvent) {
            this.f15273a = eCommerceEvent;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportECommerce(this.f15273a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$q */
    /* loaded from: classes5.dex */
    class q implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f15274a;

        q(C1739nh c1739nh, boolean z) {
            this.f15274a = z;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.setStatisticsSending(this.f15274a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$r */
    /* loaded from: classes5.dex */
    class r implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdRevenue f15275a;

        r(C1739nh c1739nh, AdRevenue adRevenue) {
            this.f15275a = adRevenue;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.reportAdRevenue(this.f15275a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$s */
    /* loaded from: classes5.dex */
    class s implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f15276a;

        s(C1739nh c1739nh, PluginErrorDetails pluginErrorDetails) {
            this.f15276a = pluginErrorDetails;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.getPluginExtension().reportUnhandledException(this.f15276a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$t */
    /* loaded from: classes5.dex */
    class t implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f15277a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15278b;

        t(C1739nh c1739nh, PluginErrorDetails pluginErrorDetails, String str) {
            this.f15277a = pluginErrorDetails;
            this.f15278b = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.getPluginExtension().reportError(this.f15277a, this.f15278b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$u */
    /* loaded from: classes5.dex */
    class u implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15279a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15280b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f15281c;

        u(C1739nh c1739nh, String str, String str2, PluginErrorDetails pluginErrorDetails) {
            this.f15279a = str;
            this.f15280b = str2;
            this.f15281c = pluginErrorDetails;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.getPluginExtension().reportError(this.f15279a, this.f15280b, this.f15281c);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$v */
    /* loaded from: classes5.dex */
    class v implements InterfaceC1639jh {
        v(C1739nh c1739nh) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.b();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$w */
    /* loaded from: classes5.dex */
    class w implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15282a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f15283b;

        w(C1739nh c1739nh, String str, JSONObject jSONObject) {
            this.f15282a = str;
            this.f15283b = jSONObject;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.a(this.f15282a, this.f15283b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.nh$x */
    /* loaded from: classes5.dex */
    class x implements InterfaceC1639jh {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15284a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15285b;

        x(C1739nh c1739nh, String str, String str2) {
            this.f15284a = str;
            this.f15285b = str2;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1639jh
        public void a(M0 m0) {
            m0.b(this.f15284a, this.f15285b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(Context context) {
        this.f15254b = Pf.a().a(context, "20799a27-fa80-4b36-b2db-0f8141f24180");
        for (InterfaceC1639jh interfaceC1639jh : this.f15253a) {
            interfaceC1639jh.a(this.f15254b);
        }
        this.f15253a.clear();
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void b() {
        a(new v(this));
    }

    @Override // com.yandex.metrica.d
    public void d(String str, String str2) {
        a(new a(this, str, str2));
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
        a(new k(this));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
        a(new r(this, adRevenue));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
        a(new p(this, eCommerceEvent));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
        a(new g(this, str, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) {
        a(new d(this, str));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
        a(new o(this, revenue));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
        a(new i(this, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
        a(new m(this, userProfile));
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
        a(new j(this));
    }

    @Override // com.yandex.metrica.IReporter
    public void sendEventsBuffer() {
        a(new b(this));
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z) {
        a(new q(this, z));
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
        a(new l(this, str));
    }

    @Override // com.yandex.metrica.d
    public void b(String str, String str2) {
        a(new x(this, str, str2));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
        a(new h(this, str, str2, null));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
        a(new e(this, str, str2));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        a(new s(this, pluginErrorDetails));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
        a(new h(this, str, str2, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) {
        a(new f(this, str, map));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        a(new t(this, pluginErrorDetails, str));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        a(new u(this, str, str2, pluginErrorDetails));
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(H6 h6) {
        a(new c(this, h6));
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(C1945w6 c1945w6) {
        a(new n(this, c1945w6));
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void a(String str, JSONObject jSONObject) {
        a(new w(this, str, jSONObject));
    }

    private synchronized void a(InterfaceC1639jh interfaceC1639jh) {
        if (this.f15254b == null) {
            this.f15253a.add(interfaceC1639jh);
        } else {
            interfaceC1639jh.a(this.f15254b);
        }
    }
}
