.class Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;
.super Ljava/lang/Object;
.source "FastTrackAdsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerViewPlacementWrapper"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field bannerViewContainer:Landroid/view/ViewGroup;

.field placementTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Landroid/view/ViewGroup;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 352
    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->placementTag:Ljava/lang/String;

    .line 353
    iput-object p4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method getBannerViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->bannerViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getPlacementTag()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->placementTag:Ljava/lang/String;

    return-object v0
.end method
