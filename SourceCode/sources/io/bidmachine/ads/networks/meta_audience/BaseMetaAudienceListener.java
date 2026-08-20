package io.bidmachine.ads.networks.meta_audience;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
abstract class BaseMetaAudienceListener<UnifiedAdCallbackType extends UnifiedAdCallback> implements AdListener {
    private final UnifiedAdCallbackType callback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseMetaAudienceListener(UnifiedAdCallbackType unifiedadcallbacktype) {
        this.callback = unifiedadcallbacktype;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnifiedAdCallbackType getCallback() {
        return this.callback;
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        this.callback.onAdLoadFailed(mapError(adError));
        ad.destroy();
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        this.callback.onAdClicked();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static BMError mapError(AdError adError) {
        if (adError != null) {
            int errorCode = adError.getErrorCode();
            if (errorCode != 2009) {
                if (errorCode != 3001) {
                    switch (errorCode) {
                        case 1000:
                            return BMError.NoConnection;
                        case 1001:
                        case 1002:
                            break;
                        default:
                            switch (errorCode) {
                            }
                    }
                }
                return BMError.noFill();
            }
            return BMError.TimeoutError;
        }
        return BMError.internal("Unknown error");
    }
}
