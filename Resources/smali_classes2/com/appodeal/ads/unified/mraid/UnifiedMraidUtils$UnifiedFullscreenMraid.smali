.class interface abstract Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnifiedFullscreenMraid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraid<",
        "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;"
    }
.end annotation


# virtual methods
.method public abstract createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "TUnifiedAdCallbackType;)",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener<",
            "TUnifiedAdCallbackType;>;"
        }
    .end annotation
.end method

.method public abstract getMraidType()Lcom/explorestack/iab/mraid/MraidType;
.end method
