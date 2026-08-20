.class Lio/bidmachine/nativead/NativeRequest$NativeUnifiedAdRequestParams;
.super Lio/bidmachine/UnifiedAdRequestParamsImpl;
.source "NativeRequest.java"

# interfaces
.implements Lio/bidmachine/unified/UnifiedNativeAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeUnifiedAdRequestParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/UnifiedAdRequestParamsImpl<",
        "Lio/bidmachine/nativead/NativeAdRequestParameters;",
        ">;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/UnifiedAdRequestParamsImpl;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/nativead/NativeRequest$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/nativead/NativeRequest$NativeUnifiedAdRequestParams;-><init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;
    .locals 1

    .line 82
    invoke-super {p0}, Lio/bidmachine/UnifiedAdRequestParamsImpl;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdRequestParameters;

    return-object v0
.end method
