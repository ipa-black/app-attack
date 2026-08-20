package com.appodeal.ads.adapters.meta.rewarded_video;

import android.app.Activity;
import com.appodeal.ads.adapters.meta.MetaNetwork;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedRewarded;
import com.appodeal.ads.unified.UnifiedRewardedCallback;
import com.appodeal.ads.unified.UnifiedRewardedParams;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
/* loaded from: classes2.dex */
public final class a extends UnifiedRewarded<MetaNetwork.RequestParams> {

    /* renamed from: a  reason: collision with root package name */
    public RewardedVideoAd f6528a;

    /* renamed from: com.appodeal.ads.adapters.meta.rewarded_video.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0120a implements RewardedVideoAdListener {

        /* renamed from: a  reason: collision with root package name */
        public final UnifiedRewardedCallback f6529a;

        public C0120a(UnifiedRewardedCallback unifiedRewardedCallback) {
            this.f6529a = unifiedRewardedCallback;
        }

        public /* synthetic */ C0120a(UnifiedRewardedCallback unifiedRewardedCallback, int i) {
            this(unifiedRewardedCallback);
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdClicked(Ad ad) {
            this.f6529a.onAdClicked();
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdLoaded(Ad ad) {
            this.f6529a.onAdLoaded();
        }

        @Override // com.facebook.ads.AdListener
        public final void onError(Ad ad, AdError adError) {
            if (ad != null) {
                ad.destroy();
            }
            if (adError != null) {
                this.f6529a.printError(adError.getErrorMessage(), Integer.valueOf(adError.getErrorCode()));
            }
            this.f6529a.onAdLoadFailed(MetaNetwork.mapError(adError));
        }

        @Override // com.facebook.ads.AdListener
        public final void onLoggingImpression(Ad ad) {
            this.f6529a.onAdShown();
        }

        @Override // com.facebook.ads.RewardedVideoAdListener
        public final void onRewardedVideoClosed() {
            this.f6529a.onAdClosed();
        }

        @Override // com.facebook.ads.RewardedVideoAdListener
        public final void onRewardedVideoCompleted() {
            this.f6529a.onAdFinished();
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        UnifiedRewardedParams unifiedRewardedParams = (UnifiedRewardedParams) unifiedAdParams;
        RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(contextProvider.getApplicationContext(), ((MetaNetwork.RequestParams) obj).metaKey);
        this.f6528a = rewardedVideoAd;
        rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(new C0120a((UnifiedRewardedCallback) unifiedAdCallback, 0)).build());
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public final void onDestroy() {
        RewardedVideoAd rewardedVideoAd = this.f6528a;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
            this.f6528a = null;
        }
    }

    @Override // com.appodeal.ads.unified.UnifiedFullscreenAd
    public final void show(Activity activity, UnifiedRewardedCallback unifiedRewardedCallback) {
        UnifiedRewardedCallback unifiedRewardedCallback2 = unifiedRewardedCallback;
        RewardedVideoAd rewardedVideoAd = this.f6528a;
        if (rewardedVideoAd == null || !rewardedVideoAd.isAdLoaded() || this.f6528a.isAdInvalidated()) {
            unifiedRewardedCallback2.onAdShowFailed();
        } else {
            this.f6528a.show();
        }
    }
}
