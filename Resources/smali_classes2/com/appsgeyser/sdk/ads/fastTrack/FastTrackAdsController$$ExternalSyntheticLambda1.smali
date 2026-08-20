.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->lambda$showFullscreen$7$com-appsgeyser-sdk-ads-fastTrack-FastTrackAdsController(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method
