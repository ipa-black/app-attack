.class public final Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;
.super Ljava/lang/Object;
.source "BidMachineNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParams"
.end annotation


# instance fields
.field public final customParams:Lio/bidmachine/CustomParams;

.field public final networksConfig:Ljava/lang/String;

.field public final priceFloorParams:Lio/bidmachine/PriceFloorParams;

.field public final targetingParams:Lio/bidmachine/TargetingParams;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/PriceFloorParams;Lio/bidmachine/CustomParams;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    .line 3
    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->targetingParams:Lio/bidmachine/TargetingParams;

    .line 4
    iput-object p3, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->customParams:Lio/bidmachine/CustomParams;

    .line 5
    iput-object p4, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->networksConfig:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public prepareRequest(Lio/bidmachine/models/RequestBuilder;)Lio/bidmachine/models/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/models/RequestBuilder<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-interface {p1, v0}, Lio/bidmachine/models/RequestBuilder;->setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->priceFloorParams:Lio/bidmachine/PriceFloorParams;

    invoke-interface {p1, v0}, Lio/bidmachine/models/RequestBuilder;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->networksConfig:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/bidmachine/models/RequestBuilder;->setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    .line 4
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->customParams:Lio/bidmachine/CustomParams;

    invoke-interface {p1, v0}, Lio/bidmachine/models/RequestBuilder;->setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;

    return-object p1
.end method
