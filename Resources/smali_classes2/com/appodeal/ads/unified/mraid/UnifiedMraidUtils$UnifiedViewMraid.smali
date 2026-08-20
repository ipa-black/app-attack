.class interface abstract Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;
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
    name = "UnifiedViewMraid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedViewAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedViewAdCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraid<",
        "TUnifiedAdParamsType;TUnifiedAdCallbackType;>;"
    }
.end annotation


# virtual methods
.method public abstract createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedAdParamsType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "TUnifiedAdCallbackType;)",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener<",
            "TUnifiedAdCallbackType;>;"
        }
    .end annotation
.end method
