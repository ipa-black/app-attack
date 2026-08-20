.class Lio/bidmachine/AdsFormat$2;
.super Lio/bidmachine/AdsFormat$AdsFormatMatcher;
.source "AdsFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdsFormat$AdsFormatMatcher<",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lio/bidmachine/AdsFormat$AdsFormatMatcher;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method bridge synthetic isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .locals 0

    .line 25
    check-cast p1, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdsFormat$2;->isMatch(Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result p1

    return p1
.end method

.method isMatch(Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .locals 0

    .line 29
    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerSize()Lio/bidmachine/banner/BannerSize;

    move-result-object p1

    sget-object p2, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
