.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$3;
.super Ljava/lang/Object;
.source "FastTrackMultiAdsAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;)Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;)Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenManager;->unityInitCompleted()V

    :cond_0
    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
