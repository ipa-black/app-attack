.class public final Lio/bidmachine/banner/BannerRequest;
.super Lio/bidmachine/AdRequest;
.source "BannerRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/banner/BannerRequest$BannerUnifiedAdRequestParams;,
        Lio/bidmachine/banner/BannerRequest$AdRequestListener;,
        Lio/bidmachine/banner/BannerRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/banner/BannerAdRequestParameters;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/banner/BannerAdRequestParameters;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdRequestParameters;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/banner/BannerRequest$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/bidmachine/banner/BannerRequest;-><init>(Lio/bidmachine/banner/BannerAdRequestParameters;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .locals 0

    .line 12
    check-cast p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/banner/BannerRequest;->createUnifiedAdRequestParams(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    move-result-object p1

    return-object p1
.end method

.method protected createUnifiedAdRequestParams(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedBannerAdRequestParams;
    .locals 2

    .line 28
    new-instance v0, Lio/bidmachine/banner/BannerRequest$BannerUnifiedAdRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/banner/BannerRequest$BannerUnifiedAdRequestParams;-><init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/banner/BannerRequest$1;)V

    return-object v0
.end method

.method public getSize()Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/bidmachine/banner/BannerRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/banner/BannerAdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerSize()Lio/bidmachine/banner/BannerSize;

    move-result-object v0

    return-object v0
.end method
