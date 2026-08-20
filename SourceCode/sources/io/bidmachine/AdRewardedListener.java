package io.bidmachine;

import io.bidmachine.IAd;
/* loaded from: classes5.dex */
public interface AdRewardedListener<AdType extends IAd> {
    void onAdRewarded(AdType adtype);
}
