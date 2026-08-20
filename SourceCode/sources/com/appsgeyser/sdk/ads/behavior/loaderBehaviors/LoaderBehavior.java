package com.appsgeyser.sdk.ads.behavior.loaderBehaviors;

import com.appsgeyser.sdk.ads.AdsLoader;
import com.appsgeyser.sdk.ads.behavior.BehaviorAcceptor;
import com.appsgeyser.sdk.ads.behavior.BehaviorVisitor;
/* loaded from: classes2.dex */
public abstract class LoaderBehavior implements BehaviorVisitor {
    abstract void visit(AdsLoader adsLoader);

    @Override // com.appsgeyser.sdk.ads.behavior.BehaviorVisitor
    public void visit(BehaviorAcceptor behaviorAcceptor) {
        if (behaviorAcceptor instanceof AdsLoader) {
            visit((AdsLoader) behaviorAcceptor);
        }
    }
}
