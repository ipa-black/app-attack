package com.applovin.impl.mediation.ads;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.a.d;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.h;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public class MaxNativeAdLoaderImpl extends com.applovin.impl.mediation.ads.a implements d.a {
    public static final String KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE = "ad_request_type";

    /* renamed from: a  reason: collision with root package name */
    private final a f4778a;

    /* renamed from: b  reason: collision with root package name */
    private String f4779b;

    /* renamed from: c  reason: collision with root package name */
    private String f4780c;

    /* renamed from: d  reason: collision with root package name */
    private d.a f4781d;

    /* renamed from: e  reason: collision with root package name */
    private MaxNativeAdListener f4782e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, MaxNativeAdView> f4783f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f4784g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements a.InterfaceC0065a {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(MaxNativeAdView maxNativeAdView) {
            com.applovin.impl.mediation.a.d c2;
            b adViewTracker = maxNativeAdView.getAdViewTracker();
            if (adViewTracker == null || (c2 = adViewTracker.c()) == null) {
                return;
            }
            v vVar = MaxNativeAdLoaderImpl.this.logger;
            if (v.a()) {
                MaxNativeAdLoaderImpl.this.logger.b(MaxNativeAdLoaderImpl.this.tag, "Destroying previous ad");
            }
            MaxNativeAdLoaderImpl.this.destroy(c2);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            k.a(MaxNativeAdLoaderImpl.this.f4782e, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            MaxNativeAdLoaderImpl.this.a(((MaxErrorImpl) maxError).getLoadTag());
            k.a(MaxNativeAdLoaderImpl.this.f4782e, str, maxError, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl.a.1
                @Override // java.lang.Runnable
                public void run() {
                    v vVar = MaxNativeAdLoaderImpl.this.logger;
                    if (v.a()) {
                        MaxNativeAdLoaderImpl.this.logger.b(MaxNativeAdLoaderImpl.this.tag, "Native ad loaded");
                    }
                    com.applovin.impl.mediation.a.d dVar = (com.applovin.impl.mediation.a.d) maxAd;
                    dVar.e(MaxNativeAdLoaderImpl.this.f4779b);
                    dVar.f(MaxNativeAdLoaderImpl.this.f4780c);
                    MaxNativeAdLoaderImpl.this.sdk.an().a(dVar);
                    MaxNativeAdView a2 = MaxNativeAdLoaderImpl.this.a(dVar.a());
                    if (a2 == null) {
                        v vVar2 = MaxNativeAdLoaderImpl.this.logger;
                        if (v.a()) {
                            MaxNativeAdLoaderImpl.this.logger.b(MaxNativeAdLoaderImpl.this.tag, "No custom view provided, checking template");
                        }
                        String A = dVar.A();
                        if (StringUtils.isValidString(A)) {
                            v vVar3 = MaxNativeAdLoaderImpl.this.logger;
                            if (v.a()) {
                                MaxNativeAdLoaderImpl.this.logger.b(MaxNativeAdLoaderImpl.this.tag, "Using template: " + A + APSSharedUtil.TRUNCATE_SEPARATOR);
                            }
                            a2 = new MaxNativeAdView(A, MaxNativeAdLoaderImpl.this.sdk.P());
                        }
                    }
                    if (a2 == null) {
                        v vVar4 = MaxNativeAdLoaderImpl.this.logger;
                        if (v.a()) {
                            MaxNativeAdLoaderImpl.this.logger.b(MaxNativeAdLoaderImpl.this.tag, "No native ad view to render. Returning the native ad to be rendered later.");
                        }
                        k.a(MaxNativeAdLoaderImpl.this.f4782e, (MaxNativeAdView) null, maxAd, true);
                        dVar.a(MaxNativeAdLoaderImpl.this);
                        return;
                    }
                    a.this.a(a2);
                    MaxNativeAdLoaderImpl.this.a(a2, dVar, dVar.getNativeAd());
                    k.a(MaxNativeAdLoaderImpl.this.f4782e, a2, maxAd, true);
                    dVar.a(MaxNativeAdLoaderImpl.this);
                    MaxNativeAdLoaderImpl.this.a(a2);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            k.a(MaxNativeAdLoaderImpl.this.revenueListener, maxAd, true);
        }
    }

    public MaxNativeAdLoaderImpl(String str, n nVar) {
        super(str, MaxAdFormat.NATIVE, "MaxNativeAdLoader", nVar);
        this.f4778a = new a();
        this.f4781d = d.a.PUBLISHER_INITIATED;
        this.f4783f = CollectionUtils.map();
        this.f4784g = new Object();
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Created new MaxNativeAdLoader (" + this + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MaxNativeAdView a(String str) {
        MaxNativeAdView remove;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f4784g) {
            remove = this.f4783f.remove(str);
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxNativeAdView maxNativeAdView) {
        b adViewTracker = maxNativeAdView.getAdViewTracker();
        if (adViewTracker != null) {
            if (h.c()) {
                if (!maxNativeAdView.isAttachedToWindow()) {
                    return;
                }
            } else if (maxNativeAdView.getParent() == null) {
                return;
            }
            adViewTracker.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final MaxNativeAdView maxNativeAdView, final com.applovin.impl.mediation.a.d dVar, final MaxNativeAd maxNativeAd) {
        dVar.a(maxNativeAdView);
        a(dVar);
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl.2
            @Override // java.lang.Runnable
            public void run() {
                v vVar = MaxNativeAdLoaderImpl.this.logger;
                if (v.a()) {
                    MaxNativeAdLoaderImpl.this.logger.b(MaxNativeAdLoaderImpl.this.tag, "Rendering native ad view: " + maxNativeAdView);
                }
                maxNativeAdView.render(dVar, MaxNativeAdLoaderImpl.this.f4778a, MaxNativeAdLoaderImpl.this.sdk);
                maxNativeAd.setNativeAdView(maxNativeAdView);
                if (maxNativeAd.prepareForInteraction(maxNativeAdView.getClickableViews(), maxNativeAdView)) {
                    return;
                }
                maxNativeAd.prepareViewForInteraction(maxNativeAdView);
            }
        };
        if (maxNativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(runnable);
        } else {
            this.sdk.V().a(new z(this.sdk, runnable), o.a.MEDIATION_MAIN);
        }
    }

    private void a(String str, MaxNativeAdView maxNativeAdView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f4784g) {
            this.f4783f.put(str, maxNativeAdView);
        }
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        this.f4782e = null;
        super.destroy();
    }

    public void destroy(MaxAd maxAd) {
        b adViewTracker;
        if (!(maxAd instanceof com.applovin.impl.mediation.a.d)) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Destroy failed on non-native ad(" + maxAd + ")");
                return;
            }
            return;
        }
        com.applovin.impl.mediation.a.d dVar = (com.applovin.impl.mediation.a.d) maxAd;
        if (dVar.D()) {
            v vVar2 = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Native ad (" + dVar + ") has already been destroyed");
                return;
            }
            return;
        }
        MaxNativeAdView z = dVar.z();
        if (z != null && (adViewTracker = z.getAdViewTracker()) != null && maxAd.equals(adViewTracker.c())) {
            z.recycle();
        }
        MaxNativeAd nativeAd = dVar.getNativeAd();
        if (nativeAd != null && nativeAd.getAdViewTracker() != null) {
            nativeAd.getAdViewTracker().a();
        }
        dVar.G();
        this.sdk.H().destroyAd(dVar);
        this.sdk.M().a(this.adUnitId, dVar.a());
    }

    public String getPlacement() {
        return this.f4779b;
    }

    public void handleNativeAdViewRendered(MaxAd maxAd) {
        MaxNativeAd nativeAd = ((com.applovin.impl.mediation.a.d) maxAd).getNativeAd();
        if (nativeAd == null) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.e(this.tag, "Failed to handle native ad rendered. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        b adViewTracker = nativeAd.getAdViewTracker();
        if (adViewTracker != null) {
            adViewTracker.b();
            return;
        }
        v vVar2 = this.logger;
        if (v.a()) {
            this.logger.e(this.tag, "Failed to handle native ad rendered. Could not retrieve tracker. Ad might not have been registered via MaxNativeAdLoader.a(...).");
        }
    }

    public void loadAd(MaxNativeAdView maxNativeAdView) {
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Loading native ad for '" + this.adUnitId + "' into '" + maxNativeAdView + "' and notifying " + this.f4778a + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        this.extraParameters.put("integration_type", maxNativeAdView != null ? "custom_ad_view" : "no_ad_view");
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        a(lowerCase, maxNativeAdView);
        this.sdk.H().loadAd(this.adUnitId, lowerCase, MaxAdFormat.NATIVE, this.f4781d, this.localExtraParameters, this.extraParameters, this.sdk.P(), this.f4778a);
    }

    @Override // com.applovin.impl.mediation.a.d.a
    public void onAdExpired(com.applovin.impl.mediation.a.d dVar) {
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Ad expired for ad unit id " + getAdUnitId());
        }
        k.b(this.f4782e, (MaxAd) dVar, true);
    }

    public void registerClickableViews(final List<View> list, final ViewGroup viewGroup, MaxAd maxAd) {
        com.applovin.impl.mediation.a.d dVar = (com.applovin.impl.mediation.a.d) maxAd;
        final MaxNativeAd nativeAd = dVar.getNativeAd();
        if (nativeAd == null) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.e(this.tag, "Failed to register native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        this.sdk.an().a(dVar);
        a(dVar);
        nativeAd.setClickableViews(list);
        nativeAd.setAdViewTracker(new b(dVar, viewGroup, this.f4778a, this.sdk));
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl.1
            @Override // java.lang.Runnable
            public void run() {
                if (nativeAd.prepareForInteraction(list, viewGroup)) {
                    return;
                }
                v.i(MaxNativeAdLoaderImpl.this.tag, "Failed to prepare native ad for interaction...");
            }
        };
        if (nativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(runnable);
        } else {
            this.sdk.V().a(new z(this.sdk, runnable), o.a.MEDIATION_MAIN);
        }
    }

    public boolean render(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        String str;
        String str2;
        if (!(maxAd instanceof com.applovin.impl.mediation.a.d)) {
            str = this.tag;
            str2 = "Failed to render native ad. `ad` needs to be of type `MediatedNativeAd` to render.";
        } else if (maxNativeAdView == null) {
            str = this.tag;
            str2 = "Failed to render native ad. `adView` to render cannot be null.";
        } else {
            com.applovin.impl.mediation.a.d dVar = (com.applovin.impl.mediation.a.d) maxAd;
            MaxNativeAd nativeAd = dVar.getNativeAd();
            if (nativeAd == null) {
                v vVar = this.logger;
                if (v.a()) {
                    this.logger.e(this.tag, "Failed to render native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                }
                return false;
            } else if (!nativeAd.isExpired() || ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.E)).booleanValue()) {
                a(maxNativeAdView, dVar, nativeAd);
                a(maxNativeAdView);
                return true;
            } else {
                str = this.tag;
                str2 = "Cancelled rendering for expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`";
            }
        }
        v.i(str, str2);
        return false;
    }

    public void setCustomData(String str) {
        Utils.maybeLogCustomDataSizeLimit(str, this.tag);
        this.f4780c = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setLocalExtraParameter(String str, Object obj) {
        super.setLocalExtraParameter(str, obj);
        if (KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE.equalsIgnoreCase(str) && (obj instanceof d.a)) {
            this.f4781d = (d.a) obj;
        }
    }

    public void setNativeAdListener(MaxNativeAdListener maxNativeAdListener) {
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Setting native ad listener: " + maxNativeAdListener);
        }
        this.f4782e = maxNativeAdListener;
    }

    public void setPlacement(String str) {
        this.f4779b = str;
    }

    public String toString() {
        return "MaxNativeAdLoader{adUnitId='" + this.adUnitId + "', nativeAdListener=" + this.f4782e + ", revenueListener=" + this.revenueListener + '}';
    }
}
