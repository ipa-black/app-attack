.class public final synthetic Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/criteo/publisher/BidResponseListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkAdUnit;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/bidmachine/HeaderBiddingCollectParamsCallback;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/NetworkAdUnit;

    iput-object p2, p0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/criteo/publisher/Bid;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/NetworkAdUnit;

    iget-object v1, p0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/ads/networks/criteo/CriteoAdapter$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/ads/networks/criteo/CriteoAdapter;->lambda$onCollectHeaderBiddingParams$0(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;Lio/bidmachine/HeaderBiddingCollectParamsCallback;Lcom/criteo/publisher/Bid;)V

    return-void
.end method
