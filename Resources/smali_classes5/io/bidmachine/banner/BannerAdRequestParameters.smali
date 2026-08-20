.class public Lio/bidmachine/banner/BannerAdRequestParameters;
.super Lio/bidmachine/AdRequestParameters;
.source "BannerAdRequestParameters.java"


# instance fields
.field private final bannerSize:Lio/bidmachine/banner/BannerSize;


# direct methods
.method public constructor <init>(Lio/bidmachine/banner/BannerSize;)V
    .locals 1

    .line 16
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequestParameters;-><init>(Lio/bidmachine/AdsType;)V

    .line 18
    iput-object p1, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerSize:Lio/bidmachine/banner/BannerSize;

    return-void
.end method

.method private isParametersMatchedInternal(Lio/bidmachine/banner/BannerAdRequestParameters;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerSize:Lio/bidmachine/banner/BannerSize;

    iget-object p1, p1, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerSize:Lio/bidmachine/banner/BannerSize;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getBannerSize()Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerSize:Lio/bidmachine/banner/BannerSize;

    return-object v0
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    .line 35
    invoke-direct {p0, p1}, Lio/bidmachine/banner/BannerAdRequestParameters;->isParametersMatchedInternal(Lio/bidmachine/banner/BannerAdRequestParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPlacementObjectValid(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerSize:Lio/bidmachine/banner/BannerSize;

    invoke-static {p1, v0}, Lio/bidmachine/utils/ProtoUtils;->isBannerPlacement(Lcom/explorestack/protobuf/adcom/Placement;Lio/bidmachine/banner/BannerSize;)Z

    move-result p1

    return p1
.end method
