.class interface abstract Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/vast/UnifiedVastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnifiedFullscreenVast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            "TUnifiedAdCallbackType;)",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener<",
            "TUnifiedAdCallbackType;>;"
        }
    .end annotation
.end method

.method public abstract getVideoType()Lcom/explorestack/iab/vast/VideoType;
.end method

.method public abstract loadVast(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            "TUnifiedAdCallbackType;)V"
        }
    .end annotation
.end method

.method public abstract performVastRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            "TUnifiedAdCallbackType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
