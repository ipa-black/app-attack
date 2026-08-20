package com.applovin.mediation.ads;

import android.content.Context;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
public class MaxAppOpenAd {

    /* renamed from: a  reason: collision with root package name */
    private final MaxFullscreenAdImpl f6246a;

    public MaxAppOpenAd(String str, Context context) {
        this(str, AppLovinSdk.getInstance(context));
    }

    public MaxAppOpenAd(String str, AppLovinSdk appLovinSdk) {
        a.logApiCall("MaxAppOpenAd", "MaxAppOpenAd(adUnitId=" + str + ", sdk=" + appLovinSdk + ")");
        this.f6246a = new MaxFullscreenAdImpl(str.trim(), MaxAdFormat.APP_OPEN, null, "MaxAppOpenAd", appLovinSdk.coreSdk);
    }

    public void destroy() {
        this.f6246a.logApiCall("destroy()");
        this.f6246a.destroy();
    }

    public String getAdUnitId() {
        return this.f6246a.getAdUnitId();
    }

    public boolean isReady() {
        boolean isReady = this.f6246a.isReady();
        this.f6246a.logApiCall("isReady() " + isReady + " for ad unit id " + this.f6246a.getAdUnitId());
        return isReady;
    }

    public void loadAd() {
        this.f6246a.logApiCall("loadAd()");
        this.f6246a.loadAd(null);
    }

    public void setAdReviewListener(MaxAdReviewListener maxAdReviewListener) {
        this.f6246a.logApiCall("setAdReviewListener(listener=" + maxAdReviewListener + ")");
        this.f6246a.setAdReviewListener(maxAdReviewListener);
    }

    public void setExtraParameter(String str, String str2) {
        this.f6246a.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f6246a.setExtraParameter(str, str2);
    }

    public void setListener(MaxAdListener maxAdListener) {
        this.f6246a.logApiCall("setListener(listener=" + maxAdListener + ")");
        this.f6246a.setListener(maxAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        this.f6246a.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f6246a.setLocalExtraParameter(str, obj);
    }

    public void setRequestListener(MaxAdRequestListener maxAdRequestListener) {
        this.f6246a.logApiCall("setRequestListener(listener=" + maxAdRequestListener + ")");
        this.f6246a.setRequestListener(maxAdRequestListener);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        this.f6246a.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f6246a.setRevenueListener(maxAdRevenueListener);
    }

    public void showAd() {
        showAd(null);
    }

    public void showAd(String str) {
        showAd(str, null);
    }

    public void showAd(String str, String str2) {
        this.f6246a.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ")");
        Utils.maybeLogCustomDataSizeLimit(str2, "MaxAppOpenAd");
        this.f6246a.showAd(str, str2, null);
    }

    public String toString() {
        return "" + this.f6246a;
    }
}
