.class public abstract Lio/bidmachine/AdRequestParameters;
.super Ljava/lang/Object;
.source "AdRequestParameters.java"


# instance fields
.field private final adsType:Lio/bidmachine/AdsType;

.field private bidPayload:Ljava/lang/String;

.field private customParams:Lio/bidmachine/CustomParams;

.field private networkConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private placementId:Ljava/lang/String;

.field private priceFloorParams:Lio/bidmachine/PriceFloorParams;

.field private sessionAdParams:Lio/bidmachine/SessionAdParams;

.field private targetingParams:Lio/bidmachine/TargetingParams;

.field private timeOutMs:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Lio/bidmachine/AdsType;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->adsType:Lio/bidmachine/AdsType;

    return-void
.end method


# virtual methods
.method public getAdsType()Lio/bidmachine/AdsType;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->adsType:Lio/bidmachine/AdsType;

    return-object v0
.end method

.method public getBidPayload()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->bidPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomParams()Lio/bidmachine/CustomParams;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->customParams:Lio/bidmachine/CustomParams;

    return-object v0
.end method

.method public getNetworkConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->networkConfigList:Ljava/util/List;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceFloorParams()Lio/bidmachine/PriceFloorParams;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    return-object v0
.end method

.method public getSessionAdParams()Lio/bidmachine/SessionAdParams;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->sessionAdParams:Lio/bidmachine/SessionAdParams;

    return-object v0
.end method

.method public getTargetingParams()Lio/bidmachine/TargetingParams;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->targetingParams:Lio/bidmachine/TargetingParams;

    return-object v0
.end method

.method public getTimeOutMs()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->timeOutMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->adsType:Lio/bidmachine/AdsType;

    iget-object p1, p1, Lio/bidmachine/AdRequestParameters;->adsType:Lio/bidmachine/AdsType;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract isPlacementObjectValid(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public isPricePassedByPriceFloor(D)Z
    .locals 4

    .line 121
    iget-object v0, p0, Lio/bidmachine/AdRequestParameters;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 128
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, p1, v2

    if-lez v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method setBidPayload(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->bidPayload:Ljava/lang/String;

    return-void
.end method

.method setCustomParams(Lio/bidmachine/CustomParams;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->customParams:Lio/bidmachine/CustomParams;

    return-void
.end method

.method setNetworkConfigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->networkConfigList:Ljava/util/List;

    return-void
.end method

.method setPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->placementId:Ljava/lang/String;

    return-void
.end method

.method setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    return-void
.end method

.method setSessionAdParams(Lio/bidmachine/SessionAdParams;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->sessionAdParams:Lio/bidmachine/SessionAdParams;

    return-void
.end method

.method setTargetingParams(Lio/bidmachine/TargetingParams;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->targetingParams:Lio/bidmachine/TargetingParams;

    return-void
.end method

.method setTimeOutMs(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lio/bidmachine/AdRequestParameters;->timeOutMs:Ljava/lang/Integer;

    return-void
.end method
