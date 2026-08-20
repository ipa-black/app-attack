.class public interface abstract Lio/bidmachine/unified/UnifiedNativeAdRequestParams;
.super Ljava/lang/Object;
.source "UnifiedNativeAdRequestParams.java"

# interfaces
.implements Lio/bidmachine/unified/UnifiedAdRequestParams;


# virtual methods
.method public bridge synthetic getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1

    .line 7
    invoke-interface {p0}, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;->getAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;
.end method
