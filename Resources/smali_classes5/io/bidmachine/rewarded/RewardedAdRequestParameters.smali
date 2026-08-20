.class public Lio/bidmachine/rewarded/RewardedAdRequestParameters;
.super Lio/bidmachine/FullScreenAdRequestParameters;
.source "RewardedAdRequestParameters.java"


# direct methods
.method public constructor <init>(Lio/bidmachine/AdContentType;)V
    .locals 1

    .line 15
    sget-object v0, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-direct {p0, v0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;-><init>(Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;)V

    return-void
.end method


# virtual methods
.method public isPlacementObjectValid(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtils;->isRewardedPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Z

    move-result p1

    return p1
.end method
