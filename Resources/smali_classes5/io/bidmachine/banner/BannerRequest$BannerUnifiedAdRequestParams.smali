.class Lio/bidmachine/banner/BannerRequest$BannerUnifiedAdRequestParams;
.super Lio/bidmachine/UnifiedAdRequestParamsImpl;
.source "BannerRequest.java"

# interfaces
.implements Lio/bidmachine/unified/UnifiedBannerAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/banner/BannerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BannerUnifiedAdRequestParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/UnifiedAdRequestParamsImpl<",
        "Lio/bidmachine/banner/BannerAdRequestParameters;",
        ">;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/UnifiedAdRequestParamsImpl;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/banner/BannerRequest$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/banner/BannerRequest$BannerUnifiedAdRequestParams;-><init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;
    .locals 1

    .line 66
    invoke-super {p0}, Lio/bidmachine/UnifiedAdRequestParamsImpl;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/banner/BannerAdRequestParameters;

    return-object v0
.end method
