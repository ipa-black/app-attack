.class Lio/bidmachine/InitializationParamsImpl;
.super Ljava/lang/Object;
.source "InitializationParamsImpl.java"

# interfaces
.implements Lio/bidmachine/InitializationParams;


# instance fields
.field private final dataRestrictions:Lio/bidmachine/models/DataRestrictions;

.field private final targetingInfo:Lio/bidmachine/models/TargetingInfo;


# direct methods
.method constructor <init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lio/bidmachine/TargetingInfoImpl;

    invoke-direct {v0, p2, p1}, Lio/bidmachine/TargetingInfoImpl;-><init>(Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/TargetingParams;)V

    iput-object v0, p0, Lio/bidmachine/InitializationParamsImpl;->targetingInfo:Lio/bidmachine/models/TargetingInfo;

    .line 19
    iput-object p2, p0, Lio/bidmachine/InitializationParamsImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-void
.end method


# virtual methods
.method public getDataRestrictions()Lio/bidmachine/models/DataRestrictions;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/bidmachine/InitializationParamsImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-object v0
.end method

.method public getTargetingInfo()Lio/bidmachine/models/TargetingInfo;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/bidmachine/InitializationParamsImpl;->targetingInfo:Lio/bidmachine/models/TargetingInfo;

    return-object v0
.end method

.method public isTestMode()Z
    .locals 1

    .line 36
    invoke-static {}, Lio/bidmachine/BidMachineImpl;->get()Lio/bidmachine/BidMachineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->isTestMode()Z

    move-result v0

    return v0
.end method
