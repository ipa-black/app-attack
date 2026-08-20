package com.criteo.publisher.advancednative;

import com.criteo.publisher.CriteoErrorCode;
/* loaded from: classes2.dex */
public interface CriteoNativeAdListener {
    default void onAdClicked() {
    }

    default void onAdClosed() {
    }

    default void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
    }

    default void onAdImpression() {
    }

    default void onAdLeftApplication() {
    }

    void onAdReceived(CriteoNativeAd criteoNativeAd);
}
