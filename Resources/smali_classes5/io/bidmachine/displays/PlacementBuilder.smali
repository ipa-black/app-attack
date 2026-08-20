.class public abstract Lio/bidmachine/displays/PlacementBuilder;
.super Ljava/lang/Object;
.source "PlacementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final contentType:Lio/bidmachine/AdContentType;

.field private final headerBiddingPlacementBuilder:Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/displays/HeaderBiddingPlacementBuilder<",
            "TUnifiedAdRequestParamsType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/AdContentType;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/bidmachine/displays/PlacementBuilder;->contentType:Lio/bidmachine/AdContentType;

    .line 30
    new-instance p1, Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;

    invoke-direct {p1}, Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;

    return-void
.end method


# virtual methods
.method public abstract createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
.end method

.method createHeaderBiddingAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;

    invoke-virtual {v0, p1}, Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;->createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object p1

    return-object p1
.end method

.method createHeaderBiddingPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;I)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;

    .line 63
    invoke-virtual {p0}, Lio/bidmachine/displays/PlacementBuilder;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 60
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;->createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Ljava/util/Collection;Ljava/util/List;I)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lcom/explorestack/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;I)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getAdContentType()Lio/bidmachine/AdContentType;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->contentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;

    invoke-virtual {v0, p1}, Lio/bidmachine/displays/HeaderBiddingPlacementBuilder;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    return-object p1
.end method
