package io.bidmachine.ads.networks.pangle;

import android.text.TextUtils;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class PangleParams extends UnifiedParams {
    final String bidPayload;
    final String slotId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PangleParams(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        this.slotId = unifiedMediationParams.getString("slot_id");
        this.bidPayload = unifiedMediationParams.getString("bid_payload");
    }

    @Override // io.bidmachine.unified.UnifiedParams
    public boolean isValid(UnifiedAdCallback unifiedAdCallback) {
        if (TextUtils.isEmpty(this.slotId)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound("slot_id"));
            return false;
        } else if (TextUtils.isEmpty(this.bidPayload)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound("bid_payload"));
            return false;
        } else {
            return true;
        }
    }
}
