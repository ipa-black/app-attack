package com.criteo.publisher;
/* loaded from: classes2.dex */
public interface CriteoInterstitialAdListener extends k {
    @Override // com.criteo.publisher.k
    /* bridge */ /* synthetic */ default void onAdClicked() {
        super.onAdClicked();
    }

    default void onAdClosed() {
    }

    @Override // com.criteo.publisher.k
    /* bridge */ /* synthetic */ default void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
        super.onAdFailedToReceive(criteoErrorCode);
    }

    @Override // com.criteo.publisher.k
    /* bridge */ /* synthetic */ default void onAdLeftApplication() {
        super.onAdLeftApplication();
    }

    default void onAdOpened() {
    }

    void onAdReceived(CriteoInterstitial criteoInterstitial);
}
