.class public Lio/bidmachine/nativead/NativeAdRequestParameters;
.super Lio/bidmachine/AdRequestParameters;
.source "NativeAdRequestParameters.java"


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

.field private validateAssets:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;)V"
        }
    .end annotation

    .line 22
    sget-object v0, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequestParameters;-><init>(Lio/bidmachine/AdsType;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->validateAssets:Z

    .line 24
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    return-void
.end method

.method private isParametersMatchedInternal(Lio/bidmachine/nativead/NativeAdRequestParameters;)Z
    .locals 1

    .line 59
    iget-object v0, p1, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    invoke-static {v0}, Lio/bidmachine/MediaAssetType;->isAll(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public containsAssetType(Lio/bidmachine/MediaAssetType;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    sget-object v0, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getMediaAssetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    return-object v0
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/bidmachine/nativead/NativeAdRequestParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lio/bidmachine/nativead/NativeAdRequestParameters;

    .line 47
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->isParametersMatchedInternal(Lio/bidmachine/nativead/NativeAdRequestParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPlacementObjectValid(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtils;->isNativePlacement(Lcom/explorestack/protobuf/adcom/Placement;)Z

    move-result p1

    return p1
.end method

.method public isValidateAssets()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->validateAssets:Z

    return v0
.end method

.method setValidateAssets(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->validateAssets:Z

    return-void
.end method
