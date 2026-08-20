.class public final Lio/bidmachine/nativead/NativeRequest$Builder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "NativeRequest.java"

# interfaces
.implements Lio/bidmachine/models/INativeRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "Lio/bidmachine/nativead/NativeRequest$Builder;",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/nativead/NativeAdRequestParameters;",
        ">;",
        "Lio/bidmachine/models/INativeRequestBuilder<",
        "Lio/bidmachine/nativead/NativeRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mediaAssetTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>()V

    .line 49
    new-instance v0, Lio/bidmachine/nativead/NativeRequest$Builder$1;

    .line 50
    invoke-static {}, Lio/bidmachine/MediaAssetType;->values()[Lio/bidmachine/MediaAssetType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lio/bidmachine/nativead/NativeRequest$Builder$1;-><init>(Lio/bidmachine/nativead/NativeRequest$Builder;I)V

    iput-object v0, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->mediaAssetTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/bidmachine/AdRequest;
    .locals 1

    .line 46
    invoke-super {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->build()Lio/bidmachine/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;
    .locals 0

    .line 46
    check-cast p1, Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->build(Lio/bidmachine/nativead/NativeAdRequestParameters;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object p1

    return-object p1
.end method

.method protected build(Lio/bidmachine/nativead/NativeAdRequestParameters;)Lio/bidmachine/nativead/NativeRequest;
    .locals 2

    .line 73
    new-instance v0, Lio/bidmachine/nativead/NativeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/nativead/NativeRequest;-><init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/nativead/NativeRequest$1;)V

    return-object v0
.end method

.method protected bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeRequest$Builder;->createAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method protected createAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;
    .locals 2

    .line 67
    new-instance v0, Lio/bidmachine/nativead/NativeAdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->mediaAssetTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMediaAssetTypes([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/models/INativeRequestBuilder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->setMediaAssetTypes([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/nativead/NativeRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setMediaAssetTypes([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/nativead/NativeRequest$Builder;
    .locals 1

    .line 57
    array-length v0, p1

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->mediaAssetTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->mediaAssetTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method
