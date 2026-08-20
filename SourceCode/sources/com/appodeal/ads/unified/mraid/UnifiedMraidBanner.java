package com.appodeal.ads.unified.mraid;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.unified.UnifiedBannerCallback;
import com.appodeal.ads.unified.UnifiedBannerParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidUtils;
/* loaded from: classes2.dex */
public abstract class UnifiedMraidBanner<NetworkRequestParams> extends UnifiedBanner<NetworkRequestParams> implements UnifiedMraidUtils.UnifiedViewMraid<UnifiedBannerParams, UnifiedBannerCallback> {
    private final UnifiedMraidUtils.UnifiedMraidViewAd<UnifiedBannerParams, UnifiedBannerCallback, NetworkRequestParams> unifiedMraid = new UnifiedMraidUtils.UnifiedMraidViewAd<UnifiedBannerParams, UnifiedBannerCallback, NetworkRequestParams>(this) { // from class: com.appodeal.ads.unified.mraid.UnifiedMraidBanner.1
        @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedMraidViewAd
        public void loadMraid(Context context, UnifiedBannerParams unifiedBannerParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedBannerCallback unifiedBannerCallback) {
            int i = unifiedMraidNetworkParams.width;
            int i2 = unifiedMraidNetworkParams.height;
            if (i > unifiedBannerParams.getMaxWidth(context) || i2 > unifiedBannerParams.getMaxHeight(context)) {
                int i3 = (i * 50) / i2;
                if (i3 > unifiedBannerParams.getMaxWidth(context) || 50 > unifiedBannerParams.getMaxHeight(context)) {
                    unifiedBannerCallback.onAdLoadFailed(LoadingError.IncorrectAdunit);
                    return;
                }
                unifiedMraidNetworkParams = new UnifiedMraidNetworkParams.Builder(unifiedMraidNetworkParams).setWidth(i3).setHeight(50).build();
            }
            super.loadMraid(context, (Context) unifiedBannerParams, unifiedMraidNetworkParams, (UnifiedMraidNetworkParams) unifiedBannerCallback);
        }

        @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedMraidViewAd
        public void performMraidRequest(Context context, UnifiedBannerParams unifiedBannerParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedBannerCallback unifiedBannerCallback, String str) {
            int i = unifiedMraidNetworkParams.width;
            int i2 = unifiedMraidNetworkParams.height;
            if ((i > unifiedBannerParams.getMaxWidth(context) || i2 > unifiedBannerParams.getMaxHeight(context)) && ((i * 50) / i2 > unifiedBannerParams.getMaxWidth(context) || 50 > unifiedBannerParams.getMaxHeight(context))) {
                unifiedBannerCallback.onAdLoadFailed(LoadingError.IncorrectAdunit);
            } else {
                super.performMraidRequest(context, (Context) unifiedBannerParams, unifiedMraidNetworkParams, (UnifiedMraidNetworkParams) unifiedBannerCallback, str);
            }
        }
    };

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedViewMraid
    public UnifiedMraidViewListener<UnifiedBannerCallback> createListener(Context context, UnifiedBannerParams unifiedBannerParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedBannerCallback unifiedBannerCallback) {
        return new UnifiedMraidBannerListener(unifiedBannerCallback, unifiedMraidNetworkParams, unifiedMraidNetworkParams.width, unifiedMraidNetworkParams.height);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedBannerParams) unifiedAdParams, (UnifiedBannerParams) obj, (UnifiedBannerCallback) unifiedAdCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedBannerParams unifiedBannerParams, NetworkRequestParams networkrequestparams, UnifiedBannerCallback unifiedBannerCallback) {
        this.unifiedMraid.load(contextProvider, (ContextProvider) unifiedBannerParams, (UnifiedBannerParams) networkrequestparams, (NetworkRequestParams) unifiedBannerCallback);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedMraid
    public void loadMraid(Context context, UnifiedBannerParams unifiedBannerParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedBannerCallback unifiedBannerCallback) {
        this.unifiedMraid.loadMraid(context, (Context) unifiedBannerParams, unifiedMraidNetworkParams, (UnifiedMraidNetworkParams) unifiedBannerCallback);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onClicked() {
        super.onClicked();
        this.unifiedMraid.onClicked();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
        this.unifiedMraid.onDestroy();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onFinished() {
        super.onFinished();
        this.unifiedMraid.onFinished();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onPrepareToShow(Activity activity, UnifiedBannerParams unifiedBannerParams) {
        super.onPrepareToShow(activity, (Activity) unifiedBannerParams);
        this.unifiedMraid.onPrepareToShow(activity, (Activity) unifiedBannerParams);
    }
}
