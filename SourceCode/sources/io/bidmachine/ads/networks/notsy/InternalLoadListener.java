package io.bidmachine.ads.networks.notsy;

import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public interface InternalLoadListener {
    void onAdLoadFailed(InternalNotsyAd internalNotsyAd, BMError bMError);

    void onAdLoaded(InternalNotsyAd internalNotsyAd);
}
