package io.bidmachine.ads.networks.notsy;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5.dex */
class NotsyParams extends UnifiedParams {
    final String adUnitId;
    final String price;
    final String score;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotsyParams(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        this.adUnitId = unifiedMediationParams.getString("ad_unit_id");
        this.score = unifiedMediationParams.getString(FirebaseAnalytics.Param.SCORE);
        this.price = unifiedMediationParams.getString("price");
    }

    @Override // io.bidmachine.unified.UnifiedParams
    public boolean isValid(UnifiedAdCallback unifiedAdCallback) {
        if (TextUtils.isEmpty(this.adUnitId)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound("ad_unit_id"));
            return false;
        } else if (TextUtils.isEmpty(this.score)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound(FirebaseAnalytics.Param.SCORE));
            return false;
        } else if (TextUtils.isEmpty(this.price)) {
            unifiedAdCallback.onAdLoadFailed(BMError.notFound("price"));
            return false;
        } else {
            return true;
        }
    }
}
