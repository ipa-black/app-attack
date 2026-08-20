package io.bidmachine.ads.networks.notsy;

import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
interface InternalNotsyAdPresentListener {
    void onAdClicked();

    void onAdShowFailed(BMError bMError);

    void onAdShown();
}
