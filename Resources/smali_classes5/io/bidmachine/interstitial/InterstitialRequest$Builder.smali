.class public final Lio/bidmachine/interstitial/InterstitialRequest$Builder;
.super Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
.source "InterstitialRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/interstitial/InterstitialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder<",
        "Lio/bidmachine/interstitial/InterstitialRequest$Builder;",
        "Lio/bidmachine/interstitial/InterstitialRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/bidmachine/AdRequest;
    .locals 1

    .line 17
    invoke-super {p0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->build()Lio/bidmachine/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;
    .locals 0

    .line 17
    check-cast p1, Lio/bidmachine/FullScreenAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->build(Lio/bidmachine/FullScreenAdRequestParameters;)Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object p1

    return-object p1
.end method

.method protected build(Lio/bidmachine/FullScreenAdRequestParameters;)Lio/bidmachine/interstitial/InterstitialRequest;
    .locals 2

    .line 33
    new-instance v0, Lio/bidmachine/interstitial/InterstitialRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/interstitial/InterstitialRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/interstitial/InterstitialRequest$1;)V

    return-object v0
.end method

.method protected bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->createAdRequestParameters()Lio/bidmachine/FullScreenAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method protected createAdRequestParameters()Lio/bidmachine/FullScreenAdRequestParameters;
    .locals 2

    .line 27
    new-instance v0, Lio/bidmachine/interstitial/InterstitialAdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->adContentType:Lio/bidmachine/AdContentType;

    invoke-direct {v0, v1}, Lio/bidmachine/interstitial/InterstitialAdRequestParameters;-><init>(Lio/bidmachine/AdContentType;)V

    return-object v0
.end method

.method public bridge synthetic setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/interstitial/InterstitialRequest$Builder;
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method
