.class public abstract Lcom/appodeal/ads/unified/UnifiedBanner;
.super Lcom/appodeal/ads/unified/UnifiedViewAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedViewAd<",
        "Lcom/appodeal/ads/unified/UnifiedBannerParams;",
        "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
        "TNetworkRequestParams;>;"
    }
.end annotation


# instance fields
.field private isRefreshOnRotate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedViewAd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/unified/UnifiedBanner;->isRefreshOnRotate:Z

    return-void
.end method


# virtual methods
.method public isRefreshOnRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/unified/UnifiedBanner;->isRefreshOnRotate:Z

    return v0
.end method

.method public setRefreshOnRotate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/unified/UnifiedBanner;->isRefreshOnRotate:Z

    return-void
.end method
