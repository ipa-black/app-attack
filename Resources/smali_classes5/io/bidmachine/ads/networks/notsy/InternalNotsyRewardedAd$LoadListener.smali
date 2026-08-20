.class final Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "InternalNotsyRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadListener"
.end annotation


# instance fields
.field private final loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

.field private final notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    .line 68
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    .line 69
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 82
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/ads/networks/notsy/InternalLoadListener;->onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->access$102(Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 75
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    sget-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Loaded:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-virtual {p1, v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->setStatus(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;)V

    .line 77
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    invoke-interface {p1, v0}, Lio/bidmachine/ads/networks/notsy/InternalLoadListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd$LoadListener;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
