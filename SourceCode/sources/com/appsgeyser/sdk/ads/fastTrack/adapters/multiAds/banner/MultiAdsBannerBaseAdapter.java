package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner;

import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import java.util.HashMap;
/* loaded from: classes2.dex */
public abstract class MultiAdsBannerBaseAdapter implements MultiAdsBannerInterface {
    protected AdNetworkSdkModel adNetworkSdkModel;
    HashMap<String, String> bannerDetails;
    ViewGroup bannerViewContainer;
    protected Context context;
    Handler handler;
    protected MultiAdsBannerInterface.BannerListener listener;
    protected int priority;

    protected abstract void init();

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void onDestroy() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void onPause() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void onResume() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiAdsBannerBaseAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        this.context = context;
        this.adNetworkSdkModel = adNetworkSdkModel;
        this.bannerDetails = hashMap;
        this.priority = adNetworkSdkModel.getPriority();
        this.handler = new Handler(context.getMainLooper());
        init();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner.MultiAdsBannerInterface
    public void setListener(MultiAdsBannerInterface.BannerListener bannerListener) {
        this.listener = bannerListener;
    }

    public int getPriority() {
        return this.priority;
    }
}
