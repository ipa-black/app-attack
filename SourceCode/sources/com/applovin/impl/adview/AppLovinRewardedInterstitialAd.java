package com.applovin.impl.adview;

import android.content.Context;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
public class AppLovinRewardedInterstitialAd {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinIncentivizedInterstitial f4248a;

    /* renamed from: b  reason: collision with root package name */
    private AppLovinAdDisplayListener f4249b;

    /* renamed from: c  reason: collision with root package name */
    private AppLovinAdClickListener f4250c;

    /* renamed from: d  reason: collision with root package name */
    private AppLovinAdVideoPlaybackListener f4251d;

    public AppLovinRewardedInterstitialAd(AppLovinSdk appLovinSdk) {
        this.f4248a = new AppLovinIncentivizedInterstitial(appLovinSdk);
    }

    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.f4250c = appLovinAdClickListener;
    }

    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f4249b = appLovinAdDisplayListener;
    }

    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f4251d = appLovinAdVideoPlaybackListener;
    }

    public void show(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.f4248a.show(appLovinAd, context, appLovinAdRewardListener, this.f4251d, this.f4249b, this.f4250c);
    }

    public String toString() {
        return "AppLovinRewardedInterstitialAd{}";
    }
}
