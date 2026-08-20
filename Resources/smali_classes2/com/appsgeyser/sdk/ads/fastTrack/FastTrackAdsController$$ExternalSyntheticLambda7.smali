.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda7;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda7;->f$1:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda7;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda7;->f$1:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;

    check-cast p1, Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->lambda$init$5$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V

    return-void
.end method
