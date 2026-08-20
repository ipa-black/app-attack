.class public abstract Lcom/appodeal/ads/unified/UnifiedNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ageRestriction:Ljava/lang/String;

.field private final callToAction:Ljava/lang/String;

.field private clickNotifyUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clickUrl:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private finishNotifyUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final iconUrl:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private impressionNotifyUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rating:Ljava/lang/Float;

.field private final title:Ljava/lang/String;

.field private trackingPackageExpiry:J

.field private trackingPackageName:Ljava/lang/String;

.field private vastVideoTag:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appodeal/ads/unified/UnifiedNativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/unified/UnifiedNativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/unified/UnifiedNativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->trackingPackageExpiry:J

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->callToAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->imageUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->iconUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->rating:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public containsVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdId()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getAgeRestriction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->ageRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickNotifyUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->clickNotifyUrls:Ljava/util/List;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishNotifyUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->finishNotifyUrls:Ljava/util/List;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionNotifyUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->impressionNotifyUrls:Ljava/util/List;

    return-object v0
.end method

.method public getRating()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->rating:Ljava/lang/Float;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingPackageExpiry()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->trackingPackageExpiry:J

    return-wide v0
.end method

.method public getTrackingPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->trackingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVastVideoTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->vastVideoTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public obtainIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAdClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAdFinish()V
    .locals 0

    return-void
.end method

.method public onAdImpression(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAdVideoFinish()V
    .locals 0

    return-void
.end method

.method public onConfigure(Lcom/appodeal/ads/NativeAdView;)V
    .locals 0

    return-void
.end method

.method public onConfigureMediaView(Lcom/appodeal/ads/NativeMediaView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onRegisterForInteraction(Lcom/appodeal/ads/NativeAdView;)V
    .locals 0

    return-void
.end method

.method public onUnregisterForInteraction()V
    .locals 0

    return-void
.end method

.method public setAgeRestriction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->ageRestriction:Ljava/lang/String;

    return-void
.end method

.method public setClickNotifyUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->clickNotifyUrls:Ljava/util/List;

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setFinishNotifyUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->finishNotifyUrls:Ljava/util/List;

    return-void
.end method

.method public setImpressionNotifyUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->impressionNotifyUrls:Ljava/util/List;

    return-void
.end method

.method public setTrackingPackage(Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->trackingPackageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->trackingPackageExpiry:J

    return-void
.end method

.method public setVastVideoTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->vastVideoTag:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/UnifiedNativeAd;->videoUrl:Ljava/lang/String;

    return-void
.end method
