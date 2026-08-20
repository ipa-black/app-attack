package com.appsgeyser.sdk.ads.behavior.loaderBehaviors;

import com.appsgeyser.sdk.ads.AdsLoader;
import com.appsgeyser.sdk.ads.behavior.BehaviorFactory;
/* loaded from: classes2.dex */
public class LoaderClickBehavior extends LoaderBehavior {
    private final BehaviorFactory.ClickBehavior clickBehavior;

    public LoaderClickBehavior(BehaviorFactory.ClickBehavior clickBehavior) {
        this.clickBehavior = clickBehavior;
    }

    @Override // com.appsgeyser.sdk.ads.behavior.loaderBehaviors.LoaderBehavior
    public void visit(AdsLoader adsLoader) {
        adsLoader.changeClickBehavior(this.clickBehavior);
    }
}
