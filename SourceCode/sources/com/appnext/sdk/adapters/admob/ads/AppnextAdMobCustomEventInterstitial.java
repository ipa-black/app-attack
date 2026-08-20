package com.appnext.sdk.adapters.admob.ads;

import android.content.Context;
import android.os.Bundle;
import com.appnext.ads.interstitial.Interstitial;
import com.appnext.ads.interstitial.InterstitialConfig;
import com.appnext.core.Ad;
import java.io.Serializable;
/* loaded from: classes.dex */
public class AppnextAdMobCustomEventInterstitial extends AppnextAdMobCustomEvent {

    /* loaded from: classes.dex */
    private class CustomEventInterstitialAd extends Interstitial {
        protected static final String TID = "321";

        public CustomEventInterstitialAd(Context context, String str) {
            super(context, str);
        }

        public CustomEventInterstitialAd(Context context, String str, InterstitialConfig interstitialConfig) {
            super(context, str, interstitialConfig);
        }

        @Override // com.appnext.ads.interstitial.Interstitial, com.appnext.core.Ad
        public String getTID() {
            return TID;
        }
    }

    @Override // com.appnext.sdk.adapters.admob.ads.AppnextAdMobCustomEvent
    protected Ad createAd(Context context, String str, Bundle bundle) {
        Serializable serializable;
        if (bundle != null) {
            try {
                serializable = bundle.getSerializable(AppnextAdMobCustomEvent.AppnextConfigurationExtraKey);
            } catch (Throwable th) {
                this.mListener.onAdFailedToLoad(0);
                th.getMessage();
                return null;
            }
        } else {
            serializable = null;
        }
        if (serializable != null && (serializable instanceof InterstitialConfig)) {
            return new CustomEventInterstitialAd(context, str, (InterstitialConfig) serializable);
        }
        return new CustomEventInterstitialAd(context, str);
    }
}
