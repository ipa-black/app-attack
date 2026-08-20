package io.bidmachine.ads.networks.adcolony;

import android.text.TextUtils;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class AdColonyParams extends UnifiedParams {
    final String adm;
    final String zoneId;

    public AdColonyParams(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        this.zoneId = unifiedMediationParams.getString("zone_id");
        this.adm = unifiedMediationParams.getString("adm");
    }

    @Override // io.bidmachine.unified.UnifiedParams
    public boolean isValid(UnifiedAdCallback unifiedAdCallback) {
        if (TextUtils.isEmpty(this.zoneId)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound("zone_id"));
            return false;
        } else if (TextUtils.isEmpty(this.adm)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound("adm"));
            return false;
        } else {
            return true;
        }
    }
}
