package com.appsgeyser.sdk.ads.behavior.loaderBehaviors;

import com.appsgeyser.sdk.ads.AdsLoader;
/* loaded from: classes2.dex */
public class LoaderHideTimeoutBehavior extends LoaderBehavior {
    private final float timeOut;

    public LoaderHideTimeoutBehavior(float f2) {
        this.timeOut = f2;
    }

    @Override // com.appsgeyser.sdk.ads.behavior.loaderBehaviors.LoaderBehavior
    public void visit(AdsLoader adsLoader) {
        adsLoader.setHideTimeout(this.timeOut);
    }
}
