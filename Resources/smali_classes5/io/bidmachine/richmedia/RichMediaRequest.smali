.class public Lio/bidmachine/richmedia/RichMediaRequest;
.super Lio/bidmachine/FullScreenAdRequest;
.source "RichMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/richmedia/RichMediaRequest$AdRequestListener;,
        Lio/bidmachine/richmedia/RichMediaRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest<",
        "Lio/bidmachine/richmedia/RichMediaRequest;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;)V

    return-void
.end method


# virtual methods
.method protected onBeforeSetVideoPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lio/bidmachine/FullScreenAdRequest;->onBeforeSetVideoPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)V

    .line 22
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->VIDEO_PLACEMENT_TYPE_IN_FEED:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPtype(Lcom/explorestack/protobuf/adcom/VideoPlacementType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    return-void
.end method
