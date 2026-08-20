.class public Lio/bidmachine/UnifiedAdRequestParamsImpl;
.super Ljava/lang/Object;
.source "UnifiedAdRequestParamsImpl.java"

# interfaces
.implements Lio/bidmachine/unified/UnifiedAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestParametersType:",
        "Lio/bidmachine/AdRequestParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;"
    }
.end annotation


# instance fields
.field private final adRequestParameters:Lio/bidmachine/AdRequestParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestParametersType;"
        }
    .end annotation
.end field

.field private final dataRestrictions:Lio/bidmachine/models/DataRestrictions;

.field private final deviceInfo:Lio/bidmachine/models/DeviceInfo;

.field private final targetingInfo:Lio/bidmachine/models/TargetingInfo;


# direct methods
.method protected constructor <init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;",
            "Lio/bidmachine/TargetingParams;",
            "Lio/bidmachine/models/DataRestrictions;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 26
    new-instance p1, Lio/bidmachine/TargetingInfoImpl;

    invoke-direct {p1, p3, p2}, Lio/bidmachine/TargetingInfoImpl;-><init>(Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/TargetingParams;)V

    iput-object p1, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->targetingInfo:Lio/bidmachine/models/TargetingInfo;

    .line 27
    new-instance p1, Lio/bidmachine/DeviceInfoImpl;

    invoke-direct {p1, p3}, Lio/bidmachine/DeviceInfoImpl;-><init>(Lio/bidmachine/models/DataRestrictions;)V

    iput-object p1, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->deviceInfo:Lio/bidmachine/models/DeviceInfo;

    .line 28
    iput-object p3, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-void
.end method


# virtual methods
.method public getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestParametersType;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    return-object v0
.end method

.method public getDataRestrictions()Lio/bidmachine/models/DataRestrictions;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-object v0
.end method

.method public getDeviceInfo()Lio/bidmachine/models/DeviceInfo;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->deviceInfo:Lio/bidmachine/models/DeviceInfo;

    return-object v0
.end method

.method public getTargetingInfo()Lio/bidmachine/models/TargetingInfo;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/bidmachine/UnifiedAdRequestParamsImpl;->targetingInfo:Lio/bidmachine/models/TargetingInfo;

    return-object v0
.end method

.method public isTestMode()Z
    .locals 1

    .line 57
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->isTestMode()Z

    move-result v0

    return v0
.end method
