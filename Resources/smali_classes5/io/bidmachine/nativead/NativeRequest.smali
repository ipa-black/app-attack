.class public final Lio/bidmachine/nativead/NativeRequest;
.super Lio/bidmachine/AdRequest;
.source "NativeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/NativeRequest$NativeUnifiedAdRequestParams;,
        Lio/bidmachine/nativead/NativeRequest$AdRequestListener;,
        Lio/bidmachine/nativead/NativeRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/nativead/NativeAdRequestParameters;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdRequestParameters;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/nativead/NativeRequest$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/NativeRequest;-><init>(Lio/bidmachine/nativead/NativeAdRequestParameters;)V

    return-void
.end method


# virtual methods
.method public containsAssetType(Lio/bidmachine/MediaAssetType;)Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {v0, p1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .locals 0

    .line 18
    check-cast p1, Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/nativead/NativeRequest;->createUnifiedAdRequestParams(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedNativeAdRequestParams;

    move-result-object p1

    return-object p1
.end method

.method protected createUnifiedAdRequestParams(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedNativeAdRequestParams;
    .locals 2

    .line 40
    new-instance v0, Lio/bidmachine/nativead/NativeRequest$NativeUnifiedAdRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/nativead/NativeRequest$NativeUnifiedAdRequestParams;-><init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/nativead/NativeRequest$1;)V

    return-object v0
.end method

.method protected processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdRequestParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->setValidateAssets(Z)V

    .line 32
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest;->processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V

    return-void
.end method
