package io.bidmachine.ads.networks.meta_audience;

import android.text.TextUtils;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class MetaAudienceParams extends UnifiedParams {
    final String bidPayload;
    final String placementId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MetaAudienceParams(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        this.placementId = unifiedMediationParams.getString("meta_key");
        this.bidPayload = unifiedMediationParams.getString("bid_payload");
    }

    @Override // io.bidmachine.unified.UnifiedParams
    public boolean isValid(UnifiedAdCallback unifiedAdCallback) {
        if (TextUtils.isEmpty(this.placementId)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound("meta_key"));
            return false;
        } else if (TextUtils.isEmpty(this.bidPayload)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound("bid_payload"));
            return false;
        } else {
            return true;
        }
    }
}
