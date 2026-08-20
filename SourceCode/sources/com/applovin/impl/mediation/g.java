package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdViewAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private final n f5212b;

    /* renamed from: c  reason: collision with root package name */
    private final v f5213c;

    /* renamed from: d  reason: collision with root package name */
    private final String f5214d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.mediation.a.f f5215e;

    /* renamed from: f  reason: collision with root package name */
    private final String f5216f;

    /* renamed from: g  reason: collision with root package name */
    private MaxAdapter f5217g;

    /* renamed from: h  reason: collision with root package name */
    private String f5218h;
    private com.applovin.impl.mediation.a.a i;
    private View j;
    private MaxNativeAd k;
    private MaxNativeAdView l;
    private MaxAdapterResponseParameters n;
    private final boolean r;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f5211a = new Handler(Looper.getMainLooper());
    private final a m = new a();
    private final AtomicBoolean o = new AtomicBoolean(true);
    private final AtomicBoolean p = new AtomicBoolean(false);
    private final AtomicBoolean q = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements MaxAdViewAdapterListener, MaxAppOpenAdapterListener, MaxInterstitialAdapterListener, MaxNativeAdAdapterListener, MaxRewardedAdapterListener, MaxRewardedInterstitialAdapterListener {

        /* renamed from: b  reason: collision with root package name */
        private MediationServiceImpl.a f5278b;

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(MediationServiceImpl.a aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("No listener specified");
            }
            this.f5278b = aVar;
        }

        private void a(String str, final Bundle bundle) {
            if (!g.this.i.x().get()) {
                g.this.q.set(true);
                a(str, this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (g.this.p.compareAndSet(false, true)) {
                            a.this.f5278b.a(g.this.i, bundle);
                        }
                    }
                });
                return;
            }
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.e("MediationAdapterWrapper", g.this.f5216f + ": blocking ad loaded callback for " + g.this.i + " since onAdHidden() has been called");
            }
            g.this.f5212b.aj().b(g.this.i, str);
        }

        private void a(final String str, final MaxAdListener maxAdListener, final Runnable runnable) {
            g.this.f5211a.post(new Runnable() { // from class: com.applovin.impl.mediation.g.a.11
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } catch (Exception e2) {
                        MaxAdListener maxAdListener2 = maxAdListener;
                        v.c("MediationAdapterWrapper", "Failed to forward call (" + str + ") to " + (maxAdListener2 != null ? maxAdListener2.getClass().getName() : null), e2);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError) {
            if (!g.this.i.x().get()) {
                a(str, this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.12
                    @Override // java.lang.Runnable
                    public void run() {
                        if (g.this.p.compareAndSet(false, true)) {
                            a.this.f5278b.onAdLoadFailed(g.this.f5218h, maxError);
                        }
                    }
                });
                return;
            }
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.e("MediationAdapterWrapper", g.this.f5216f + ": blocking ad load failed callback for " + g.this.i + " since onAdHidden() has been called");
            }
            g.this.f5212b.aj().b(g.this.i, str);
        }

        private void b(String str, final Bundle bundle) {
            if (!g.this.i.x().get()) {
                if (g.this.i.w().compareAndSet(false, true)) {
                    a(str, this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.13
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.f5278b.b(g.this.i, bundle);
                        }
                    });
                    return;
                }
                return;
            }
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.e("MediationAdapterWrapper", g.this.f5216f + ": blocking ad displayed callback for " + g.this.i + " since onAdHidden() has been called");
            }
            g.this.f5212b.aj().b(g.this.i, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, final MaxError maxError) {
            if (!g.this.i.x().get()) {
                a(str, this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.14
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f5278b.onAdDisplayFailed(g.this.i, maxError);
                    }
                });
                return;
            }
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.e("MediationAdapterWrapper", g.this.f5216f + ": blocking ad display failed callback for " + g.this.i + " since onAdHidden() has been called");
            }
            g.this.f5212b.aj().b(g.this.i, str);
        }

        private void c(String str, final Bundle bundle) {
            if (g.this.i.x().compareAndSet(false, true)) {
                a(str, this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.15
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f5278b.c(g.this.i, bundle);
                    }
                });
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked() {
            onAdViewAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked(final Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": adview ad clicked with extra info: " + bundle);
            }
            a("onAdViewAdClicked", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.7
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.d(g.this.i, bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed() {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": adview ad collapsed");
            }
            a("onAdViewAdCollapsed", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.9
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.onAdCollapsed(g.this.i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": adview ad failed to display with error: " + maxAdapterError);
            }
            b("onAdViewAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed() {
            onAdViewAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": adview ad displayed with extra info: " + bundle);
            }
            b("onAdViewAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded() {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": adview ad expanded");
            }
            a("onAdViewAdExpanded", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.8
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.onAdExpanded(g.this.i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden() {
            onAdViewAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": adview ad hidden with extra info: " + bundle);
            }
            c("onAdViewAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": adview ad ad failed to load with error: " + maxAdapterError);
            }
            a("onAdViewAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view) {
            onAdViewAdLoaded(view, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view, Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": adview ad loaded with extra info: " + bundle);
            }
            g.this.j = view;
            a("onAdViewAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked() {
            onAppOpenAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked(final Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": app open ad clicked with extra info: " + bundle);
            }
            a("onAppOpenAdClicked", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.6
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.d(g.this.i, bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": app open ad display failed with error: " + maxAdapterError);
            }
            b("onAppOpenAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed() {
            onAppOpenAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": app open ad displayed with extra info: " + bundle);
            }
            b("onAppOpenAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden() {
            onAppOpenAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": app open ad hidden with extra info: " + bundle);
            }
            c("onAppOpenAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoadFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": app open ad failed to load with error: " + maxAdapterError);
            }
            a("onAppOpenAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded() {
            onAppOpenAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": app open ad loaded with extra info: " + bundle);
            }
            a("onAppOpenAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked() {
            onInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked(final Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": interstitial ad clicked with extra info: " + bundle);
            }
            a("onInterstitialAdClicked", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.16
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.d(g.this.i, bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": interstitial ad failed to display with error " + maxAdapterError);
            }
            b("onInterstitialAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed() {
            onInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": interstitial ad displayed with extra info: " + bundle);
            }
            b("onInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden() {
            onInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": interstitial ad hidden with extra info " + bundle);
            }
            c("onInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": interstitial ad failed to load with error " + maxAdapterError);
            }
            a("onInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded() {
            onInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": interstitial ad loaded with extra info: " + bundle);
            }
            a("onInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked() {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": native ad clicked");
            }
            a("onNativeAdClicked", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.10
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.onAdClicked(g.this.i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdDisplayed(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": native ad displayed with extra info: " + bundle);
            }
            b("onNativeAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoadFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": native ad ad failed to load with error: " + maxAdapterError);
            }
            a("onNativeAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoaded(MaxNativeAd maxNativeAd, Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": native ad loaded with extra info: " + bundle);
            }
            g.this.k = maxNativeAd;
            a("onNativeAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked() {
            onRewardedAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked(final Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded ad clicked with extra info: " + bundle);
            }
            a("onRewardedAdClicked", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.17
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.d(g.this.i, bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": rewarded ad display failed with error: " + maxAdapterError);
            }
            b("onRewardedAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed() {
            onRewardedAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded ad displayed with extra info: " + bundle);
            }
            b("onRewardedAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden() {
            onRewardedAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded ad hidden with extra info: " + bundle);
            }
            c("onRewardedAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded() {
            onRewardedAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded ad loaded with extra info: " + bundle);
            }
            a("onRewardedAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdVideoCompleted() {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded video completed");
            }
            a("onRewardedAdVideoCompleted", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.onRewardedVideoCompleted(g.this.i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdVideoStarted() {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded video started");
            }
            a("onRewardedAdVideoStarted", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.19
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.onRewardedVideoStarted(g.this.i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdClicked() {
            onRewardedInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdClicked(final Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded interstitial ad clicked with extra info: " + bundle);
            }
            a("onRewardedInterstitialAdClicked", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.3
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.d(g.this.i, bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": rewarded interstitial ad display failed with error: " + maxAdapterError);
            }
            b("onRewardedInterstitialAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayed() {
            onRewardedInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayed(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded interstitial ad displayed with extra info: " + bundle);
            }
            b("onRewardedInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdHidden() {
            onRewardedInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdHidden(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded interstitial ad hidden with extra info: " + bundle);
            }
            c("onRewardedInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.d("MediationAdapterWrapper", g.this.f5216f + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoaded() {
            onRewardedInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoaded(Bundle bundle) {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded interstitial ad loaded with extra info: " + bundle);
            }
            a("onRewardedInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdVideoCompleted() {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded interstitial completed");
            }
            a("onRewardedInterstitialAdVideoCompleted", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.5
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.onRewardedVideoCompleted(g.this.i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdVideoStarted() {
            v unused = g.this.f5213c;
            if (v.a()) {
                g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": rewarded interstitial started");
            }
            a("onRewardedInterstitialAdVideoStarted", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.4
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f5278b.onRewardedVideoStarted(g.this.i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener, com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onUserRewarded(final MaxReward maxReward) {
            if (g.this.i instanceof com.applovin.impl.mediation.a.c) {
                final com.applovin.impl.mediation.a.c cVar = (com.applovin.impl.mediation.a.c) g.this.i;
                if (cVar.M().compareAndSet(false, true)) {
                    v unused = g.this.f5213c;
                    if (v.a()) {
                        g.this.f5213c.c("MediationAdapterWrapper", g.this.f5216f + ": user was rewarded: " + maxReward);
                    }
                    a("onUserRewarded", this.f5278b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.18
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.f5278b.onUserRewarded(cVar, maxReward);
                        }
                    });
                }
            }
        }
    }

    /* loaded from: classes.dex */
    private static class b implements MaxAdapter.OnCompletionListener {

        /* renamed from: a  reason: collision with root package name */
        private final n f5313a;

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.impl.mediation.a.f f5314b;

        /* renamed from: c  reason: collision with root package name */
        private final long f5315c;

        /* renamed from: d  reason: collision with root package name */
        private final Runnable f5316d;

        public b(n nVar, com.applovin.impl.mediation.a.f fVar, long j, Runnable runnable) {
            this.f5313a = nVar;
            this.f5314b = fVar;
            this.f5315c = j;
            this.f5316d = runnable;
        }

        @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
        public void onCompletion(final MaxAdapter.InitializationStatus initializationStatus, final String str) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.g.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.f5313a.G().a(b.this.f5314b, SystemClock.elapsedRealtime() - b.this.f5315c, initializationStatus, str);
                    if (b.this.f5316d != null) {
                        b.this.f5316d.run();
                    }
                }
            }, this.f5314b.ae());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.mediation.a.h f5320a;

        /* renamed from: b  reason: collision with root package name */
        private final MaxSignalCollectionListener f5321b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicBoolean f5322c = new AtomicBoolean();

        c(com.applovin.impl.mediation.a.h hVar, MaxSignalCollectionListener maxSignalCollectionListener) {
            this.f5320a = hVar;
            this.f5321b = maxSignalCollectionListener;
        }
    }

    /* loaded from: classes.dex */
    private class d extends com.applovin.impl.sdk.e.a {
        private d() {
            super("TaskTimeoutMediatedAd", g.this.f5212b);
        }

        private void a(com.applovin.impl.mediation.a.a aVar) {
            if (aVar != null) {
                this.f5674b.L().a(aVar);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.p.get()) {
                return;
            }
            if (g.this.i.l()) {
                v vVar = this.f5676d;
                if (v.a()) {
                    this.f5676d.b(this.f5675c, g.this.f5216f + " is timing out, considering JS Tag ad loaded: " + g.this.i);
                }
                a(g.this.i);
                return;
            }
            v vVar2 = this.f5676d;
            if (v.a()) {
                this.f5676d.e(this.f5675c, g.this.f5216f + " is timing out " + g.this.i + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            a(g.this.i);
            g.this.m.a(this.f5675c, new MaxErrorImpl(-5101, "Adapter timed out"));
        }
    }

    /* loaded from: classes.dex */
    private class e extends com.applovin.impl.sdk.e.a {

        /* renamed from: e  reason: collision with root package name */
        private final c f5325e;

        private e(c cVar) {
            super("TaskTimeoutSignalCollection", g.this.f5212b);
            this.f5325e = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5325e.f5322c.get()) {
                return;
            }
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.e(this.f5675c, g.this.f5216f + " is timing out " + this.f5325e.f5320a + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            g.this.b("The adapter (" + g.this.f5216f + ") timed out", this.f5325e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(com.applovin.impl.mediation.a.f fVar, MaxAdapter maxAdapter, boolean z, n nVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("No adapter name specified");
        }
        if (maxAdapter == null) {
            throw new IllegalArgumentException("No adapter specified");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f5214d = fVar.S();
        this.f5217g = maxAdapter;
        this.f5212b = nVar;
        this.f5213c = nVar.D();
        this.f5215e = fVar;
        this.f5216f = maxAdapter.getClass().getSimpleName();
        this.r = z;
    }

    private void a(final Runnable runnable, com.applovin.impl.mediation.a.a aVar) {
        a("show_ad", new Runnable() { // from class: com.applovin.impl.mediation.g.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    String str = "Failed to start displaying ad for " + g.this.f5214d + " due to: " + th;
                    v.i("MediationAdapterWrapper", str);
                    g.this.m.b("show_ad", new MaxErrorImpl(-1, str));
                    g.this.a("show_ad");
                    g.this.f5212b.F().a(g.this.f5215e.R(), "show_ad", g.this.i);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (v.a()) {
            this.f5213c.c("MediationAdapterWrapper", "Marking " + this.f5216f + " as disabled due to: " + str);
        }
        this.o.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, c cVar) {
        if (!cVar.f5322c.compareAndSet(false, true) || cVar.f5321b == null) {
            return;
        }
        cVar.f5321b.onSignalCollected(str);
    }

    private void a(final String str, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.applovin.impl.mediation.g.11
            @Override // java.lang.Runnable
            public void run() {
                try {
                    v unused = g.this.f5213c;
                    if (v.a()) {
                        g.this.f5213c.b("MediationAdapterWrapper", g.this.f5216f + ": running " + str + APSSharedUtil.TRUNCATE_SEPARATOR);
                    }
                    runnable.run();
                    v unused2 = g.this.f5213c;
                    if (v.a()) {
                        g.this.f5213c.b("MediationAdapterWrapper", g.this.f5216f + ": finished " + str + "");
                    }
                } catch (Throwable th) {
                    v.c("MediationAdapterWrapper", "Failed operation " + str + " for " + g.this.f5214d, th);
                    g.this.a("fail_" + str);
                    if (str.equals("destroy")) {
                        return;
                    }
                    g.this.f5212b.F().a(g.this.f5215e.R(), str, g.this.i);
                }
            }
        };
        if (this.f5215e.Z()) {
            this.f5211a.post(runnable2);
        } else {
            runnable2.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, c cVar) {
        if (!cVar.f5322c.compareAndSet(false, true) || cVar.f5321b == null) {
            return;
        }
        cVar.f5321b.onSignalCollectionFailed(str);
    }

    private boolean b(com.applovin.impl.mediation.a.a aVar, Activity activity) {
        MaxErrorImpl maxErrorImpl;
        if (aVar != null) {
            if (aVar.g() == null) {
                v.i("MediationAdapterWrapper", "Adapter has been garbage collected");
                maxErrorImpl = new MaxErrorImpl(-1, "Adapter has been garbage collected");
            } else if (aVar.g() != this) {
                throw new IllegalArgumentException("Mediated ad belongs to a different adapter");
            } else {
                if (activity == null && MaxAdFormat.APP_OPEN != aVar.getFormat()) {
                    throw new IllegalArgumentException("No activity specified");
                }
                if (this.o.get()) {
                    if (g()) {
                        return true;
                    }
                    throw new IllegalStateException("Mediation adapter '" + this.f5216f + "' does not have an ad loaded. Please load an ad first");
                }
                String str = "Mediation adapter '" + this.f5216f + "' is disabled. Showing ads with this adapter is disabled.";
                v.i("MediationAdapterWrapper", str);
                maxErrorImpl = new MaxErrorImpl(-1, str);
            }
            this.m.b("ad_show", maxErrorImpl);
            return false;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    public View a() {
        return this.j;
    }

    public void a(final com.applovin.impl.mediation.a.a aVar, final Activity activity) {
        Runnable runnable;
        if (b(aVar, activity)) {
            if (aVar.m() != null) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.19
                    @Override // java.lang.Runnable
                    public void run() {
                        g.this.f5212b.I().a((com.applovin.impl.mediation.a.c) aVar, activity, g.this.m);
                    }
                };
            } else if (aVar.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxInterstitialAdapter) g.this.f5217g).showInterstitialAd(g.this.n, activity, g.this.m);
                    }
                };
            } else if (aVar.getFormat() == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxAppOpenAdapter) g.this.f5217g).showAppOpenAd(g.this.n, activity, g.this.m);
                    }
                };
            } else if (aVar.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxRewardedAdapter) g.this.f5217g).showRewardedAd(g.this.n, activity, g.this.m);
                    }
                };
            } else if (aVar.getFormat() != MaxAdFormat.REWARDED_INTERSTITIAL) {
                throw new IllegalStateException("Failed to show " + aVar + ": " + aVar.getFormat() + " is not a supported ad format");
            } else {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxRewardedInterstitialAdapter) g.this.f5217g).showRewardedInterstitialAd(g.this.n, activity, g.this.m);
                    }
                };
            }
            a(runnable, aVar);
        }
    }

    public void a(com.applovin.impl.mediation.a.a aVar, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity) {
        Runnable runnable;
        if (b(aVar, activity)) {
            if (aVar.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.6
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxInterstitialAdViewAdapter) g.this.f5217g).showInterstitialAd(g.this.n, viewGroup, lifecycle, activity, g.this.m);
                    }
                };
            } else if (aVar.getFormat() != MaxAdFormat.REWARDED) {
                throw new IllegalStateException("Failed to show " + aVar + ": " + aVar.getFormat() + " is not a supported ad format");
            } else {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.7
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxRewardedAdViewAdapter) g.this.f5217g).showRewardedAd(g.this.n, viewGroup, lifecycle, activity, g.this.m);
                    }
                };
            }
            a(runnable, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final MaxAdapterInitializationParameters maxAdapterInitializationParameters, final Activity activity, final Runnable runnable) {
        a(MobileAdsBridgeBase.initializeMethodName, new Runnable() { // from class: com.applovin.impl.mediation.g.1
            @Override // java.lang.Runnable
            public void run() {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                v unused = g.this.f5213c;
                if (v.a()) {
                    g.this.f5213c.b("MediationAdapterWrapper", "Initializing " + g.this.f5216f + " on thread: " + Thread.currentThread() + " with 'run_on_ui_thread' value: " + g.this.f5215e.Z());
                }
                g.this.f5217g.initialize(maxAdapterInitializationParameters, activity, new b(g.this.f5212b, g.this.f5215e, elapsedRealtime, runnable));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, final com.applovin.impl.mediation.a.h hVar, final Activity activity, MaxSignalCollectionListener maxSignalCollectionListener) {
        if (maxSignalCollectionListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (!this.o.get()) {
            v.i("MediationAdapterWrapper", "Mediation adapter '" + this.f5216f + "' is disabled. Signal collection ads with this adapter is disabled.");
            maxSignalCollectionListener.onSignalCollectionFailed("The adapter (" + this.f5216f + ") is disabled");
            return;
        }
        final c cVar = new c(hVar, maxSignalCollectionListener);
        MaxAdapter maxAdapter = this.f5217g;
        if (!(maxAdapter instanceof MaxSignalProvider)) {
            b("The adapter (" + this.f5216f + ") does not support signal collection", cVar);
            return;
        }
        final MaxSignalProvider maxSignalProvider = (MaxSignalProvider) maxAdapter;
        a("collect_signal", new Runnable() { // from class: com.applovin.impl.mediation.g.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    maxSignalProvider.collectSignal(maxAdapterSignalCollectionParameters, activity, new MaxSignalCollectionListener() { // from class: com.applovin.impl.mediation.g.9.1
                        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                        public void onSignalCollected(String str) {
                            g.this.a(str, cVar);
                        }

                        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                        public void onSignalCollectionFailed(String str) {
                            g.this.b(str, cVar);
                        }
                    });
                } catch (Throwable th) {
                    String str = "Failed signal collection for " + g.this.f5214d + " due to: " + th;
                    v.i("MediationAdapterWrapper", str);
                    g.this.b(str, cVar);
                    g.this.a("collect_signal");
                    g.this.f5212b.F().a(g.this.f5215e.R(), "collect_signal", g.this.i);
                }
                if (cVar.f5322c.get()) {
                    return;
                }
                if (hVar.ad() == 0) {
                    v unused = g.this.f5213c;
                    if (v.a()) {
                        g.this.f5213c.b("MediationAdapterWrapper", "Failing signal collection " + hVar + " since it has 0 timeout");
                    }
                    g.this.b("The adapter (" + g.this.f5216f + ") has 0 timeout", cVar);
                } else if (hVar.ad() <= 0) {
                    v unused2 = g.this.f5213c;
                    if (v.a()) {
                        g.this.f5213c.b("MediationAdapterWrapper", "Negative timeout set for " + hVar + ", not scheduling a timeout");
                    }
                } else {
                    v unused3 = g.this.f5213c;
                    if (v.a()) {
                        g.this.f5213c.b("MediationAdapterWrapper", "Setting timeout " + hVar.ad() + "ms. for " + hVar);
                    }
                    g.this.f5212b.V().a(new e(cVar), o.a.MEDIATION_TIMEOUT, hVar.ad());
                }
            }
        });
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.l = maxNativeAdView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, com.applovin.impl.mediation.a.a aVar) {
        this.f5218h = str;
        this.i = aVar;
    }

    public void a(String str, final MaxAdapterResponseParameters maxAdapterResponseParameters, final com.applovin.impl.mediation.a.a aVar, final Activity activity, MediationServiceImpl.a aVar2) {
        final Runnable runnable;
        if (aVar == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        }
        if (!this.o.get()) {
            String str2 = "Mediation adapter '" + this.f5216f + "' was disabled due to earlier failures. Loading ads with this adapter is disabled.";
            v.i("MediationAdapterWrapper", str2);
            aVar2.onAdLoadFailed(str, new MaxErrorImpl(-1, str2));
            return;
        }
        this.n = maxAdapterResponseParameters;
        this.m.a(aVar2);
        final MaxAdFormat m = aVar.m() != null ? aVar.m() : aVar.getFormat();
        if (m == MaxAdFormat.INTERSTITIAL) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.12
                @Override // java.lang.Runnable
                public void run() {
                    ((MaxInterstitialAdapter) g.this.f5217g).loadInterstitialAd(maxAdapterResponseParameters, activity, g.this.m);
                }
            };
        } else if (m == MaxAdFormat.APP_OPEN) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.13
                @Override // java.lang.Runnable
                public void run() {
                    ((MaxAppOpenAdapter) g.this.f5217g).loadAppOpenAd(maxAdapterResponseParameters, activity, g.this.m);
                }
            };
        } else if (m == MaxAdFormat.REWARDED) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.14
                @Override // java.lang.Runnable
                public void run() {
                    ((MaxRewardedAdapter) g.this.f5217g).loadRewardedAd(maxAdapterResponseParameters, activity, g.this.m);
                }
            };
        } else if (m == MaxAdFormat.REWARDED_INTERSTITIAL) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.15
                @Override // java.lang.Runnable
                public void run() {
                    ((MaxRewardedInterstitialAdapter) g.this.f5217g).loadRewardedInterstitialAd(maxAdapterResponseParameters, activity, g.this.m);
                }
            };
        } else if (m == MaxAdFormat.NATIVE) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.16
                @Override // java.lang.Runnable
                public void run() {
                    ((MediationAdapterBase) g.this.f5217g).loadNativeAd(maxAdapterResponseParameters, activity, g.this.m);
                }
            };
        } else if (!m.isAdViewAd()) {
            throw new IllegalStateException("Failed to load " + aVar + ": " + aVar.getFormat() + " (" + aVar.m() + ") is not a supported ad format");
        } else {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.17
                @Override // java.lang.Runnable
                public void run() {
                    ((MaxAdViewAdapter) g.this.f5217g).loadAdViewAd(maxAdapterResponseParameters, m, activity, g.this.m);
                }
            };
        }
        a("load_ad", new Runnable() { // from class: com.applovin.impl.mediation.g.18
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    String str3 = "Failed to start loading ad for " + g.this.f5214d + " due to: " + th;
                    v.i("MediationAdapterWrapper", str3);
                    g.this.m.a("load_ad", new MaxErrorImpl(-1, str3));
                    g.this.a("load_ad");
                    g.this.f5212b.F().a(g.this.f5215e.R(), "load_ad", g.this.i);
                }
                if (g.this.p.get()) {
                    return;
                }
                long ad = g.this.f5215e.ad();
                if (ad > 0) {
                    v unused = g.this.f5213c;
                    if (v.a()) {
                        g.this.f5213c.b("MediationAdapterWrapper", "Setting timeout " + ad + "ms. for " + aVar);
                    }
                    g.this.f5212b.V().a(new d(), o.a.MEDIATION_TIMEOUT, ad);
                    return;
                }
                v unused2 = g.this.f5213c;
                if (v.a()) {
                    g.this.f5213c.b("MediationAdapterWrapper", "Negative timeout set for " + aVar + ", not scheduling a timeout");
                }
            }
        });
    }

    public MaxNativeAd b() {
        return this.k;
    }

    public MaxNativeAdView c() {
        return this.l;
    }

    public String d() {
        return this.f5214d;
    }

    public MediationServiceImpl.a e() {
        return this.m.f5278b;
    }

    public boolean f() {
        return this.o.get();
    }

    public boolean g() {
        return this.p.get() && this.q.get();
    }

    public String h() {
        MaxAdapter maxAdapter = this.f5217g;
        if (maxAdapter != null) {
            try {
                return maxAdapter.getSdkVersion();
            } catch (Throwable th) {
                v.c("MediationAdapterWrapper", "Failed to get adapter's SDK version for " + this.f5214d, th);
                a("sdk_version");
                this.f5212b.F().a(this.f5215e.R(), "sdk_version", this.i);
                return null;
            }
        }
        return null;
    }

    public String i() {
        MaxAdapter maxAdapter = this.f5217g;
        if (maxAdapter != null) {
            try {
                return maxAdapter.getAdapterVersion();
            } catch (Throwable th) {
                v.c("MediationAdapterWrapper", "Failed to get adapter version for " + this.f5214d, th);
                a("adapter_version");
                this.f5212b.F().a(this.f5215e.R(), "adapter_version", this.i);
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        if (this.r) {
            return;
        }
        a("destroy", new Runnable() { // from class: com.applovin.impl.mediation.g.10
            @Override // java.lang.Runnable
            public void run() {
                g.this.a("destroy");
                g.this.f5217g.onDestroy();
                g.this.f5217g = null;
                g.this.j = null;
                g.this.k = null;
                g.this.l = null;
            }
        });
    }

    public String toString() {
        return "MediationAdapterWrapper{adapterTag='" + this.f5216f + "'}";
    }
}
