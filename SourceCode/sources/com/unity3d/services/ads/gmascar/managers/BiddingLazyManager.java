package com.unity3d.services.ads.gmascar.managers;

import com.unity3d.ads.IUnityAdsTokenListener;
/* loaded from: classes3.dex */
public class BiddingLazyManager extends BiddingBaseManager {
    @Override // com.unity3d.services.ads.gmascar.managers.BiddingBaseManager
    public void start() {
    }

    public BiddingLazyManager(IUnityAdsTokenListener iUnityAdsTokenListener) {
        super(iUnityAdsTokenListener);
    }

    @Override // com.unity3d.services.ads.gmascar.managers.BiddingBaseManager
    public void onUnityTokenSuccessfullyFetched() {
        permitSignalsUpload();
        fetchSignals();
    }
}
