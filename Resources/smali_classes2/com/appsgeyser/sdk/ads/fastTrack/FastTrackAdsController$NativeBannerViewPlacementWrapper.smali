.class Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeBannerViewPlacementWrapper;
.super Ljava/lang/Object;
.source "FastTrackAdsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeBannerViewPlacementWrapper"
.end annotation


# instance fields
.field nativeBannerViewContainer:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeBannerViewPlacementWrapper;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeBannerViewPlacementWrapper;->nativeBannerViewContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public getNativeBannerViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeBannerViewPlacementWrapper;->nativeBannerViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method
