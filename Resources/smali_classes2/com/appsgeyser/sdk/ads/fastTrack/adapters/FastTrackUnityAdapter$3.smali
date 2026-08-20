.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;
.super Ljava/lang/Object;
.source "FastTrackUnityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "unity banner attempt to load"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "banner id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "uniqid"

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 174
    const-string v4, "ft_banner_sdk_request"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 176
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->load()V

    .line 177
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$402(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;Z)Z

    .line 178
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 180
    :cond_0
    const-string v0, "unity banner attempt to load failed: bannerView null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
