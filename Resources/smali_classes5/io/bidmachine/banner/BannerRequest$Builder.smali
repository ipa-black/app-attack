.class public final Lio/bidmachine/banner/BannerRequest$Builder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "BannerRequest.java"

# interfaces
.implements Lio/bidmachine/models/IBannerRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/banner/BannerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "Lio/bidmachine/banner/BannerRequest$Builder;",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/banner/BannerAdRequestParameters;",
        ">;",
        "Lio/bidmachine/models/IBannerRequestBuilder<",
        "Lio/bidmachine/banner/BannerRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bannerSize:Lio/bidmachine/banner/BannerSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/bidmachine/AdRequest;
    .locals 1

    .line 34
    invoke-super {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->build()Lio/bidmachine/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;
    .locals 0

    .line 34
    check-cast p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/banner/BannerRequest$Builder;->build(Lio/bidmachine/banner/BannerAdRequestParameters;)Lio/bidmachine/banner/BannerRequest;

    move-result-object p1

    return-object p1
.end method

.method protected build(Lio/bidmachine/banner/BannerAdRequestParameters;)Lio/bidmachine/banner/BannerRequest;
    .locals 2

    .line 57
    new-instance v0, Lio/bidmachine/banner/BannerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/banner/BannerRequest;-><init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/banner/BannerRequest$1;)V

    return-object v0
.end method

.method protected bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lio/bidmachine/banner/BannerRequest$Builder;->createAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method protected createAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;
    .locals 2

    .line 48
    iget-object v0, p0, Lio/bidmachine/banner/BannerRequest$Builder;->bannerSize:Lio/bidmachine/banner/BannerSize;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lio/bidmachine/banner/BannerAdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/banner/BannerRequest$Builder;->bannerSize:Lio/bidmachine/banner/BannerSize;

    invoke-direct {v0, v1}, Lio/bidmachine/banner/BannerAdRequestParameters;-><init>(Lio/bidmachine/banner/BannerSize;)V

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BannerSize can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSize(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerRequest$Builder;
    .locals 0

    .line 41
    iput-object p1, p0, Lio/bidmachine/banner/BannerRequest$Builder;->bannerSize:Lio/bidmachine/banner/BannerSize;

    return-object p0
.end method

.method public bridge synthetic setSize(Lio/bidmachine/banner/BannerSize;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/bidmachine/banner/BannerRequest$Builder;->setSize(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method
