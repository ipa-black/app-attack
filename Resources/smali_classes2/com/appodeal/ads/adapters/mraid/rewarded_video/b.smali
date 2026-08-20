.class public final Lcom/appodeal/ads/adapters/mraid/rewarded_video/b;
.super Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded<",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V
    .locals 1

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;

    invoke-direct {v0, p0, p2, p4}, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;-><init>(Lcom/appodeal/ads/adapters/mraid/rewarded_video/b;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    invoke-static {p1, p5, p3, p4, v0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->requestMraid(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V

    return-void
.end method
