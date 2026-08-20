.class public interface abstract Lio/bidmachine/unified/UnifiedBannerAdRequestParams;
.super Ljava/lang/Object;
.source "UnifiedBannerAdRequestParams.java"

# interfaces
.implements Lio/bidmachine/unified/UnifiedAdRequestParams;


# virtual methods
.method public bridge synthetic getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1

    .line 7
    invoke-interface {p0}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;
.end method
