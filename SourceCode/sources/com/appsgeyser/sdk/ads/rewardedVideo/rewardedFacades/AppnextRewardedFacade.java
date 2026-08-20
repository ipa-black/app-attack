package com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades;

import android.content.Context;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appnext.base.Appnext;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.callbacks.OnAdClicked;
import com.appnext.core.callbacks.OnAdClosed;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnAdLoaded;
import com.appnext.core.callbacks.OnAdOpened;
import com.appnext.core.callbacks.OnVideoEnded;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.server.StatController;
/* loaded from: classes2.dex */
public class AppnextRewardedFacade extends AbstractRewardedFacade {
    private RewardedVideo rewardedVideo;

    public AppnextRewardedFacade(Context context, ConfigPhp configPhp) {
        super(context, configPhp);
    }

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AbstractRewardedFacade
    protected void setPriority() {
        this.priority = this.configPhp.getRewardedVideoSdk().get(StatController.KEY_APPNEXT).getPriority();
    }

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AbstractRewardedFacade
    protected void init() {
        Appnext.init(this.context);
    }

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade
    public void loadRewardedVideo() {
        this.rewardedVideo = new RewardedVideo(this.context, this.configPhp.getRewardedVideoSdk().get(StatController.KEY_APPNEXT).getPlacementId());
        setupCallbacks();
        this.rewardedVideo.loadAd();
    }

    private void setupCallbacks() {
        this.rewardedVideo.setOnAdLoadedCallback(new OnAdLoaded() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AppnextRewardedFacade$$ExternalSyntheticLambda0
            @Override // com.appnext.core.callbacks.OnAdLoaded
            public final void adLoaded(String str, AppnextAdCreativeType appnextAdCreativeType) {
                AppnextRewardedFacade.this.m228xfd15026a(str, appnextAdCreativeType);
            }
        });
        this.rewardedVideo.setOnAdOpenedCallback(new OnAdOpened() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AppnextRewardedFacade$$ExternalSyntheticLambda1
            @Override // com.appnext.core.callbacks.OnAdOpened
            public final void adOpened() {
                AppnextRewardedFacade.this.m229x3f2c2fc9();
            }
        });
        this.rewardedVideo.setOnAdClickedCallback(new OnAdClicked() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AppnextRewardedFacade$$ExternalSyntheticLambda2
            @Override // com.appnext.core.callbacks.OnAdClicked
            public final void adClicked() {
                AppnextRewardedFacade.this.m230x81435d28();
            }
        });
        this.rewardedVideo.setOnAdClosedCallback(new OnAdClosed() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AppnextRewardedFacade$$ExternalSyntheticLambda3
            @Override // com.appnext.core.callbacks.OnAdClosed
            public final void onAdClosed() {
                AppnextRewardedFacade.this.m231xc35a8a87();
            }
        });
        this.rewardedVideo.setOnAdErrorCallback(new OnAdError() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AppnextRewardedFacade$$ExternalSyntheticLambda4
            @Override // com.appnext.core.callbacks.OnAdError
            public final void adError(String str) {
                AppnextRewardedFacade.this.m232x571b7e6(str);
            }
        });
        this.rewardedVideo.setOnVideoEndedCallback(new OnVideoEnded() { // from class: com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.AppnextRewardedFacade$$ExternalSyntheticLambda5
            @Override // com.appnext.core.callbacks.OnVideoEnded
            public final void videoEnded() {
                AppnextRewardedFacade.this.m233x4788e545();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setupCallbacks$0$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade  reason: not valid java name */
    public /* synthetic */ void m228xfd15026a(String str, AppnextAdCreativeType appnextAdCreativeType) {
        this.listener.onVideoLoaded();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setupCallbacks$1$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade  reason: not valid java name */
    public /* synthetic */ void m229x3f2c2fc9() {
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_APPNEXT_REWARDED_SDK_IMPRESSION, StatController.generateQueryParametersForSdk(this.configPhp, this.context, StatController.AdsType.REWARDED, "appnext rewarded video impression", StatController.KEY_APPNEXT), this.context, false);
        this.listener.onVideoOpened();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setupCallbacks$2$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade  reason: not valid java name */
    public /* synthetic */ void m230x81435d28() {
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_APPNEXT_REWARDED_SDK_CLICK, StatController.generateQueryParametersForSdk(this.configPhp, this.context, StatController.AdsType.REWARDED, "appnext rewarded video click", StatController.KEY_APPNEXT), this.context, false);
        this.listener.onVideoClicked();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setupCallbacks$3$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade  reason: not valid java name */
    public /* synthetic */ void m231xc35a8a87() {
        this.rewardedVideo = null;
        this.listener.onVideoClosed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setupCallbacks$4$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade  reason: not valid java name */
    public /* synthetic */ void m232x571b7e6(String str) {
        this.rewardedVideo = null;
        this.listener.onVideoError(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setupCallbacks$5$com-appsgeyser-sdk-ads-rewardedVideo-rewardedFacades-AppnextRewardedFacade  reason: not valid java name */
    public /* synthetic */ void m233x4788e545() {
        this.listener.onVideoFinished();
    }

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade
    public boolean isVideoLoaded() {
        RewardedVideo rewardedVideo = this.rewardedVideo;
        return rewardedVideo != null && rewardedVideo.isAdLoaded();
    }

    @Override // com.appsgeyser.sdk.ads.rewardedVideo.rewardedFacades.RewardedVideoFacade
    public void showRewardedVideo() {
        this.rewardedVideo.showAd();
    }
}
