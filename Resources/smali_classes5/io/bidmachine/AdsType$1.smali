.class Lio/bidmachine/AdsType$1;
.super Lio/bidmachine/displays/DisplayPlacementBuilder;
.source "AdsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/displays/DisplayPlacementBuilder<",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lio/bidmachine/displays/DisplayPlacementBuilder;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;)Landroid/graphics/Point;
    .locals 0

    .line 37
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdsType$1;->getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public getSize(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;)Landroid/graphics/Point;
    .locals 1

    .line 41
    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerSize()Lio/bidmachine/banner/BannerSize;

    move-result-object p1

    .line 42
    new-instance p2, Landroid/graphics/Point;

    iget v0, p1, Lio/bidmachine/banner/BannerSize;->width:I

    iget p1, p1, Lio/bidmachine/banner/BannerSize;->height:I

    invoke-direct {p2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method
