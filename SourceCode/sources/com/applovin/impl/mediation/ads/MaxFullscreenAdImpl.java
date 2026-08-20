package com.applovin.impl.mediation.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.b;
import com.applovin.impl.sdk.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.i;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class MaxFullscreenAdImpl extends com.applovin.impl.mediation.ads.a implements b.a, e.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f4732a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.b f4733b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.mediation.b f4734c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f4735d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.mediation.a.c f4736e;

    /* renamed from: f  reason: collision with root package name */
    private c f4737f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f4738g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f4739h;
    private boolean i;
    private WeakReference<Activity> j;
    private WeakReference<ViewGroup> k;
    private WeakReference<Lifecycle> l;
    protected final b listenerWrapper;

    /* loaded from: classes.dex */
    public interface a {
        Activity getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements a.InterfaceC0065a, MaxAdListener, MaxAdRevenueListener, MaxRewardedAdListener {
        private b() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            k.d(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(final MaxAd maxAd, final MaxError maxError) {
            final boolean z = MaxFullscreenAdImpl.this.i;
            MaxFullscreenAdImpl.this.i = false;
            final com.applovin.impl.mediation.a.c cVar = (com.applovin.impl.mediation.a.c) maxAd;
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.4
                @Override // java.lang.Runnable
                public void run() {
                    MaxFullscreenAdImpl.this.a(maxAd);
                    if (!z && cVar.G() && MaxFullscreenAdImpl.this.sdk.M().a(MaxFullscreenAdImpl.this.adUnitId)) {
                        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MaxFullscreenAdImpl.this.i = true;
                                MaxFullscreenAdImpl.this.loadAd(MaxFullscreenAdImpl.this.f4732a != null ? MaxFullscreenAdImpl.this.f4732a.getActivity() : null);
                            }
                        });
                    } else {
                        k.a(MaxFullscreenAdImpl.this.adListener, maxAd, maxError, true);
                    }
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            MaxFullscreenAdImpl.this.i = false;
            MaxFullscreenAdImpl.this.f4733b.a();
            k.b(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(final MaxAd maxAd) {
            MaxFullscreenAdImpl.this.i = false;
            MaxFullscreenAdImpl.this.f4734c.a(maxAd);
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.3
                @Override // java.lang.Runnable
                public void run() {
                    MaxFullscreenAdImpl.this.a(maxAd);
                    k.c(MaxFullscreenAdImpl.this.adListener, maxAd, true);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, final MaxError maxError) {
            MaxFullscreenAdImpl.this.b();
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.2
                @Override // java.lang.Runnable
                public void run() {
                    k.a(MaxFullscreenAdImpl.this.adListener, str, maxError, true);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            MaxFullscreenAdImpl.this.a((com.applovin.impl.mediation.a.c) maxAd);
            if (MaxFullscreenAdImpl.this.f4738g.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.extraParameters.remove("expired_ad_ad_unit_id");
            } else {
                MaxFullscreenAdImpl.this.a(c.READY, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!MaxFullscreenAdImpl.this.i) {
                            k.a(MaxFullscreenAdImpl.this.adListener, maxAd, true);
                            return;
                        }
                        Activity activity = (Activity) MaxFullscreenAdImpl.this.j.get();
                        if (activity == null) {
                            activity = MaxFullscreenAdImpl.this.sdk.ar();
                        }
                        Activity activity2 = activity;
                        if (MaxFullscreenAdImpl.this.f4739h) {
                            MaxFullscreenAdImpl.this.showAd(MaxFullscreenAdImpl.this.f4736e.getPlacement(), MaxFullscreenAdImpl.this.f4736e.ag(), (ViewGroup) MaxFullscreenAdImpl.this.k.get(), (Lifecycle) MaxFullscreenAdImpl.this.l.get(), activity2);
                        } else {
                            MaxFullscreenAdImpl.this.showAd(MaxFullscreenAdImpl.this.f4736e.getPlacement(), MaxFullscreenAdImpl.this.f4736e.ag(), activity2);
                        }
                    }
                });
            }
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            k.a(MaxFullscreenAdImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            k.a(MaxFullscreenAdImpl.this.revenueListener, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(MaxAd maxAd) {
            k.f(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(MaxAd maxAd) {
            k.e(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            k.a(MaxFullscreenAdImpl.this.adListener, maxAd, maxReward, true);
        }
    }

    /* loaded from: classes.dex */
    public enum c {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MaxFullscreenAdImpl(String str, MaxAdFormat maxAdFormat, a aVar, String str2, n nVar) {
        super(str, maxAdFormat, str2, nVar);
        this.f4735d = new Object();
        this.f4736e = null;
        this.f4737f = c.IDLE;
        this.f4738g = new AtomicBoolean();
        this.j = new WeakReference<>(null);
        this.k = new WeakReference<>(null);
        this.l = new WeakReference<>(null);
        this.f4732a = aVar;
        b bVar = new b();
        this.listenerWrapper = bVar;
        this.f4733b = new com.applovin.impl.sdk.b(nVar, this);
        this.f4734c = new com.applovin.impl.mediation.b(nVar, bVar);
        nVar.E().a(this);
        v.f(str2, "Created new " + str2 + " (" + this + ")");
    }

    private void a() {
        com.applovin.impl.mediation.a.c cVar;
        synchronized (this.f4735d) {
            cVar = this.f4736e;
            this.f4736e = null;
        }
        this.sdk.H().destroyAd(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.a.c cVar) {
        if (this.f4733b.a(cVar)) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Handle ad loaded for regular ad: " + cVar);
            }
            this.f4736e = cVar;
            return;
        }
        v vVar2 = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Loaded an expired ad, running expire logic...");
        }
        onAdExpired();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar, Runnable runnable) {
        boolean z;
        v vVar;
        String str;
        String str2;
        String str3;
        String str4;
        c cVar2 = this.f4737f;
        synchronized (this.f4735d) {
            z = true;
            if (cVar2 == c.IDLE) {
                if (cVar != c.LOADING && cVar != c.DESTROYED) {
                    if (cVar == c.SHOWING) {
                        str3 = this.tag;
                        str4 = "No ad is loading or loaded";
                        v.i(str3, str4);
                        z = false;
                    } else {
                        v vVar2 = this.logger;
                        if (v.a()) {
                            vVar = this.logger;
                            str = this.tag;
                            str2 = "Unable to transition to: " + cVar;
                            vVar.e(str, str2);
                        }
                        z = false;
                    }
                }
            } else if (cVar2 == c.LOADING) {
                if (cVar != c.IDLE) {
                    if (cVar == c.LOADING) {
                        str3 = this.tag;
                        str4 = "An ad is already loading";
                    } else if (cVar != c.READY) {
                        if (cVar == c.SHOWING) {
                            str3 = this.tag;
                            str4 = "An ad is not ready to be shown yet";
                        } else if (cVar != c.DESTROYED) {
                            v vVar3 = this.logger;
                            if (v.a()) {
                                vVar = this.logger;
                                str = this.tag;
                                str2 = "Unable to transition to: " + cVar;
                                vVar.e(str, str2);
                            }
                            z = false;
                        }
                    }
                    v.i(str3, str4);
                    z = false;
                }
            } else if (cVar2 == c.READY) {
                if (cVar != c.IDLE) {
                    if (cVar == c.LOADING) {
                        str3 = this.tag;
                        str4 = "An ad is already loaded";
                        v.i(str3, str4);
                        z = false;
                    } else {
                        if (cVar == c.READY) {
                            v vVar4 = this.logger;
                            if (v.a()) {
                                vVar = this.logger;
                                str = this.tag;
                                str2 = "An ad is already marked as ready";
                                vVar.e(str, str2);
                            }
                        } else if (cVar != c.SHOWING && cVar != c.DESTROYED) {
                            v vVar5 = this.logger;
                            if (v.a()) {
                                this.logger.e(this.tag, "Unable to transition to: " + cVar);
                            }
                        }
                        z = false;
                    }
                }
            } else if (cVar2 == c.SHOWING) {
                if (cVar != c.IDLE) {
                    if (cVar == c.LOADING) {
                        str3 = this.tag;
                        str4 = "Can not load another ad while the ad is showing";
                    } else {
                        if (cVar == c.READY) {
                            v vVar6 = this.logger;
                            if (v.a()) {
                                vVar = this.logger;
                                str = this.tag;
                                str2 = "An ad is already showing, ignoring";
                                vVar.e(str, str2);
                            }
                        } else if (cVar == c.SHOWING) {
                            str3 = this.tag;
                            str4 = "The ad is already showing, not showing another one";
                        } else if (cVar != c.DESTROYED) {
                            v vVar7 = this.logger;
                            if (v.a()) {
                                this.logger.e(this.tag, "Unable to transition to: " + cVar);
                            }
                        }
                        z = false;
                    }
                    v.i(str3, str4);
                    z = false;
                }
            } else if (cVar2 == c.DESTROYED) {
                str3 = this.tag;
                str4 = "No operations are allowed on a destroyed instance";
                v.i(str3, str4);
                z = false;
            } else {
                v vVar8 = this.logger;
                if (v.a()) {
                    vVar = this.logger;
                    str = this.tag;
                    str2 = "Unknown state: " + this.f4737f;
                    vVar.e(str, str2);
                }
                z = false;
            }
            if (z) {
                v vVar9 = this.logger;
                if (v.a()) {
                    this.logger.b(this.tag, "Transitioning from " + this.f4737f + " to " + cVar + APSSharedUtil.TRUNCATE_SEPARATOR);
                }
                this.f4737f = cVar;
            } else {
                v vVar10 = this.logger;
                if (v.a()) {
                    this.logger.d(this.tag, "Not allowed transition from " + this.f4737f + " to " + cVar);
                }
            }
        }
        if (!z || runnable == null) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.f4733b.a();
        a();
        this.sdk.J().b((com.applovin.impl.mediation.a.a) maxAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        this.f4734c.b(this.f4736e);
        this.f4736e.e(str);
        this.f4736e.f(str2);
        this.sdk.an().a(this.f4736e);
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Showing ad for '" + this.adUnitId + "'; loaded ad: " + this.f4736e + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        a((com.applovin.impl.mediation.a.a) this.f4736e);
    }

    private boolean a(Activity activity) {
        if (activity != null || MaxAdFormat.APP_OPEN == this.adFormat) {
            if (!isReady()) {
                String str = "Attempting to show ad before it is ready - please check ad readiness using " + this.tag + "#isReady()";
                v.i(this.tag, str);
                k.a(this.adListener, (MaxAd) this.f4736e, (MaxError) new MaxErrorImpl(-24, str), true);
                return false;
            }
            if (Utils.getAlwaysFinishActivitiesSetting(this.sdk.P()) != 0 && this.sdk.q().shouldFailAdDisplayIfDontKeepActivitiesIsEnabled()) {
                if (Utils.isPubInDebugMode(this.sdk.P(), this.sdk)) {
                    throw new IllegalStateException("Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                }
                if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.T)).booleanValue()) {
                    v.i(this.tag, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                    k.a(this.adListener, (MaxAd) this.f4736e, (MaxError) new MaxErrorImpl(-5602, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!"), true);
                    return false;
                }
            }
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.z)).booleanValue() && (this.sdk.ah().a() || this.sdk.ah().b())) {
                v.i(this.tag, "Attempting to show ad when another fullscreen ad is already showing");
                k.a(this.adListener, (MaxAd) this.f4736e, (MaxError) new MaxErrorImpl(-23, "Attempting to show ad when another fullscreen ad is already showing"), true);
                return false;
            } else if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.A)).booleanValue() && !i.a(this.sdk.P())) {
                v.i(this.tag, "Attempting to show ad with no internet connection");
                k.a(this.adListener, (MaxAd) this.f4736e, (MaxError) new MaxErrorImpl(-1009), true);
                return false;
            } else {
                String str2 = this.sdk.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.BLOCK_FULLSCREEN_ADS_SHOWING_IF_ACTIVITY_FINISHING);
                if (((StringUtils.isValidString(str2) && Boolean.valueOf(str2).booleanValue()) || ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.B)).booleanValue()) && activity != null && activity.isFinishing()) {
                    v.i(this.tag, "Attempting to show ad when activity is finishing");
                    k.a(this.adListener, (MaxAd) this.f4736e, (MaxError) new MaxErrorImpl(-5601, "Attempting to show ad when activity is finishing"), true);
                    return false;
                }
                return true;
            }
        }
        throw new IllegalArgumentException("Attempting to show ad without a valid activity.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        com.applovin.impl.mediation.a.c cVar;
        if (this.f4738g.compareAndSet(true, false)) {
            synchronized (this.f4735d) {
                cVar = this.f4736e;
                this.f4736e = null;
            }
            this.sdk.H().destroyAd(cVar);
            this.extraParameters.remove("expired_ad_ad_unit_id");
        }
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        a(c.DESTROYED, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (MaxFullscreenAdImpl.this.f4735d) {
                    if (MaxFullscreenAdImpl.this.f4736e != null) {
                        v vVar = MaxFullscreenAdImpl.this.logger;
                        if (v.a()) {
                            MaxFullscreenAdImpl.this.logger.b(MaxFullscreenAdImpl.this.tag, "Destroying ad for '" + MaxFullscreenAdImpl.this.adUnitId + "'; current ad: " + MaxFullscreenAdImpl.this.f4736e + APSSharedUtil.TRUNCATE_SEPARATOR);
                        }
                        MaxFullscreenAdImpl.this.sdk.H().destroyAd(MaxFullscreenAdImpl.this.f4736e);
                    }
                }
                MaxFullscreenAdImpl.this.sdk.E().b(MaxFullscreenAdImpl.this);
                MaxFullscreenAdImpl.super.destroy();
            }
        });
    }

    public boolean isReady() {
        boolean z;
        synchronized (this.f4735d) {
            com.applovin.impl.mediation.a.c cVar = this.f4736e;
            z = cVar != null && cVar.e() && this.f4737f == c.READY;
        }
        return z;
    }

    public void loadAd(Activity activity) {
        loadAd(activity, d.a.PUBLISHER_INITIATED);
    }

    public void loadAd(final Activity activity, final d.a aVar) {
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Loading ad for '" + this.adUnitId + "'...");
        }
        if (!isReady()) {
            a(c.LOADING, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    Context context = activity;
                    if (context == null) {
                        context = MaxFullscreenAdImpl.this.sdk.ar() != null ? MaxFullscreenAdImpl.this.sdk.ar() : MaxFullscreenAdImpl.this.sdk.P();
                    }
                    MaxFullscreenAdImpl.this.sdk.H().loadAd(MaxFullscreenAdImpl.this.adUnitId, null, MaxFullscreenAdImpl.this.adFormat, aVar, MaxFullscreenAdImpl.this.localExtraParameters, MaxFullscreenAdImpl.this.extraParameters, context, MaxFullscreenAdImpl.this.listenerWrapper);
                }
            });
            return;
        }
        v vVar2 = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "An ad is already loaded for '" + this.adUnitId + "'");
        }
        k.a(this.adListener, (MaxAd) this.f4736e, true);
    }

    @Override // com.applovin.impl.sdk.b.a
    public void onAdExpired() {
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Ad expired " + getAdUnitId());
        }
        this.f4738g.set(true);
        a aVar = this.f4732a;
        Activity activity = aVar != null ? aVar.getActivity() : this.sdk.ai().a();
        if (activity == null) {
            b();
            this.listenerWrapper.onAdLoadFailed(this.adUnitId, MaxAdapterError.MISSING_ACTIVITY);
            return;
        }
        this.extraParameters.put("expired_ad_ad_unit_id", getAdUnitId());
        this.sdk.H().loadAd(this.adUnitId, null, this.adFormat, d.a.EXPIRED, this.localExtraParameters, this.extraParameters, activity, this.listenerWrapper);
    }

    @Override // com.applovin.impl.sdk.e.a
    public void onCreativeIdGenerated(String str, String str2) {
        com.applovin.impl.mediation.a.c cVar = this.f4736e;
        if (cVar == null || !cVar.f().equalsIgnoreCase(str)) {
            return;
        }
        this.f4736e.b(str2);
        k.a(this.adReviewListener, str2, this.f4736e);
    }

    public void showAd(final String str, final String str2, final Activity activity) {
        String c2 = this.sdk.N().c();
        if (this.sdk.N().b() && c2 != null && !c2.equals(this.f4736e.S())) {
            final String str3 = "Attempting to show ad from <" + this.f4736e.S() + "> which does not match selected ad network <" + c2 + ">";
            v.i(this.tag, str3);
            a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    com.applovin.impl.mediation.a.c cVar = MaxFullscreenAdImpl.this.f4736e;
                    MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                    maxFullscreenAdImpl.a((MaxAd) maxFullscreenAdImpl.f4736e);
                    k.a(MaxFullscreenAdImpl.this.adListener, (MaxAd) cVar, (MaxError) new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str3), true);
                }
            });
            return;
        }
        if (activity == null) {
            activity = this.sdk.ar();
        }
        if (a(activity)) {
            a(c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    MaxFullscreenAdImpl.this.a(str, str2);
                    MaxFullscreenAdImpl.this.f4739h = false;
                    MaxFullscreenAdImpl.this.j = new WeakReference(activity);
                    MaxFullscreenAdImpl.this.sdk.H().showFullscreenAd(MaxFullscreenAdImpl.this.f4736e, activity, MaxFullscreenAdImpl.this.listenerWrapper);
                }
            });
        }
    }

    public void showAd(final String str, final String str2, final ViewGroup viewGroup, final Lifecycle lifecycle, Activity activity) {
        if (viewGroup == null || lifecycle == null) {
            v.i(this.tag, "Attempting to show ad with null containerView or lifecycle.");
            k.a(this.adListener, (MaxAd) this.f4736e, (MaxError) new MaxErrorImpl(-1, "Attempting to show ad with null containerView or lifecycle."), true);
            return;
        }
        String c2 = this.sdk.N().c();
        if (this.sdk.N().b() && c2 != null && !c2.equals(this.f4736e.S())) {
            final String str3 = "Attempting to show ad from <" + this.f4736e.S() + "> which does not match selected ad network <" + c2 + ">";
            v.i(this.tag, str3);
            a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.5
                @Override // java.lang.Runnable
                public void run() {
                    com.applovin.impl.mediation.a.c cVar = MaxFullscreenAdImpl.this.f4736e;
                    MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                    maxFullscreenAdImpl.a((MaxAd) maxFullscreenAdImpl.f4736e);
                    k.a(MaxFullscreenAdImpl.this.adListener, (MaxAd) cVar, (MaxError) new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str3), true);
                }
            });
            return;
        }
        if (activity == null) {
            activity = this.sdk.ar();
        }
        final Activity activity2 = activity;
        if (a(activity2)) {
            a(c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    MaxFullscreenAdImpl.this.a(str, str2);
                    MaxFullscreenAdImpl.this.f4739h = true;
                    MaxFullscreenAdImpl.this.j = new WeakReference(activity2);
                    MaxFullscreenAdImpl.this.k = new WeakReference(viewGroup);
                    MaxFullscreenAdImpl.this.l = new WeakReference(lifecycle);
                    MaxFullscreenAdImpl.this.sdk.H().showFullscreenAd(MaxFullscreenAdImpl.this.f4736e, viewGroup, lifecycle, activity2, MaxFullscreenAdImpl.this.listenerWrapper);
                }
            });
        }
    }

    public String toString() {
        return this.tag + "{adUnitId='" + this.adUnitId + "', adListener=" + (this.adListener == this.f4732a ? "this" : this.adListener) + ", revenueListener=" + this.revenueListener + ", requestListener" + this.requestListener + ", adReviewListener" + this.adReviewListener + ", isReady=" + isReady() + '}';
    }
}
