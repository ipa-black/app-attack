package io.bidmachine.ads.networks.notsy;

import io.bidmachine.ads.networks.notsy.InternalNotsyAd;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
interface InternalNotsyAdLoadListener<NotsyAdType extends InternalNotsyAd> {
    void onAdLoadFailed(BMError bMError);

    void onAdLoaded(NotsyAdType notsyadtype);
}
