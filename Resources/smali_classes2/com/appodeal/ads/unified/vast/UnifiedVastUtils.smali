.class Lcom/appodeal/ads/unified/vast/UnifiedVastUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;,
        Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils;->isValidAdm(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils;->createVastRequest(Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest;

    move-result-object p0

    return-object p0
.end method

.method private static createVastRequest(Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest;
    .locals 2

    invoke-static {}, Lcom/explorestack/iab/vast/VastRequest;->newBuilder()Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/CacheControl;->FullLoad:Lcom/explorestack/iab/CacheControl;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setXmlUrl(Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget v0, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->closeTime:I

    invoke-virtual {p2, v0}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setCompanionCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget-boolean p1, p1, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->autoClose:Z

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setAutoClose(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p1

    invoke-interface {p0}, Lcom/appodeal/ads/unified/UnifiedAdParams;->obtainSegmentId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "segment_id"

    invoke-virtual {p1, v0, p2}, Lcom/explorestack/iab/vast/VastRequest$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p1

    invoke-interface {p0}, Lcom/appodeal/ads/unified/UnifiedAdParams;->obtainPlacementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "placement_id"

    invoke-virtual {p1, v0, p2}, Lcom/explorestack/iab/vast/VastRequest$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p1

    instance-of p2, p0, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    invoke-interface {p0}, Lcom/appodeal/ads/unified/UnifiedRewardedParams;->getMaxDuration()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setMaxDuration(I)Lcom/explorestack/iab/vast/VastRequest$Builder;

    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest$Builder;->build()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object p0

    return-object p0
.end method

.method private static isValidAdm(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
