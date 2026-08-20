.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;
.super Ljava/lang/Object;
.source "FastTrackMultiAdsAdapter.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->showFullscreen(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullscreenClicked()V
    .locals 0

    return-void
.end method

.method public onFullscreenClosed()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onClose()V

    :cond_0
    return-void
.end method

.method public onFullscreenError(Ljava/lang/String;)V
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_0
    return-void
.end method

.method public onFullscreenLoaded()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;)Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenManager;->showFullscreen(Landroid/content/Context;)V

    return-void
.end method

.method public onFullscreenOpened()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMultiAdsAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onShow()V

    :cond_0
    return-void
.end method
