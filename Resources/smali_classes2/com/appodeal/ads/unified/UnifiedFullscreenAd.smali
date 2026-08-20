.class public abstract Lcom/appodeal/ads/unified/UnifiedFullscreenAd;
.super Lcom/appodeal/ads/unified/UnifiedAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdParamsType::",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;",
        "UnifiedAdCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;",
        "NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedAd<",
        "TUnifiedAdParamsType;TUnifiedAdCallbackType;TNetworkRequestParams;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedAd;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TUnifiedAdCallbackType;)V"
        }
    .end annotation
.end method
