.class public final synthetic Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# instance fields
.field public final synthetic f$0:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    return-void
.end method


# virtual methods
.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-static {v0, p1}, Lcom/appodeal/ads/adapters/admob/rewarded_video/UnifiedAdmobRewarded;->lambda$show$0(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method
