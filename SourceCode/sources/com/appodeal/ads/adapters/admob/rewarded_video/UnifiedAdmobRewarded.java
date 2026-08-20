package com.appodeal.ads.adapters.admob.rewarded_video;

import android.app.Activity;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdContainer;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobFullscreenDisplayListener;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobRequestParams;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
/* loaded from: classes2.dex */
public class UnifiedAdmobRewarded<AdRequestType extends AdRequest> extends UnifiedRewarded<UnifiedAdmobRequestParams<AdRequestType>> {
    private UnifiedAdContainer<RewardedAd> unifiedAdContainer;

    /* loaded from: classes2.dex */
    public static final class a extends RewardedAdLoadCallback {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedAdContainer<RewardedAd> f6454a;

        /* renamed from: b  reason: collision with root package name */
        public final UnifiedRewardedCallback f6455b;

        public a(UnifiedRewardedCallback unifiedRewardedCallback, UnifiedAdContainer<RewardedAd> unifiedAdContainer) {
            this.f6455b = unifiedRewardedCallback;
            this.f6454a = unifiedAdContainer;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public final void onAdFailedToLoad(LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            if (loadAdError != null) {
                this.f6455b.printError(loadAdError.getMessage(), Integer.valueOf(loadAdError.getCode()));
            }
            this.f6455b.onAdLoadFailed(UnifiedAdmobNetwork.mapError(loadAdError));
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public final void onAdLoaded(RewardedAd rewardedAd) {
            RewardedAd rewardedAd2 = rewardedAd;
            super.onAdLoaded(rewardedAd2);
            this.f6454a.setAd(rewardedAd2);
            this.f6455b.onAdLoaded();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedRewardedParams) unifiedAdParams, (UnifiedAdmobRequestParams) ((UnifiedAdmobRequestParams) obj), (UnifiedRewardedCallback) unifiedAdCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedRewardedParams unifiedRewardedParams, UnifiedAdmobRequestParams<AdRequestType> unifiedAdmobRequestParams, UnifiedRewardedCallback unifiedRewardedCallback) {
        this.unifiedAdContainer = new UnifiedAdContainer<>();
        RewardedAd.load(contextProvider.getApplicationContext(), unifiedAdmobRequestParams.key, unifiedAdmobRequestParams.request, new a(unifiedRewardedCallback, this.unifiedAdContainer));
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
        UnifiedAdContainer<RewardedAd> unifiedAdContainer = this.unifiedAdContainer;
        if (unifiedAdContainer != null) {
            unifiedAdContainer.destroy();
            this.unifiedAdContainer = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public void show(Activity activity, final UnifiedRewardedCallback unifiedRewardedCallback) {
        UnifiedAdContainer<RewardedAd> unifiedAdContainer = this.unifiedAdContainer;
        RewardedAd ad = unifiedAdContainer != null ? unifiedAdContainer.getAd() : null;
        if (ad == null) {
            unifiedRewardedCallback.onAdShowFailed();
            return;
        }
        ad.setFullScreenContentCallback(new UnifiedAdmobFullscreenDisplayListener(unifiedRewardedCallback));
        ad.show(activity, new OnUserEarnedRewardListener() { // from class: com.appodeal.ads.adapters.admob.rewarded_video.UnifiedAdmobRewarded$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
            public final void onUserEarnedReward(RewardItem rewardItem) {
                UnifiedRewardedCallback.this.onAdFinished();
            }
        });
    }
}
