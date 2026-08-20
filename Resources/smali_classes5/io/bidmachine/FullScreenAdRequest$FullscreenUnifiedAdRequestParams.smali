.class Lio/bidmachine/FullScreenAdRequest$FullscreenUnifiedAdRequestParams;
.super Lio/bidmachine/UnifiedAdRequestParamsImpl;
.source "FullScreenAdRequest.java"

# interfaces
.implements Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullscreenUnifiedAdRequestParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/UnifiedAdRequestParamsImpl<",
        "Lio/bidmachine/FullScreenAdRequestParameters;",
        ">;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/UnifiedAdRequestParamsImpl;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/FullScreenAdRequest$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/FullScreenAdRequest$FullscreenUnifiedAdRequestParams;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdRequestParameters()Lio/bidmachine/FullScreenAdRequestParameters;
    .locals 1

    .line 53
    invoke-super {p0}, Lio/bidmachine/UnifiedAdRequestParamsImpl;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/FullScreenAdRequestParameters;

    return-object v0
.end method
