.class public final Lio/bidmachine/rewarded/RewardedRequest$Builder;
.super Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
.source "RewardedRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rewarded/RewardedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder<",
        "Lio/bidmachine/rewarded/RewardedRequest$Builder;",
        "Lio/bidmachine/rewarded/RewardedRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/bidmachine/AdRequest;
    .locals 1

    .line 25
    invoke-super {p0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->build()Lio/bidmachine/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;
    .locals 0

    .line 25
    check-cast p1, Lio/bidmachine/FullScreenAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/rewarded/RewardedRequest$Builder;->build(Lio/bidmachine/FullScreenAdRequestParameters;)Lio/bidmachine/rewarded/RewardedRequest;

    move-result-object p1

    return-object p1
.end method

.method protected build(Lio/bidmachine/FullScreenAdRequestParameters;)Lio/bidmachine/rewarded/RewardedRequest;
    .locals 2

    .line 36
    new-instance v0, Lio/bidmachine/rewarded/RewardedRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/rewarded/RewardedRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/rewarded/RewardedRequest$1;)V

    return-object v0
.end method

.method protected bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/rewarded/RewardedRequest$Builder;->createAdRequestParameters()Lio/bidmachine/FullScreenAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method protected createAdRequestParameters()Lio/bidmachine/FullScreenAdRequestParameters;
    .locals 2

    .line 30
    new-instance v0, Lio/bidmachine/rewarded/RewardedAdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/rewarded/RewardedRequest$Builder;->adContentType:Lio/bidmachine/AdContentType;

    invoke-direct {v0, v1}, Lio/bidmachine/rewarded/RewardedAdRequestParameters;-><init>(Lio/bidmachine/AdContentType;)V

    return-object v0
.end method

.method public bridge synthetic setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method
