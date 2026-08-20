.class Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;
.super Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;
.source "InternalNotsyRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$RewardListener;,
        Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;
    }
.end annotation


# instance fields
.field private rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V

    return-void
.end method

.method static synthetic access$102(Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p1
.end method


# virtual methods
.method protected destroyAd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 54
    iput-object v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    :cond_0
    return-void
.end method

.method protected loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->createAdManagerAdRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V

    .line 31
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method protected showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;

    invoke-direct {v1, p0, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 43
    iget-object p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$RewardListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$RewardListener;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$1;)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    goto :goto_0

    .line 45
    :cond_0
    const-string p1, "Rewarded object is null or not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
