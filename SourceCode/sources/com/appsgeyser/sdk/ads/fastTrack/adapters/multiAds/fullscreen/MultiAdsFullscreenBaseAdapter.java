package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen;

import android.content.Context;
import android.os.Handler;
import com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface;
import com.appsgeyser.sdk.configuration.models.AdNetworkSdkModel;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import java.util.HashMap;
/* loaded from: classes2.dex */
public abstract class MultiAdsFullscreenBaseAdapter implements MultiAdsFullscreenInterface {
    protected AdNetworkSdkModel adNetworkSdkModel;
    protected Context context;
    HashMap<String, String> fullscreenDetails;
    Handler handler;
    protected MultiAdsFullscreenInterface.FullscreenListener listener;
    protected int priority;
    AppsgeyserProgressDialog progressDialog;

    protected abstract void init();

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void initCompleted() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void onDestroy() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void onPause() {
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void onResume() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MultiAdsFullscreenBaseAdapter(Context context, AdNetworkSdkModel adNetworkSdkModel, HashMap<String, String> hashMap) {
        this.context = context;
        this.adNetworkSdkModel = adNetworkSdkModel;
        this.fullscreenDetails = hashMap;
        this.priority = adNetworkSdkModel.getPriority();
        this.handler = new Handler(context.getMainLooper());
        init();
    }

    @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen.MultiAdsFullscreenInterface
    public void setListener(MultiAdsFullscreenInterface.FullscreenListener fullscreenListener) {
        this.listener = fullscreenListener;
    }

    public int getPriority() {
        return this.priority;
    }
}
