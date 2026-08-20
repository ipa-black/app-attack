.class public Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;
.super Lcom/appodeal/ads/unified/UnifiedRewarded;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/google/android/gms/ads/AdRequest;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedRewarded<",
        "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
        "TAdRequestType;>;>;"
    }
.end annotation


# instance fields
.field private unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer<",
            "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedRewarded;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdFinished()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedParams;",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "TAdRequestType;>;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
            ")V"
        }
    .end annotation

    new-instance p2, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-direct {p2}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->key:Ljava/lang/String;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->request:Lcom/google/android/gms/ads/AdRequest;

    new-instance v0, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded$a;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-direct {v0, p4, v1}, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded$a;-><init>(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;)V

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    :cond_0
    return-void
.end method

.method public bridge synthetic show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobFullscreenDisplayListener;

    invoke-direct {v1, p2}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobFullscreenDisplayListener;-><init>(Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    new-instance v1, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdShowFailed()V

    :goto_1
    return-void
.end method
