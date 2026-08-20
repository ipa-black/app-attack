package com.appsgeyser.sdk.ads;

import com.appsgeyser.sdk.ads.AdsLoader;
import com.appsgeyser.sdk.ads.behavior.BehaviorFactory;
import com.appsgeyser.sdk.ads.behavior.BehaviorVisitor;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
class AdsHeaderReceiver implements AdsLoader.AdsLoadingFinishedListener, AdsLoader.HeadersReceiver {
    private final AdView adView;
    private final AdsLoader adsLoader;
    private Map<String, List<String>> lastResponseHeaders;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdsHeaderReceiver(AdView adView, AdsLoader adsLoader) {
        this.adsLoader = adsLoader;
        this.adView = adView;
    }

    @Override // com.appsgeyser.sdk.ads.AdsLoader.HeadersReceiver
    public boolean onAdHeadersReceived(Map<String, List<String>> map) {
        this.lastResponseHeaders = map;
        return true;
    }

    @Override // com.appsgeyser.sdk.ads.AdsLoader.AdsLoadingFinishedListener
    public void onAdLoadFinished() {
        applyBehaviors(new BehaviorFactory().createPostloadBehaviors(this.lastResponseHeaders));
    }

    private void applyBehaviors(List<BehaviorVisitor> list) {
        for (BehaviorVisitor behaviorVisitor : list) {
            this.adsLoader.acceptBehavior(behaviorVisitor);
            this.adView.acceptBehavior(behaviorVisitor);
        }
    }
}
