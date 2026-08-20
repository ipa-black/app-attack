package com.applovin.mediation.ads;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes.dex */
public class MaxRewardedAd implements MaxFullscreenAdImpl.a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, MaxRewardedAd> f6249a = CollectionUtils.map();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f6250b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static WeakReference<Activity> f6251c = new WeakReference<>(null);

    /* renamed from: d  reason: collision with root package name */
    private final MaxFullscreenAdImpl f6252d;

    private MaxRewardedAd(String str, AppLovinSdk appLovinSdk) {
        this.f6252d = new MaxFullscreenAdImpl(str.trim(), MaxAdFormat.REWARDED, this, "MaxRewardedAd", appLovinSdk.coreSdk);
    }

    public static MaxRewardedAd getInstance(String str, Activity activity) {
        return getInstance(str, AppLovinSdk.getInstance(activity), activity);
    }

    public static MaxRewardedAd getInstance(String str, AppLovinSdk appLovinSdk, Activity activity) {
        a.logApiCall("MaxRewardedAd", "getInstance(adUnitId=" + str + ", sdk=" + appLovinSdk + ", activity=" + activity + ")");
        if (str != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Empty ad unit ID specified");
            }
            if (activity != null) {
                if (appLovinSdk != null) {
                    updateActivity(activity);
                    synchronized (f6250b) {
                        Map<String, MaxRewardedAd> map = f6249a;
                        MaxRewardedAd maxRewardedAd = map.get(str);
                        if (maxRewardedAd != null) {
                            return maxRewardedAd;
                        }
                        MaxRewardedAd maxRewardedAd2 = new MaxRewardedAd(str, appLovinSdk);
                        map.put(str, maxRewardedAd2);
                        return maxRewardedAd2;
                    }
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No activity specified");
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public static void updateActivity(Activity activity) {
        a.logApiCall("MaxRewardedAd", "updateActivity(activity=" + activity + ")");
        if (activity != null) {
            f6251c = new WeakReference<>(activity);
        }
    }

    public void destroy() {
        this.f6252d.logApiCall("destroy()");
        synchronized (f6250b) {
            f6249a.remove(this.f6252d.getAdUnitId());
        }
        this.f6252d.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.a
    public Activity getActivity() {
        this.f6252d.logApiCall("getActivity()");
        return f6251c.get();
    }

    public String getAdUnitId() {
        return this.f6252d.getAdUnitId();
    }

    public boolean isReady() {
        boolean isReady = this.f6252d.isReady();
        this.f6252d.logApiCall("isReady() " + isReady + " for ad unit id " + this.f6252d.getAdUnitId());
        return isReady;
    }

    public void loadAd() {
        this.f6252d.logApiCall("loadAd()");
        this.f6252d.loadAd(getActivity());
    }

    public void setAdReviewListener(MaxAdReviewListener maxAdReviewListener) {
        this.f6252d.logApiCall("setAdReviewListener(listener=" + maxAdReviewListener + ")");
        this.f6252d.setAdReviewListener(maxAdReviewListener);
    }

    public void setExtraParameter(String str, String str2) {
        this.f6252d.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f6252d.setExtraParameter(str, str2);
    }

    public void setListener(MaxRewardedAdListener maxRewardedAdListener) {
        this.f6252d.logApiCall("setListener(listener=" + maxRewardedAdListener + ")");
        this.f6252d.setListener(maxRewardedAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        this.f6252d.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f6252d.setLocalExtraParameter(str, obj);
    }

    public void setRequestListener(MaxAdRequestListener maxAdRequestListener) {
        this.f6252d.logApiCall("setRequestListener(listener=" + maxAdRequestListener + ")");
        this.f6252d.setRequestListener(maxAdRequestListener);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        this.f6252d.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f6252d.setRevenueListener(maxAdRevenueListener);
    }

    public void showAd() {
        showAd(null);
    }

    public void showAd(ViewGroup viewGroup, Lifecycle lifecycle) {
        showAd(null, viewGroup, lifecycle);
    }

    public void showAd(String str) {
        showAd(str, (String) null);
    }

    public void showAd(String str, ViewGroup viewGroup, Lifecycle lifecycle) {
        showAd(str, null, viewGroup, lifecycle);
    }

    public void showAd(String str, String str2) {
        this.f6252d.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ")");
        Utils.maybeLogCustomDataSizeLimit(str2, "MaxRewardedAd");
        this.f6252d.showAd(str, str2, getActivity());
    }

    public void showAd(String str, String str2, ViewGroup viewGroup, Lifecycle lifecycle) {
        this.f6252d.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ", containerView=" + viewGroup + ", lifecycle=" + lifecycle + ")");
        this.f6252d.showAd(str, str2, viewGroup, lifecycle, getActivity());
    }

    public String toString() {
        return "" + this.f6252d;
    }
}
