.class Lio/bidmachine/AdsFormat$11;
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
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lio/bidmachine/AdsFormat$AdsFormatMatcher;-><init>(Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method bridge synthetic isMatch(Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .locals 0

    .line 100
    check-cast p1, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdsFormat$11;->isMatch(Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/AdContentType;)Z

    move-result p1

    return p1
.end method

.method isMatch(Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/AdContentType;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
