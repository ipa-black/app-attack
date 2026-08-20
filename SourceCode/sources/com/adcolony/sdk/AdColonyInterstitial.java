package com.adcolony.sdk;

import android.content.Context;
import android.content.Intent;
import androidx.browser.customtabs.CustomTabsCallback;
import com.adcolony.sdk.e0;
import com.adcolony.sdk.z0;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes.dex */
public class AdColonyInterstitial {
    public static final int ADCOLONY_IAP_ENGAGEMENT_END_CARD = 0;
    public static final int ADCOLONY_IAP_ENGAGEMENT_OVERLAY = 1;

    /* renamed from: a  reason: collision with root package name */
    private AdColonyInterstitialListener f84a;

    /* renamed from: b  reason: collision with root package name */
    private f f85b;

    /* renamed from: c  reason: collision with root package name */
    private com.adcolony.sdk.c f86c;

    /* renamed from: d  reason: collision with root package name */
    private AdColonyAdOptions f87d;

    /* renamed from: e  reason: collision with root package name */
    private p0 f88e;

    /* renamed from: f  reason: collision with root package name */
    private int f89f;

    /* renamed from: g  reason: collision with root package name */
    private String f90g;

    /* renamed from: h  reason: collision with root package name */
    private String f91h;
    private final String i;
    private String j;
    private String k;
    private boolean m;
    private String n;
    final z0.b o = new a();
    private g l = g.REQUESTED;

    /* loaded from: classes.dex */
    class a implements z0.b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f92a;

        a() {
        }

        @Override // com.adcolony.sdk.z0.b
        public boolean a() {
            return this.f92a;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.f92a) {
                    return;
                }
                this.f92a = true;
                if (com.adcolony.sdk.a.d()) {
                    k b2 = com.adcolony.sdk.a.b();
                    if (b2.I()) {
                        b2.a();
                    }
                    new e0.a().a("Ad show failed due to a native timeout (5000 ms). ").a("Interstitial with adSessionId(" + AdColonyInterstitial.this.f90g + "). ").a("Reloading controller.").a(e0.i);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((com.adcolony.sdk.a.a() instanceof AdColonyInterstitialActivity) || AdColonyInterstitial.this.f84a == null) {
                return;
            }
            AdColonyInterstitial.this.f84a.onOpened(AdColonyInterstitial.this);
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.adcolony.sdk.d f95a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f96b;

        c(com.adcolony.sdk.d dVar, String str) {
            this.f95a = dVar;
            this.f96b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context a2 = com.adcolony.sdk.a.a();
            if (!(a2 instanceof com.adcolony.sdk.b)) {
                if (AdColonyInterstitial.this.f84a != null) {
                    AdColonyInterstitial.this.f84a.onClosed(AdColonyInterstitial.this);
                    AdColonyInterstitial.this.setListener(null);
                }
                AdColonyInterstitial.this.o();
                AdColonyInterstitial.this.destroy();
                com.adcolony.sdk.a.b().e(false);
            } else {
                this.f95a.a(a2, c0.b(), this.f96b);
            }
            if (AdColonyInterstitial.this.f86c != null) {
                this.f95a.a(AdColonyInterstitial.this.f86c);
                AdColonyInterstitial.this.f86c = null;
            }
        }
    }

    /* loaded from: classes.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitialListener f98a;

        d(AdColonyInterstitialListener adColonyInterstitialListener) {
            this.f98a = adColonyInterstitialListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f98a.onRequestNotFilled(AdColony.a(AdColonyInterstitial.this.getZoneID()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitialListener f100a;

        e(AdColonyInterstitialListener adColonyInterstitialListener) {
            this.f100a = adColonyInterstitialListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f100a.onExpiring(AdColonyInterstitial.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface f {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum g {
        REQUESTED,
        FILLED,
        NOT_FILLED,
        EXPIRED,
        SHOWN,
        CLOSED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyInterstitial(String str, AdColonyInterstitialListener adColonyInterstitialListener, String str2) {
        this.f84a = adColonyInterstitialListener;
        this.i = str2;
        this.f90g = str;
    }

    private boolean k() {
        String e2 = com.adcolony.sdk.a.b().s().e();
        String viewNetworkPassFilter = getViewNetworkPassFilter();
        return viewNetworkPassFilter == null || viewNetworkPassFilter.length() == 0 || viewNetworkPassFilter.equals(e2) || viewNetworkPassFilter.equals("all") || (viewNetworkPassFilter.equals(CustomTabsCallback.ONLINE_EXTRAS_KEY) && (e2.equals("wifi") || e2.equals("cell"))) || (viewNetworkPassFilter.equals("offline") && e2.equals("none"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
    }

    public boolean cancel() {
        if (this.f86c != null) {
            Context a2 = com.adcolony.sdk.a.a();
            if (a2 == null || (a2 instanceof AdColonyInterstitialActivity)) {
                f1 b2 = c0.b();
                c0.a(b2, "id", this.f86c.a());
                new h0("AdSession.on_request_close", this.f86c.k(), b2).c();
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.adcolony.sdk.c d() {
        return this.f86c;
    }

    public boolean destroy() {
        com.adcolony.sdk.a.b().c().f().remove(this.f90g);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(String str) {
        if (com.adcolony.sdk.a.d()) {
            k b2 = com.adcolony.sdk.a.b();
            com.adcolony.sdk.d c2 = b2.c();
            z0.b(new b());
            AdColonyZone adColonyZone = b2.C().get(this.i);
            if (adColonyZone != null && adColonyZone.isRewarded()) {
                f1 f1Var = new f1();
                c0.b(f1Var, "reward_amount", adColonyZone.getRewardAmount());
                c0.a(f1Var, "reward_name", adColonyZone.getRewardName());
                c0.b(f1Var, FirebaseAnalytics.Param.SUCCESS, true);
                c0.a(f1Var, "zone_id", this.i);
                b2.e(new h0("AdColony.v4vc_reward", 0, f1Var));
            }
            z0.b(new c(c2, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f89f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g() {
        return this.k;
    }

    public AdColonyInterstitialListener getListener() {
        return this.f84a;
    }

    public String getViewNetworkPassFilter() {
        return this.n;
    }

    public String getZoneID() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.f88e != null;
    }

    public boolean isExpired() {
        g gVar = this.l;
        return gVar == g.EXPIRED || gVar == g.SHOWN || gVar == g.CLOSED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return this.l == g.FILLED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        return this.l == g.REQUESTED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return this.l == g.SHOWN;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n() {
        z0.c(this.o);
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null || !com.adcolony.sdk.a.d() || this.o.a()) {
            return false;
        }
        com.adcolony.sdk.a.b().a(this.f86c);
        com.adcolony.sdk.a.b().a(this);
        z0.a(new Intent(a2, AdColonyInterstitialActivity.class));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        f fVar;
        synchronized (this) {
            r();
            fVar = this.f85b;
            if (fVar != null) {
                this.f85b = null;
            } else {
                fVar = null;
            }
        }
        if (fVar != null) {
            fVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        s();
        AdColonyInterstitialListener adColonyInterstitialListener = this.f84a;
        if (adColonyInterstitialListener == null) {
            return false;
        }
        z0.b(new e(adColonyInterstitialListener));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q() {
        u();
        AdColonyInterstitialListener adColonyInterstitialListener = this.f84a;
        if (adColonyInterstitialListener == null) {
            return false;
        }
        z0.b(new d(adColonyInterstitialListener));
        return true;
    }

    void r() {
        this.l = g.CLOSED;
    }

    void s() {
        this.l = g.EXPIRED;
    }

    public void setListener(AdColonyInterstitialListener adColonyInterstitialListener) {
        this.f84a = adColonyInterstitialListener;
    }

    public void setViewNetworkPassFilter(String str) {
        this.n = str;
    }

    public boolean show() {
        boolean z = false;
        if (com.adcolony.sdk.a.d()) {
            k b2 = com.adcolony.sdk.a.b();
            f1 b3 = c0.b();
            c0.a(b3, "zone_id", this.i);
            c0.b(b3, SessionDescription.ATTR_TYPE, 0);
            c0.a(b3, "id", this.f90g);
            if (m()) {
                c0.b(b3, "request_fail_reason", 24);
                new e0.a().a("This ad object has already been shown. Please request a new ad ").a("via AdColony.requestInterstitial.").a(e0.f295f);
            } else if (this.l == g.EXPIRED) {
                c0.b(b3, "request_fail_reason", 17);
                new e0.a().a("This ad object has expired. Please request a new ad via AdColony").a(".requestInterstitial.").a(e0.f295f);
            } else if (b2.J()) {
                c0.b(b3, "request_fail_reason", 23);
                new e0.a().a("Can not show ad while an interstitial is already active.").a(e0.f295f);
            } else if (a(b2.C().get(this.i))) {
                c0.b(b3, "request_fail_reason", 11);
            } else if (!k()) {
                c0.b(b3, "request_fail_reason", 9);
                new e0.a().a("Tried to show interstitial ad during unacceptable network conditions.").a(e0.f295f);
            } else {
                v();
                com.adcolony.sdk.a.b().e(true);
                z0.a(this.o, 5000L);
                z = true;
            }
            AdColonyAdOptions adColonyAdOptions = this.f87d;
            if (adColonyAdOptions != null) {
                c0.b(b3, "pre_popup", adColonyAdOptions.f58a);
                c0.b(b3, "post_popup", this.f87d.f59b);
            }
            AdColonyZone adColonyZone = b2.C().get(this.i);
            if (adColonyZone != null && adColonyZone.isRewarded() && b2.w() == null) {
                new e0.a().a("Rewarded ad: show() called with no reward listener set.").a(e0.f295f);
            }
            new h0("AdSession.launch_ad_unit", 1, b3).c();
            return z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t() {
        this.l = g.FILLED;
    }

    void u() {
        this.l = g.NOT_FILLED;
    }

    void v() {
        this.l = g.SHOWN;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f90g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str) {
        this.k = str;
    }

    boolean a(AdColonyZone adColonyZone) {
        if (adColonyZone != null) {
            if (adColonyZone.getPlayFrequency() <= 1) {
                return false;
            }
            if (adColonyZone.a() == 0) {
                adColonyZone.b(adColonyZone.getPlayFrequency() - 1);
                return false;
            }
            adColonyZone.b(adColonyZone.a() - 1);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        this.j = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.m = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f fVar) {
        boolean z;
        synchronized (this) {
            if (this.l == g.CLOSED) {
                z = true;
            } else {
                this.f85b = fVar;
                z = false;
            }
        }
        if (z) {
            fVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f1 f1Var) {
        if (f1Var.b()) {
            return;
        }
        this.f88e = new p0(f1Var, this.f90g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.adcolony.sdk.c cVar) {
        this.f86c = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyAdOptions adColonyAdOptions) {
        this.f87d = adColonyAdOptions;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.f89f = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        String str = this.f91h;
        return str == null ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0 e() {
        return this.f88e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f91h = str;
    }
}
