package com.adcolony.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.adcolony.sdk.AdColonyAdView;
import com.adcolony.sdk.AdColonyInterstitial;
import com.adcolony.sdk.e0;
import com.adcolony.sdk.o;
import com.adcolony.sdk.s;
import com.adcolony.sdk.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.iab.omid.library.adcolony.Omid;
import com.iab.omid.library.adcolony.adsession.Partner;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.unity3d.ads.metadata.MediationMetaData;
import io.bidmachine.ads.networks.adcolony.BuildConfig;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k {
    static String Z = "https://adc3-launch.adcolony.com/v4/launch";
    private static volatile String a0 = "";
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private int M;
    private Application.ActivityLifecycleCallbacks O;
    private boolean T;
    private int X;

    /* renamed from: a  reason: collision with root package name */
    private i0 f367a;

    /* renamed from: b  reason: collision with root package name */
    private com.adcolony.sdk.t f368b;

    /* renamed from: c  reason: collision with root package name */
    private t0 f369c;

    /* renamed from: d  reason: collision with root package name */
    private com.adcolony.sdk.d f370d;

    /* renamed from: e  reason: collision with root package name */
    private com.adcolony.sdk.r f371e;

    /* renamed from: f  reason: collision with root package name */
    private com.adcolony.sdk.w f372f;

    /* renamed from: g  reason: collision with root package name */
    private x0 f373g;

    /* renamed from: h  reason: collision with root package name */
    private v0 f374h;
    private g0 i;
    private com.adcolony.sdk.q j;
    private m0 k;
    private com.adcolony.sdk.c l;
    private com.adcolony.sdk.z m;
    private AdColonyAdView n;
    private AdColonyInterstitial o;
    private AdColonyRewardListener p;
    private AdColonyAppOptions r;
    private h0 s;
    private f1 t;
    private String w;
    private String x;
    private String y;
    private HashMap<String, AdColonyCustomMessageListener> q = new HashMap<>();
    private HashMap<String, AdColonyZone> u = new HashMap<>();
    private HashMap<Integer, c1> v = new HashMap<>();
    private String z = "";
    private com.adcolony.sdk.f D = new com.adcolony.sdk.f();
    private int N = 1;
    private Partner P = null;
    private f1 Q = new f1();
    private long R = 500;
    private long S = 500;
    private long U = 20000;
    private long V = 300000;
    private long W = C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
    private boolean Y = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a(k kVar) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            f1 b2 = c0.b();
            c0.b(b2, "crc32", z0.a(c0.h(h0Var.a(), "data")));
            h0Var.a(b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a0 implements j0 {
        a0() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.a(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements j0 {
        b(k kVar) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            int d2 = c0.d(h0Var.a(), "number");
            f1 b2 = c0.b();
            c0.a(b2, "uuids", z0.a(d2));
            h0Var.a(b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b0 implements j0 {
        b0(k kVar) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            f1 b2 = c0.b();
            c0.a(b2, "sha1", z0.b(c0.h(h0Var.a(), "data")));
            h0Var.a(b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements j0 {

        /* loaded from: classes.dex */
        class a implements com.adcolony.sdk.y<String> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f377a;

            a(h0 h0Var) {
                this.f377a = h0Var;
            }

            @Override // com.adcolony.sdk.y
            public void a(String str) {
                f1 b2 = c0.b();
                c0.a(b2, "advertiser_id", k.this.n().f());
                c0.b(b2, "limit_ad_tracking", k.this.n().A());
                this.f377a.a(b2).c();
            }

            @Override // com.adcolony.sdk.y
            public void a(Throwable th) {
                new e0.a().a("Device.query_advertiser_info").a(" failed with error: ").a(Log.getStackTraceString(th)).a(e0.f296g);
            }
        }

        c() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.n().a(com.adcolony.sdk.a.a(), new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements j0 {
        d() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            s0 a2 = k.this.q().a();
            k.this.n().c(c0.h(h0Var.a(), MediationMetaData.KEY_VERSION));
            if (a2 != null) {
                a2.e(k.this.n().o());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements j0 {
        e() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.Q = c0.f(h0Var.a(), "signals");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements j0 {

        /* loaded from: classes.dex */
        class a implements com.adcolony.sdk.x<o.b> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f382a;

            a(f fVar, h0 h0Var) {
                this.f382a = h0Var;
            }

            @Override // com.adcolony.sdk.x
            public void a(o.b bVar) {
                f1 b2 = c0.b();
                if (bVar != null) {
                    c0.a(b2, "odt", bVar.b());
                }
                this.f382a.a(b2).c();
            }
        }

        f() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (k.this.G()) {
                o0.c().a(new a(this, h0Var), k.this.g());
                return;
            }
            o.b b2 = o0.c().b();
            f1 b3 = c0.b();
            if (b2 != null) {
                c0.a(b3, "odt", b2.b());
            }
            h0Var.a(b3).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements j0 {
        g(k kVar) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            o0.c().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements j0 {
        h() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.m.a(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context a2 = com.adcolony.sdk.a.a();
            if (!k.this.L && a2 != null) {
                try {
                    Omid.activate(a2.getApplicationContext());
                    k.this.L = true;
                } catch (IllegalArgumentException unused) {
                    new e0.a().a("IllegalArgumentException when activating Omid").a(e0.i);
                    k.this.L = false;
                }
            }
            if (k.this.L && k.this.P == null) {
                try {
                    k.this.P = Partner.createPartner("AdColony", BuildConfig.ADAPTER_SDK_VERSION_NAME);
                } catch (IllegalArgumentException unused2) {
                    new e0.a().a("IllegalArgumentException when creating Omid Partner").a(e0.i);
                    k.this.L = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements Runnable {

        /* loaded from: classes.dex */
        class a implements s.a {
            a() {
            }

            @Override // com.adcolony.sdk.s.a
            public void a(com.adcolony.sdk.s sVar, h0 h0Var, Map<String, List<String>> map) {
                k.this.a(sVar);
            }
        }

        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f1 b2 = c0.b();
            c0.a(b2, "url", k.Z);
            c0.a(b2, FirebaseAnalytics.Param.CONTENT_TYPE, "application/json");
            c0.a(b2, "content", k.this.n().t().toString());
            c0.a(b2, "url", k.Z);
            if (k.this.Y) {
                f1 b3 = c0.b();
                c0.a(b3, "request", com.adcolony.adcolonysdk.BuildConfig.LAUNCH_REQ_DICT_ID);
                c0.a(b3, "response", com.adcolony.adcolonysdk.BuildConfig.LAUNCH_RESP_DICT_ID);
                c0.a(b2, "dictionaries_mapping", b3);
            }
            k.this.f368b.a(new com.adcolony.sdk.s(new h0("WebServices.post", 0, b2), new a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.adcolony.sdk.k$k  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0010k implements v.c {
        C0010k(k kVar) {
        }

        @Override // com.adcolony.sdk.v.c
        public void a() {
            o0.c().d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f387a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h0 f388b;

        l(Context context, h0 h0Var) {
            this.f387a = context;
            this.f388b = h0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.adcolony.sdk.j a2 = com.adcolony.sdk.j.a(this.f387a.getApplicationContext(), this.f388b);
            k.this.v.put(Integer.valueOf(a2.getAdc3ModuleId()), a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.adcolony.sdk.a.b().x().f()) {
                k.this.K();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class n implements s.a {
        n() {
        }

        @Override // com.adcolony.sdk.s.a
        public void a(com.adcolony.sdk.s sVar, h0 h0Var, Map<String, List<String>> map) {
            k.this.N();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k.this.L();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class p implements AdColonyInterstitial.f {
        p() {
        }

        @Override // com.adcolony.sdk.AdColonyInterstitial.f
        public void a() {
            k.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class q implements AdColonyAdView.c {
        q() {
        }

        @Override // com.adcolony.sdk.AdColonyAdView.c
        public void a() {
            k.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class r implements com.adcolony.sdk.x<n0> {
        r(k kVar) {
        }

        @Override // com.adcolony.sdk.x
        public void a(n0 n0Var) {
            o0.c().a(n0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h0 f395a;

        s(h0 h0Var) {
            this.f395a = h0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            k.this.p.onReward(new AdColonyReward(this.f395a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class t implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Integer> f397a = new HashSet();

        t() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (!k.this.f369c.f()) {
                k.this.f369c.c(true);
            }
            com.adcolony.sdk.a.a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            com.adcolony.sdk.a.f127d = false;
            k.this.f369c.d(false);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            ScheduledExecutorService scheduledExecutorService;
            this.f397a.add(Integer.valueOf(activity.hashCode()));
            com.adcolony.sdk.a.f127d = true;
            com.adcolony.sdk.a.a(activity);
            s0 a2 = k.this.q().a();
            Context a3 = com.adcolony.sdk.a.a();
            if (a3 == null || !k.this.f369c.e() || !(a3 instanceof com.adcolony.sdk.b) || ((com.adcolony.sdk.b) a3).f162d) {
                com.adcolony.sdk.a.a(activity);
                if (k.this.s != null) {
                    if (!Objects.equals(c0.h(k.this.s.a(), "m_origin"), "")) {
                        k.this.s.a(k.this.s.a()).c();
                    }
                    k.this.s = null;
                }
                k.this.B = false;
                k.this.f369c.g(false);
                if (k.this.E && !k.this.f369c.f()) {
                    k.this.f369c.c(true);
                }
                k.this.f369c.d(true);
                k.this.f371e.c();
                if (a2 == null || (scheduledExecutorService = a2.f531b) == null || scheduledExecutorService.isShutdown() || a2.f531b.isTerminated()) {
                    AdColony.a(activity, com.adcolony.sdk.a.b().r);
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            k.this.f369c.e(true);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            this.f397a.remove(Integer.valueOf(activity.hashCode()));
            if (this.f397a.isEmpty()) {
                k.this.f369c.e(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class u implements j0 {
        u() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.c(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class v implements j0 {
        v() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.a(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class w implements j0 {
        w() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            s0 a2 = k.this.q().a();
            k.this.D.a(true);
            if (k.this.J) {
                f1 b2 = c0.b();
                f1 b3 = c0.b();
                c0.a(b3, "app_version", z0.c());
                c0.a(b2, "app_bundle_info", b3);
                new h0("AdColony.on_update", 1, b2).c();
                k.this.J = false;
            }
            if (k.this.K) {
                new h0("AdColony.on_install", 1).c();
            }
            f1 a3 = h0Var.a();
            if (a2 != null) {
                a2.f(c0.h(a3, "app_session_id"));
            }
            if (AdColonyEventTracker.a()) {
                AdColonyEventTracker.b();
            }
            Integer i = a3.i("base_download_threads");
            if (i != null) {
                k.this.f368b.a(i.intValue());
            }
            Integer i2 = a3.i("concurrent_requests");
            if (i2 != null) {
                k.this.f368b.b(i2.intValue());
            }
            Integer i3 = a3.i("threads_keep_alive_time");
            if (i3 != null) {
                k.this.f368b.c(i3.intValue());
            }
            double h2 = a3.h("thread_pool_scaling_factor");
            if (!Double.isNaN(h2)) {
                k.this.f368b.a(h2);
            }
            k.this.m.b();
            k.this.M();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class x implements j0 {
        x() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.b(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class y implements j0 {
        y() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.e(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class z implements j0 {
        z() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            k.this.f(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        new Thread(new j()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean L() {
        this.f367a.a();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        f1 b2 = c0.b();
        c0.a(b2, SessionDescription.ATTR_TYPE, "AdColony.on_configuration_completed");
        e1 e1Var = new e1();
        for (String str : C().keySet()) {
            e1Var.b(str);
        }
        f1 b3 = c0.b();
        c0.a(b3, "zone_ids", e1Var);
        c0.a(b2, "message", b3);
        new h0("CustomMessage.controller_send", 0, b2).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (!a(this.x) && !com.adcolony.sdk.l.H) {
            new e0.a().a("Downloaded controller sha1 does not match, retrying.").a(e0.f295f);
            S();
            return;
        }
        if (!this.F && !this.I) {
            z0.b(new o());
        }
        if (this.F && this.I) {
            Q();
        }
    }

    private void O() {
        Application application;
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null || this.O != null) {
            return;
        }
        this.O = new t();
        if (a2 instanceof Application) {
            application = (Application) a2;
        } else {
            application = ((Activity) a2).getApplication();
        }
        application.registerActivityLifecycleCallbacks(this.O);
    }

    private void S() {
        if (com.adcolony.sdk.a.b().x().f()) {
            int i2 = this.M + 1;
            this.M = i2;
            this.N = Math.min(this.N * i2, 120);
            z0.a(new m(), this.N * 1000);
            return;
        }
        new e0.a().a("Max launch server download attempts hit, or AdColony is no longer").a(" active.").a(e0.f296g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0 A() {
        if (this.f373g == null) {
            x0 x0Var = new x0();
            this.f373g = x0Var;
            x0Var.a();
        }
        return this.f373g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, c1> B() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<String, AdColonyZone> C() {
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean D() {
        return this.r != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean E() {
        return this.B;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean F() {
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean G() {
        return this.T;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean H() {
        return this.Y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean I() {
        return this.D.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean J() {
        return this.A;
    }

    void P() {
        this.D.a(false);
        this.f370d.b();
        Object option = this.r.getOption("force_ad_id");
        if ((option instanceof String) && !((String) option).isEmpty()) {
            R();
        }
        AdColony.a(com.adcolony.sdk.a.a(), this.r);
        T();
        this.u.clear();
        this.f367a.a();
    }

    void Q() {
        this.X = 0;
        for (AdColonyInterstitial adColonyInterstitial : this.f370d.f().values()) {
            if (adColonyInterstitial.m()) {
                this.X++;
                adColonyInterstitial.a(new p());
            }
        }
        for (AdColonyAdView adColonyAdView : this.f370d.d().values()) {
            this.X++;
            adColonyAdView.setOnDestroyListenerOrCall(new q());
        }
        if (this.X == 0) {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R() {
        synchronized (this.f370d.f()) {
            for (AdColonyInterstitial adColonyInterstitial : this.f370d.f().values()) {
                adColonyInterstitial.p();
            }
            this.f370d.f().clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T() {
        a(1);
        for (c1 c1Var : this.v.values()) {
            this.f367a.b(c1Var);
        }
        this.v.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyAppOptions u() {
        if (this.r == null) {
            this.r = new AdColonyAppOptions();
        }
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String v() {
        return a0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyRewardListener w() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0 x() {
        if (this.f369c == null) {
            t0 t0Var = new t0();
            this.f369c = t0Var;
            t0Var.d();
        }
        return this.f369c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long y() {
        return this.R;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0 z() {
        if (this.f374h == null) {
            v0 v0Var = new v0();
            this.f374h = v0Var;
            v0Var.e();
        }
        return this.f374h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        return this.z;
    }

    long g() {
        return this.S;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long h() {
        return this.V;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long i() {
        return this.W;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyInterstitial j() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyAdView k() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.adcolony.sdk.c l() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<String, AdColonyCustomMessageListener> m() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.adcolony.sdk.q n() {
        if (this.j == null) {
            com.adcolony.sdk.q qVar = new com.adcolony.sdk.q();
            this.j = qVar;
            qVar.M();
        }
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.adcolony.sdk.r o() {
        if (this.f371e == null) {
            this.f371e = new com.adcolony.sdk.r();
        }
        return this.f371e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.adcolony.sdk.w p() {
        if (this.f372f == null) {
            com.adcolony.sdk.w wVar = new com.adcolony.sdk.w();
            this.f372f = wVar;
            wVar.b();
        }
        return this.f372f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0 q() {
        if (this.i == null) {
            g0 g0Var = new g0();
            this.i = g0Var;
            g0Var.c();
        }
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0 r() {
        if (this.f367a == null) {
            i0 i0Var = new i0();
            this.f367a = i0Var;
            i0Var.a();
        }
        return this.f367a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0 s() {
        if (this.k == null) {
            this.k = new m0();
        }
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Partner t() {
        return this.P;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(h0 h0Var) {
        AdColonyZone adColonyZone;
        if (this.C) {
            return;
        }
        String h2 = c0.h(h0Var.a(), "zone_id");
        if (this.u.containsKey(h2)) {
            adColonyZone = this.u.get(h2);
        } else {
            AdColonyZone adColonyZone2 = new AdColonyZone(h2);
            this.u.put(h2, adColonyZone2);
            adColonyZone = adColonyZone2;
        }
        adColonyZone.a(h0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(h0 h0Var) {
        this.s = h0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(h0 h0Var) {
        if (this.p != null) {
            z0.b(new s(h0Var));
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(h0 h0Var) {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return false;
        }
        try {
            int j2 = h0Var.a().j("id");
            if (j2 > 0) {
                a(j2);
            }
            z0.b(new l(a2, h0Var));
            return true;
        } catch (RuntimeException e2) {
            new e0.a().a(e2.toString() + ": during WebView initialization.").a(" Disabling AdColony.").a(e0.f297h);
            AdColony.disable();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z2) {
        this.D.a(false);
        this.C = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z2) {
        this.E = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d() {
        return this.U;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z2) {
        this.A = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 e() {
        return this.Q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(h0 h0Var) {
        f1 b2 = this.r.b();
        c0.a(b2, OSOutcomeConstants.APP_ID, this.r.a());
        f1 b3 = c0.b();
        c0.a(b3, "options", b2);
        h0Var.a(b3).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyAppOptions adColonyAppOptions, boolean z2) {
        this.C = z2;
        this.r = adColonyAppOptions;
        this.f367a = new i0();
        new com.adcolony.sdk.m();
        com.adcolony.sdk.q qVar = new com.adcolony.sdk.q();
        this.j = qVar;
        qVar.M();
        com.adcolony.sdk.t tVar = new com.adcolony.sdk.t();
        this.f368b = tVar;
        tVar.a();
        t0 t0Var = new t0();
        this.f369c = t0Var;
        t0Var.d();
        com.adcolony.sdk.d dVar = new com.adcolony.sdk.d();
        this.f370d = dVar;
        dVar.h();
        this.f371e = new com.adcolony.sdk.r();
        com.adcolony.sdk.w wVar = new com.adcolony.sdk.w();
        this.f372f = wVar;
        wVar.b();
        g0 g0Var = new g0();
        this.i = g0Var;
        g0Var.c();
        v0 v0Var = new v0();
        this.f374h = v0Var;
        v0Var.e();
        x0 x0Var = new x0();
        this.f373g = x0Var;
        x0Var.a();
        this.k = new m0();
        this.m = new com.adcolony.sdk.z();
        this.k.b();
        AdColony.a(com.adcolony.sdk.a.a(), adColonyAppOptions);
        if (!z2) {
            this.G = new File(this.f374h.a() + "026ae9c9824b3e483fa6c71fa88f57ae27816141").exists();
            boolean exists = new File(this.f374h.a() + "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5").exists();
            this.H = exists;
            this.F = this.G && exists && c0.h(c0.c(new StringBuilder().append(this.f374h.a()).append("026ae9c9824b3e483fa6c71fa88f57ae27816141").toString()), "sdkVersion").equals(this.j.I());
            com.adcolony.sdk.v.a().a(new C0010k(this));
            if (this.G) {
                f1 c2 = c0.c(this.f374h.a() + "026ae9c9824b3e483fa6c71fa88f57ae27816141");
                this.t = c2;
                b(c2);
            }
            a(this.F);
            O();
        }
        com.adcolony.sdk.a.a("Module.load", new u());
        com.adcolony.sdk.a.a("Module.unload", new v());
        com.adcolony.sdk.a.a("AdColony.on_configured", new w());
        com.adcolony.sdk.a.a("AdColony.get_app_info", new x());
        com.adcolony.sdk.a.a("AdColony.v4vc_reward", new y());
        com.adcolony.sdk.a.a("AdColony.zone_info", new z());
        com.adcolony.sdk.a.a("AdColony.probe_launch_server", new a0());
        com.adcolony.sdk.a.a("Crypto.sha1", new b0(this));
        com.adcolony.sdk.a.a("Crypto.crc32", new a(this));
        com.adcolony.sdk.a.a("Crypto.uuid", new b(this));
        com.adcolony.sdk.a.a("Device.query_advertiser_info", new c());
        com.adcolony.sdk.a.a("AdColony.controller_version", new d());
        com.adcolony.sdk.a.a("AdColony.provide_signals", new e());
        com.adcolony.sdk.a.a("AdColony.odt_calculate", new f());
        com.adcolony.sdk.a.a("AdColony.odt_cache", new g(this));
        com.adcolony.sdk.a.a("AdColony.heartbeat", new h());
        int b2 = z0.b(this.f374h);
        this.J = b2 == 1;
        this.K = b2 == 2;
        z0.b(new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int i2 = this.X - 1;
        this.X = i2;
        if (i2 == 0) {
            P();
        }
    }

    private void b(f1 f1Var) {
        if (!com.adcolony.sdk.l.H) {
            f1 f2 = c0.f(f1Var, "logging");
            g0.f318h = c0.a(f2, "send_level", 1);
            g0.f316f = c0.b(f2, "log_private");
            g0.f317g = c0.a(f2, "print_level", 3);
            this.i.b(c0.a(f2, "modules"));
            this.i.c(c0.e(f2, "included_fields"));
        }
        f1 f3 = c0.f(f1Var, TtmlNode.TAG_METADATA);
        n().a(f3);
        x().a(c0.d(f3, "session_timeout"));
        a0 = c0.h(f1Var, "pie");
        this.z = c0.h(c0.f(f1Var, "controller"), MediationMetaData.KEY_VERSION);
        this.R = c0.a(f3, "signals_timeout", this.R);
        this.S = c0.a(f3, "calculate_odt_timeout", this.S);
        this.T = c0.a(f3, "async_odt_query", this.T);
        this.U = c0.a(f3, "ad_request_timeout", this.U);
        this.V = c0.a(f3, "controller_heartbeat_interval", this.V);
        this.W = c0.a(f3, "controller_heartbeat_timeout", this.W);
        this.Y = c0.a(f3, "enable_compression", false);
        com.adcolony.sdk.v.a().a(f3.n("odt_config"), new r(this));
    }

    private boolean c(f1 f1Var) {
        if (f1Var == null) {
            return false;
        }
        try {
            try {
                f1 f2 = c0.f(f1Var, "controller");
                this.w = c0.h(f2, "url");
                this.x = c0.h(f2, "sha1");
                this.y = c0.h(f1Var, "status");
                b(f1Var);
                if (AdColonyEventTracker.a()) {
                    AdColonyEventTracker.b();
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            new File(this.f374h.a() + "026ae9c9824b3e483fa6c71fa88f57ae27816141").delete();
        }
        if (this.y.equals("disable") && !com.adcolony.sdk.l.H) {
            try {
                new File(this.f374h.a() + "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5").delete();
            } catch (Exception unused3) {
            }
            new e0.a().a("Launch server response with disabled status. Disabling AdColony ").a("until next launch.").a(e0.f296g);
            AdColony.disable();
            return false;
        } else if ((this.w.equals("") || this.y.equals("")) && !com.adcolony.sdk.l.H) {
            new e0.a().a("Missing controller status or URL. Disabling AdColony until next ").a("launch.").a(e0.i);
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(AdColonyAppOptions adColonyAppOptions) {
        this.r = adColonyAppOptions;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z2) {
        this.B = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.adcolony.sdk.d c() {
        if (this.f370d == null) {
            com.adcolony.sdk.d dVar = new com.adcolony.sdk.d();
            this.f370d = dVar;
            dVar.h();
        }
        return this.f370d;
    }

    private boolean a(boolean z2) {
        return a(z2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(boolean z2, boolean z3) {
        if (com.adcolony.sdk.a.c()) {
            this.I = z3;
            this.F = z2;
            if (z2 && !z3) {
                if (!L()) {
                    return false;
                }
                this.I = true;
            }
            K();
            return true;
        }
        return false;
    }

    private boolean a(f1 f1Var) {
        if (this.F) {
            f1 f1Var2 = this.t;
            if (f1Var2 == null || !c0.h(c0.f(f1Var2, "controller"), "sha1").equals(c0.h(c0.f(f1Var, "controller"), "sha1"))) {
                new e0.a().a("Controller sha1 does not match, downloading new controller.").a(e0.f296g);
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(h0 h0Var) {
        a(c0.d(h0Var.a(), "id"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.adcolony.sdk.s sVar) {
        if (sVar.n) {
            f1 a2 = c0.a(sVar.m, "Parsing launch response");
            c0.a(a2, "sdkVersion", n().I());
            c0.j(a2, this.f374h.a() + "026ae9c9824b3e483fa6c71fa88f57ae27816141");
            if (!c(a2)) {
                if (this.F) {
                    return;
                }
                new e0.a().a("Incomplete or disabled launch server response. ").a("Disabling AdColony until next launch.").a(e0.f297h);
                b(true);
                return;
            }
            if (a(a2)) {
                f1 b2 = c0.b();
                c0.a(b2, "url", this.w);
                c0.a(b2, "filepath", this.f374h.a() + "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5");
                this.f368b.a(new com.adcolony.sdk.s(new h0("WebServices.download", 0, b2), new n()));
            }
            this.t = a2;
            return;
        }
        S();
    }

    private boolean a(String str) {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 != null) {
            File file = new File(a2.getFilesDir().getAbsolutePath() + "/adc3/7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5");
            if (file.exists()) {
                return z0.a(str, file);
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f370d.a();
        P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyAppOptions adColonyAppOptions) {
        this.D.a(false);
        this.f370d.b();
        R();
        AdColony.a(com.adcolony.sdk.a.a(), adColonyAppOptions);
        T();
        this.u.clear();
        this.r = adColonyAppOptions;
        this.f367a.a();
        a(true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(k0 k0Var) {
        this.v.remove(Integer.valueOf(k0Var.getModuleId()));
        return this.f367a.b(k0Var);
    }

    boolean a(int i2) {
        this.v.remove(Integer.valueOf(i2));
        return this.f367a.b(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyRewardListener adColonyRewardListener) {
        this.p = adColonyRewardListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.adcolony.sdk.c cVar) {
        this.l = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyAdView adColonyAdView) {
        this.n = adColonyAdView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyInterstitial adColonyInterstitial) {
        this.o = adColonyInterstitial;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j2) {
        this.D.a(j2);
    }
}
