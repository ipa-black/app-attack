.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

.field public final synthetic f$2:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;->f$1:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;->f$2:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;->f$1:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda8;->f$2:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->lambda$init$4$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V

    return-void
.end method
