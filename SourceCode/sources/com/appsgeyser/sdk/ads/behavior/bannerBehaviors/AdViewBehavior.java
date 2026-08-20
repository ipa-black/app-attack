package com.appsgeyser.sdk.ads.behavior.bannerBehaviors;

import com.appsgeyser.sdk.ads.AdView;
import com.appsgeyser.sdk.ads.behavior.BehaviorAcceptor;
import com.appsgeyser.sdk.ads.behavior.BehaviorVisitor;
/* loaded from: classes2.dex */
public abstract class AdViewBehavior implements BehaviorVisitor {
    abstract void visit(AdView adView);

    @Override // com.appsgeyser.sdk.ads.behavior.BehaviorVisitor
    public void visit(BehaviorAcceptor behaviorAcceptor) {
        if (behaviorAcceptor instanceof AdView) {
            visit((AdView) behaviorAcceptor);
        }
    }
}
