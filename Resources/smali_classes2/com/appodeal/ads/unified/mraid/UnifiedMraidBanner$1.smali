.class Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner$1;
.super Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd<",
        "Lcom/appodeal/ads/unified/UnifiedBannerParams;",
        "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
        "TNetworkRequestParams;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner$1;->this$0:Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;

    invoke-direct {p0, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;-><init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner$1;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V

    return-void
.end method

.method public loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V
    .locals 3

    iget v0, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->width:I

    iget v1, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->height:I

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxWidth(Landroid/content/Context;)I

    move-result v2

    if-gt v0, v2, :cond_1

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxHeight(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V

    goto :goto_3

    :cond_1
    :goto_1
    const/16 v2, 0x32

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxWidth(Landroid/content/Context;)I

    move-result v1

    if-gt v0, v1, :cond_3

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxHeight(Landroid/content/Context;)I

    move-result v1

    if-le v2, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    invoke-direct {v1, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;-><init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setWidth(I)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->setHeight(I)Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams$Builder;->build()Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;

    move-result-object p3

    goto :goto_0

    :cond_3
    :goto_2
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p4, p1}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner$1;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V

    return-void
.end method

.method public bridge synthetic performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual/range {p0 .. p5}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner$1;->performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;Ljava/lang/String;)V

    return-void
.end method

.method public performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;Ljava/lang/String;)V
    .locals 3

    iget v0, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->width:I

    iget v1, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->height:I

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxWidth(Landroid/content/Context;)I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxHeight(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x32

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxWidth(Landroid/content/Context;)I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->getMaxHeight(Landroid/content/Context;)I

    move-result v0

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p4, p1}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public bridge synthetic performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual/range {p0 .. p5}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner$1;->performMraidRequest(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;Ljava/lang/String;)V

    return-void
.end method
