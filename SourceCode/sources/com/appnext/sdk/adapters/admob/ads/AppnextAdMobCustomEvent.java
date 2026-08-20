package com.appnext.sdk.adapters.admob.ads;

import android.content.Context;
import android.os.Bundle;
import com.appnext.core.Ad;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.AppnextError;
import com.appnext.core.callbacks.OnAdClicked;
import com.appnext.core.callbacks.OnAdClosed;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnAdLoaded;
import com.appnext.core.callbacks.OnAdOpened;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitial;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener;
/* loaded from: classes.dex */
public abstract class AppnextAdMobCustomEvent implements CustomEventInterstitial {
    public static final String AppnextConfigurationExtraKey = "AppnextConfiguration";
    public static final String AppnextRewardPostbackExtraKey = "AppnextRewardPostback";
    protected Ad mAd;
    protected CustomEventInterstitialListener mListener;

    protected abstract Ad createAd(Context context, String str, Bundle bundle);

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitial
    public void requestInterstitialAd(Context context, CustomEventInterstitialListener customEventInterstitialListener, String str, MediationAdRequest mediationAdRequest, Bundle bundle) {
        try {
            Ad createAd = createAd(context, str, bundle);
            this.mAd = createAd;
            if (createAd == null) {
                customEventInterstitialListener.onAdFailedToLoad(0);
                return;
            }
            this.mListener = customEventInterstitialListener;
            createAd.setOnAdLoadedCallback(new OnAdLoaded() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobCustomEvent.1
                @Override // com.appnext.core.callbacks.OnAdLoaded
                public void adLoaded(String str2, AppnextAdCreativeType appnextAdCreativeType) {
                    AppnextAdMobCustomEvent.this.mListener.onAdLoaded();
                }
            });
            this.mAd.setOnAdOpenedCallback(new OnAdOpened() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobCustomEvent.2
                @Override // com.appnext.core.callbacks.OnAdOpened
                public void adOpened() {
                    AppnextAdMobCustomEvent.this.mListener.onAdOpened();
                }
            });
            this.mAd.setOnAdClickedCallback(new OnAdClicked() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobCustomEvent.3
                @Override // com.appnext.core.callbacks.OnAdClicked
                public void adClicked() {
                    AppnextAdMobCustomEvent.this.mListener.onAdClicked();
                    AppnextAdMobCustomEvent.this.mListener.onAdLeftApplication();
                }
            });
            this.mAd.setOnAdClosedCallback(new OnAdClosed() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobCustomEvent.4
                @Override // com.appnext.core.callbacks.OnAdClosed
                public void onAdClosed() {
                    AppnextAdMobCustomEvent.this.mListener.onAdClosed();
                }
            });
            this.mAd.setOnAdErrorCallback(new OnAdError() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobCustomEvent.5
                @Override // com.appnext.core.callbacks.OnAdError
                public void adError(String str2) {
                    str2.hashCode();
                    char c2 = 65535;
                    switch (str2.hashCode()) {
                        case -1958363695:
                            if (str2.equals(AppnextError.NO_ADS)) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1477010874:
                            if (str2.equals(AppnextError.CONNECTION_ERROR)) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 350741825:
                            if (str2.equals(AppnextError.TIMEOUT)) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 844170097:
                            if (str2.equals(AppnextError.SLOW_CONNECTION)) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            AppnextAdMobCustomEvent.this.mListener.onAdFailedToLoad(3);
                            return;
                        case 1:
                        case 2:
                        case 3:
                            AppnextAdMobCustomEvent.this.mListener.onAdFailedToLoad(2);
                            return;
                        default:
                            AppnextAdMobCustomEvent.this.mListener.onAdFailedToLoad(0);
                            return;
                    }
                }
            });
            this.mAd.loadAd();
        } catch (Throwable th) {
            th.getMessage();
            this.mListener.onAdFailedToLoad(0);
        }
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitial
    public void showInterstitial() {
        try {
            if (this.mAd.isAdLoaded()) {
                this.mAd.showAd();
            }
        } catch (Throwable th) {
            this.mListener.onAdFailedToLoad(3);
            th.getMessage();
        }
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onDestroy() {
        this.mAd.destroy();
    }
}
