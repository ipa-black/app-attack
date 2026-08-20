package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PointF;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class b implements AppLovinCommunicatorSubscriber {
    private volatile AppLovinAdClickListener A;

    /* renamed from: a  reason: collision with root package name */
    private Context f4370a;

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f4371b;

    /* renamed from: c  reason: collision with root package name */
    private com.applovin.impl.sdk.n f4372c;

    /* renamed from: d  reason: collision with root package name */
    private AppLovinAdServiceImpl f4373d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.sdk.v f4374e;

    /* renamed from: f  reason: collision with root package name */
    private AppLovinCommunicator f4375f;

    /* renamed from: g  reason: collision with root package name */
    private AppLovinAdSize f4376g;

    /* renamed from: h  reason: collision with root package name */
    private String f4377h;
    private com.applovin.impl.sdk.d.d i;
    private e j;
    private c k;
    private d l;
    private Runnable m;
    private Runnable n;
    private volatile AppLovinAdLoadListener x;
    private volatile AppLovinAdDisplayListener y;
    private volatile AppLovinAdViewEventListener z;
    private volatile com.applovin.impl.sdk.ad.e o = null;
    private volatile AppLovinAd p = null;
    private l q = null;
    private l r = null;
    private final AtomicReference<AppLovinAd> s = new AtomicReference<>();
    private final AtomicBoolean t = new AtomicBoolean();
    private volatile boolean u = false;
    private volatile boolean v = false;
    private volatile boolean w = false;
    private volatile g B = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.l != null) {
                b.this.l.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.impl.adview.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0061b implements Runnable {
        private RunnableC0061b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.o != null) {
                if (b.this.l == null) {
                    com.applovin.impl.sdk.v.i("AppLovinAdView", "Unable to render advertisement for ad #" + b.this.o.getAdIdNumber() + ". Please make sure you are not calling AppLovinAdView.destroy() prematurely.");
                    com.applovin.impl.sdk.utils.k.a(b.this.z, b.this.o, (AppLovinAdView) null, AppLovinAdViewDisplayErrorCode.WEBVIEW_NOT_FOUND);
                    return;
                }
                b.this.x();
                com.applovin.impl.sdk.v unused = b.this.f4374e;
                if (com.applovin.impl.sdk.v.a()) {
                    b.this.f4374e.b("AppLovinAdView", "Rendering advertisement ad for #" + b.this.o.getAdIdNumber() + APSSharedUtil.TRUNCATE_SEPARATOR);
                }
                b.b(b.this.l, b.this.o.getSize());
                b.this.l.a(b.this.o);
                if (b.this.o.getSize() != AppLovinAdSize.INTERSTITIAL && !b.this.v) {
                    b.this.i = new com.applovin.impl.sdk.d.d(b.this.o, b.this.f4372c);
                    b.this.i.a();
                    b.this.l.setStatsManagerHelper(b.this.i);
                    b.this.o.setHasShown(true);
                }
                if (b.this.l.getStatsManagerHelper() != null) {
                    b.this.l.getStatsManagerHelper().a(b.this.o.A() ? 0L : 1L);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c implements AppLovinAdLoadListener {

        /* renamed from: a  reason: collision with root package name */
        private final b f4396a;

        c(b bVar, com.applovin.impl.sdk.n nVar) {
            if (bVar == null) {
                throw new IllegalArgumentException("No view specified");
            }
            if (nVar == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.f4396a = bVar;
        }

        private b a() {
            return this.f4396a;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            b a2 = a();
            if (a2 != null) {
                a2.b(appLovinAd);
            } else {
                com.applovin.impl.sdk.v.i("AppLovinAdView", "Ad view has been garbage collected by the time an ad was received");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            b a2 = a();
            if (a2 != null) {
                a2.a(i);
            }
        }
    }

    private void a(AppLovinAdView appLovinAdView, com.applovin.impl.sdk.n nVar, AppLovinAdSize appLovinAdSize, String str, Context context) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        this.f4372c = nVar;
        this.f4373d = nVar.v();
        this.f4374e = nVar.D();
        this.f4375f = AppLovinCommunicator.getInstance(context);
        this.f4376g = appLovinAdSize;
        this.f4377h = str;
        if (!(context instanceof AppLovinFullscreenActivity)) {
            context = context.getApplicationContext();
        }
        this.f4370a = context;
        this.f4371b = appLovinAdView;
        this.j = new e(this, nVar);
        this.n = new a();
        this.m = new RunnableC0061b();
        this.k = new c(this, nVar);
        a(appLovinAdSize);
    }

    private void a(Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, AppLovinAdSize appLovinAdSize) {
        if (view == null) {
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        int applyDimension = appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel()) ? -1 : appLovinAdSize.getWidth() == -1 ? displayMetrics.widthPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        int applyDimension2 = appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel()) ? -1 : appLovinAdSize.getHeight() == -1 ? displayMetrics.heightPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.width = applyDimension;
        layoutParams.height = applyDimension2;
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(13);
        }
        view.setLayoutParams(layoutParams);
    }

    private void t() {
        if (this.f4374e != null && com.applovin.impl.sdk.v.a() && com.applovin.impl.sdk.v.a()) {
            this.f4374e.b("AppLovinAdView", "Destroying...");
        }
        d dVar = this.l;
        if (dVar != null) {
            ViewParent parent = dVar.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.l);
            }
            this.l.removeAllViews();
            this.l.loadUrl("about:blank");
            this.l.onPause();
            this.l.destroyDrawingCache();
            this.l.destroy();
            this.l = null;
        }
        this.x = null;
        this.y = null;
        this.A = null;
        this.z = null;
        this.v = true;
    }

    private void u() {
        a(new Runnable() { // from class: com.applovin.impl.adview.b.3
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.q != null) {
                    com.applovin.impl.sdk.v unused = b.this.f4374e;
                    if (com.applovin.impl.sdk.v.a()) {
                        b.this.f4374e.b("AppLovinAdView", "Detaching expanded ad: " + b.this.q.a());
                    }
                    b bVar = b.this;
                    bVar.r = bVar.q;
                    b.this.q = null;
                    b bVar2 = b.this;
                    bVar2.a(bVar2.f4376g);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        a(new Runnable() { // from class: com.applovin.impl.adview.b.10
            @Override // java.lang.Runnable
            public void run() {
                com.applovin.impl.sdk.ad.a a2;
                if (b.this.r == null && b.this.q == null) {
                    return;
                }
                if (b.this.r != null) {
                    a2 = b.this.r.a();
                    b.this.r.dismiss();
                    b.this.r = null;
                } else {
                    a2 = b.this.q.a();
                    b.this.q.dismiss();
                    b.this.q = null;
                }
                com.applovin.impl.sdk.utils.k.b(b.this.z, a2, (AppLovinAdView) b.this.f4371b);
            }
        });
    }

    private void w() {
        com.applovin.impl.sdk.d.d dVar = this.i;
        if (dVar != null) {
            dVar.c();
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        com.applovin.impl.sdk.ad.e eVar = this.o;
        com.applovin.impl.sdk.utils.l lVar = new com.applovin.impl.sdk.utils.l();
        lVar.a().a(eVar).a(r());
        if (!Utils.isBML(eVar.getSize())) {
            lVar.a().a("Fullscreen Ad Properties").b(eVar);
        }
        lVar.a(this.f4372c);
        lVar.a();
        if (com.applovin.impl.sdk.v.a()) {
            this.f4374e.b("AppLovinAdView", lVar.toString());
        }
    }

    public void a() {
        if (this.f4372c == null || this.k == null || this.f4370a == null || !this.u) {
            com.applovin.impl.sdk.v.g("AppLovinAdView", "Unable to load next ad: AppLovinAdView is not initialized.");
        } else {
            this.f4373d.loadNextAd(this.f4377h, this.f4376g, this.k);
        }
    }

    void a(final int i) {
        if (!this.v) {
            a(this.n);
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.b.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (b.this.x != null) {
                        b.this.x.failedToReceiveAd(i);
                    }
                } catch (Throwable th) {
                    com.applovin.impl.sdk.v.c("AppLovinAdView", "Exception while running app load  callback", th);
                }
            }
        });
    }

    public void a(final PointF pointF) {
        a(new Runnable() { // from class: com.applovin.impl.adview.b.6
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.q == null && (b.this.o instanceof com.applovin.impl.sdk.ad.a) && b.this.l != null) {
                    com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) b.this.o;
                    Activity retrieveParentActivity = b.this.f4370a instanceof Activity ? (Activity) b.this.f4370a : Utils.retrieveParentActivity(b.this.l, b.this.f4372c);
                    if (retrieveParentActivity == null || retrieveParentActivity.isFinishing()) {
                        com.applovin.impl.sdk.v.i("AppLovinAdView", "Unable to expand ad. No Activity found.");
                        Uri j = aVar.j();
                        if (j != null) {
                            AppLovinAdServiceImpl appLovinAdServiceImpl = b.this.f4373d;
                            AppLovinAdView r = b.this.r();
                            b bVar = b.this;
                            appLovinAdServiceImpl.trackAndLaunchClick(aVar, r, bVar, j, pointF, bVar.w);
                            if (b.this.i != null) {
                                b.this.i.b();
                            }
                        }
                        b.this.l.a("javascript:al_onFailedExpand();");
                        return;
                    }
                    if (b.this.f4371b != null) {
                        b.this.f4371b.removeView(b.this.l);
                    }
                    b.this.q = new l(aVar, b.this.l, retrieveParentActivity, b.this.f4372c);
                    b.this.q.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.b.6.1
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            b.this.k();
                        }
                    });
                    b.this.q.show();
                    com.applovin.impl.sdk.utils.k.a(b.this.z, b.this.o, (AppLovinAdView) b.this.f4371b);
                    if (b.this.i != null) {
                        b.this.i.d();
                    }
                    if (b.this.o.isOpenMeasurementEnabled()) {
                        b.this.o.o().a((View) b.this.q.b());
                    }
                }
            }
        });
    }

    public void a(final WebView webView) {
        a(new Runnable() { // from class: com.applovin.impl.adview.b.4
            @Override // java.lang.Runnable
            public void run() {
                webView.setVisibility(0);
            }
        });
        try {
            if (this.o != this.p) {
                this.p = this.o;
                if (this.y != null) {
                    this.f4372c.an().a(this.o);
                    com.applovin.impl.sdk.utils.k.a(this.y, this.o);
                    this.l.a("javascript:al_onAdViewRendered();");
                }
                if ((this.o instanceof com.applovin.impl.sdk.ad.a) && this.o.isOpenMeasurementEnabled()) {
                    this.f4372c.V().a(new z(this.f4372c, new Runnable() { // from class: com.applovin.impl.adview.b.5
                        @Override // java.lang.Runnable
                        public void run() {
                            b.this.o.o().b(webView);
                            b.this.o.o().a((View) webView);
                            b.this.o.o().c();
                            b.this.o.o().d();
                        }
                    }), o.a.MAIN, 500L);
                }
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.v.c("AppLovinAdView", "Exception while notifying ad display listener", th);
        }
    }

    public void a(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            com.applovin.impl.sdk.v.i("AppLovinAdView", "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
            return;
        }
        if (appLovinAdSize == null && (appLovinAdSize = com.applovin.impl.sdk.utils.c.a(attributeSet)) == null) {
            appLovinAdSize = AppLovinAdSize.BANNER;
        }
        AppLovinAdSize appLovinAdSize2 = appLovinAdSize;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(context);
        }
        if (appLovinSdk != null) {
            a(appLovinAdView, appLovinSdk.coreSdk, appLovinAdSize2, str, context);
            if (com.applovin.impl.sdk.utils.c.b(attributeSet)) {
                a();
            }
        }
    }

    public void a(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        this.z = appLovinAdViewEventListener;
    }

    public void a(g gVar) {
        this.B = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.applovin.impl.sdk.ad.e eVar, AppLovinAdView appLovinAdView, Uri uri, PointF pointF) {
        if (appLovinAdView != null) {
            this.f4373d.trackAndLaunchClick(eVar, appLovinAdView, this, uri, pointF, this.w);
        } else if (com.applovin.impl.sdk.v.a()) {
            this.f4374e.e("AppLovinAdView", "Unable to process ad click - AppLovinAdView destroyed prematurely");
        }
        com.applovin.impl.sdk.utils.k.a(this.A, eVar);
    }

    public void a(com.applovin.impl.sdk.d.d dVar) {
        d dVar2 = this.l;
        if (dVar2 != null) {
            dVar2.setStatsManagerHelper(dVar);
        }
    }

    public void a(AppLovinAd appLovinAd) {
        a(appLovinAd, (String) null);
    }

    public void a(AppLovinAd appLovinAd, String str) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        Utils.validateAdSdkKey(appLovinAd, this.f4372c);
        if (!this.u) {
            com.applovin.impl.sdk.v.g("AppLovinAdView", "Unable to render ad: AppLovinAdView is not initialized.");
            return;
        }
        com.applovin.impl.sdk.ad.e eVar = (com.applovin.impl.sdk.ad.e) Utils.maybeRetrieveNonDummyAd(appLovinAd, this.f4372c);
        if (eVar == null || eVar == this.o) {
            if (eVar == null) {
                if (com.applovin.impl.sdk.v.a()) {
                    this.f4374e.d("AppLovinAdView", "Unable to render ad. Ad is null. Internal inconsistency error.");
                    return;
                }
                return;
            }
            if (com.applovin.impl.sdk.v.a()) {
                this.f4374e.d("AppLovinAdView", "Ad #" + eVar.getAdIdNumber() + " is already showing, ignoring");
            }
            if (((Boolean) this.f4372c.a(com.applovin.impl.sdk.c.b.ch)).booleanValue()) {
                throw new IllegalStateException("Failed to display ad - ad can only be displayed once. Load the next ad.");
            }
            return;
        }
        if (com.applovin.impl.sdk.v.a()) {
            this.f4374e.b("AppLovinAdView", "Rendering ad #" + eVar.getAdIdNumber() + " (" + eVar.getSize() + ")");
        }
        com.applovin.impl.sdk.utils.k.b(this.y, this.o);
        if (eVar.getSize() != AppLovinAdSize.INTERSTITIAL) {
            w();
        }
        if (this.o != null && this.o.isOpenMeasurementEnabled()) {
            this.o.o().e();
        }
        this.s.set(null);
        this.p = null;
        this.o = eVar;
        if (!this.v && Utils.isBML(this.f4376g)) {
            this.f4372c.v().trackImpression(eVar);
        }
        if (this.q != null) {
            u();
        }
        a(this.m);
    }

    public void a(AppLovinAdClickListener appLovinAdClickListener) {
        this.A = appLovinAdClickListener;
    }

    public void a(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.y = appLovinAdDisplayListener;
    }

    public void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.x = appLovinAdLoadListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(AppLovinAdSize appLovinAdSize) {
        try {
            d dVar = new d(this.j, this.f4372c, this.f4370a);
            this.l = dVar;
            dVar.setBackgroundColor(0);
            this.l.setWillNotCacheDrawing(false);
            this.f4371b.setBackgroundColor(0);
            this.f4371b.addView(this.l);
            b(this.l, appLovinAdSize);
            if (!this.u) {
                a(this.n);
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.l.loadDataWithBaseURL("/", "<html></html>", "text/html", null, "");
                }
            });
            this.u = true;
        } catch (Throwable th) {
            com.applovin.impl.sdk.v.c("AppLovinAdView", "Failed to initialize AdWebView", th);
            this.t.set(true);
        }
    }

    public AppLovinAdSize b() {
        return this.f4376g;
    }

    void b(final AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f4374e.e("AppLovinAdView", "No provided when to the view controller");
            }
            a(-1);
            return;
        }
        if (this.v) {
            this.s.set(appLovinAd);
            if (com.applovin.impl.sdk.v.a()) {
                this.f4374e.b("AppLovinAdView", "Ad view has paused when an ad was received, ad saved for later");
            }
        } else {
            a(appLovinAd);
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.b.8
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.t.compareAndSet(true, false)) {
                    b bVar = b.this;
                    bVar.a(bVar.f4376g);
                }
                try {
                    if (b.this.x != null) {
                        b.this.x.adReceived(appLovinAd);
                    }
                } catch (Throwable th) {
                    com.applovin.impl.sdk.v.i("AppLovinAdView", "Exception while running ad load callback: " + th.getMessage());
                }
            }
        });
    }

    public String c() {
        return this.f4377h;
    }

    public void d() {
        if (!this.u || this.v) {
            return;
        }
        this.v = true;
    }

    public void e() {
        if (this.u) {
            AppLovinAd andSet = this.s.getAndSet(null);
            if (andSet != null) {
                a(andSet);
            }
            this.v = false;
        }
    }

    public void f() {
        if (this.l != null && this.q != null) {
            k();
        }
        t();
    }

    public AppLovinAdViewEventListener g() {
        return this.z;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "b";
    }

    public g h() {
        return this.B;
    }

    public void i() {
        if (com.applovin.impl.sdk.utils.c.a(this.l)) {
            this.f4372c.W().a(com.applovin.impl.sdk.d.f.o);
        }
    }

    public void j() {
        if (this.u) {
            com.applovin.impl.sdk.utils.k.b(this.y, this.o);
            if (this.o != null && this.o.isOpenMeasurementEnabled() && Utils.isBML(this.o.getSize())) {
                this.o.o().e();
            }
            if (this.l == null || this.q == null) {
                if (com.applovin.impl.sdk.v.a()) {
                    this.f4374e.b("AppLovinAdView", "onDetachedFromWindowCalled without an expanded ad present");
                    return;
                }
                return;
            }
            if (com.applovin.impl.sdk.v.a()) {
                this.f4374e.b("AppLovinAdView", "onDetachedFromWindowCalled with expanded ad present");
            }
            u();
        }
    }

    public void k() {
        a(new Runnable() { // from class: com.applovin.impl.adview.b.7
            @Override // java.lang.Runnable
            public void run() {
                b.this.v();
                if (b.this.f4371b == null || b.this.l == null || b.this.l.getParent() != null) {
                    return;
                }
                b.this.f4371b.addView(b.this.l);
                b.b(b.this.l, b.this.o.getSize());
                if (b.this.o.isOpenMeasurementEnabled()) {
                    b.this.o.o().a((View) b.this.l);
                }
            }
        });
    }

    public void l() {
        if (this.q != null || this.r != null) {
            k();
            return;
        }
        if (com.applovin.impl.sdk.v.a()) {
            this.f4374e.b("AppLovinAdView", "Ad: " + this.o + " closed.");
        }
        a(this.n);
        com.applovin.impl.sdk.utils.k.b(this.y, this.o);
        this.o = null;
    }

    public void m() {
        this.w = true;
    }

    public void n() {
        this.w = false;
    }

    public void o() {
        if ((this.f4370a instanceof k) && this.o != null && this.o.G() == e.a.DISMISS) {
            ((k) this.f4370a).dismiss();
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("crash_applovin_ad_webview".equals(appLovinCommunicatorMessage.getTopic())) {
            a(new Runnable() { // from class: com.applovin.impl.adview.b.2
                @Override // java.lang.Runnable
                public void run() {
                    b.this.s().loadUrl("chrome://crash");
                }
            });
        }
    }

    public com.applovin.impl.sdk.ad.e p() {
        return this.o;
    }

    public com.applovin.impl.sdk.n q() {
        return this.f4372c;
    }

    public AppLovinAdView r() {
        return (AppLovinAdView) this.f4371b;
    }

    public d s() {
        return this.l;
    }
}
