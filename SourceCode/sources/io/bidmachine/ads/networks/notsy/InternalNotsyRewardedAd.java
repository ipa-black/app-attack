package io.bidmachine.ads.networks.notsy;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import io.bidmachine.ads.networks.notsy.InternalNotsyAd;
import io.bidmachine.ads.networks.notsy.InternalNotsyFullscreenAd;
import io.bidmachine.utils.BMError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class InternalNotsyRewardedAd extends InternalNotsyFullscreenAd {
    private RewardedAd rewardedAd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalNotsyRewardedAd(InternalNotsyAdUnit internalNotsyAdUnit) {
        super(internalNotsyAdUnit);
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAd
    protected void loadAd(Context context, InternalLoadListener internalLoadListener) throws Throwable {
        RewardedAd.load(context, getAdUnitId(), createAdManagerAdRequest(), (RewardedAdLoadCallback) new LoadListener(this, internalLoadListener));
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyFullscreenAd
    protected void showAd(Activity activity, InternalNotsyFullscreenAdPresentListener internalNotsyFullscreenAdPresentListener) throws Throwable {
        RewardedAd rewardedAd = this.rewardedAd;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback(new InternalNotsyFullscreenAd.InternalFullscreenShowListener(this, internalNotsyFullscreenAdPresentListener));
            this.rewardedAd.show(activity, new RewardListener());
            return;
        }
        internalNotsyFullscreenAdPresentListener.onAdShowFailed(BMError.internal("Rewarded object is null or not loaded"));
    }

    @Override // io.bidmachine.ads.networks.notsy.InternalNotsyAd
    protected void destroyAd() throws Throwable {
        RewardedAd rewardedAd = this.rewardedAd;
        if (rewardedAd != null) {
            rewardedAd.setFullScreenContentCallback(null);
            this.rewardedAd = null;
        }
    }

    /* loaded from: classes5.dex */
    private static final class LoadListener extends RewardedAdLoadCallback {
        private final InternalLoadListener loadListener;
        private final InternalNotsyRewardedAd notsyRewardedAd;

        public LoadListener(InternalNotsyRewardedAd internalNotsyRewardedAd, InternalLoadListener internalLoadListener) {
            this.notsyRewardedAd = internalNotsyRewardedAd;
            this.loadListener = internalLoadListener;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(RewardedAd rewardedAd) {
            this.notsyRewardedAd.rewardedAd = rewardedAd;
            this.notsyRewardedAd.setStatus(InternalNotsyAd.Status.Loaded);
            this.loadListener.onAdLoaded(this.notsyRewardedAd);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            this.loadListener.onAdLoadFailed(this.notsyRewardedAd, BMError.noFill());
        }
    }

    /* loaded from: classes5.dex */
    private static final class RewardListener implements OnUserEarnedRewardListener {
        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
        public void onUserEarnedReward(RewardItem rewardItem) {
        }

        private RewardListener() {
        }
    }
}
