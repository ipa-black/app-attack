.class public final Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/unified/UnifiedRewardedParams;

.field public final synthetic b:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

.field public final synthetic c:Lcom/appodeal/ads/adapters/mraid/rewarded_video/b;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/adapters/mraid/rewarded_video/b;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;->c:Lcom/appodeal/ads/adapters/mraid/rewarded_video/b;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;->a:Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    iput-object p3, p0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;->b:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;->b:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onSuccess(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;->c:Lcom/appodeal/ads/adapters/mraid/rewarded_video/b;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;->a:Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/mraid/rewarded_video/a;->b:Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method
