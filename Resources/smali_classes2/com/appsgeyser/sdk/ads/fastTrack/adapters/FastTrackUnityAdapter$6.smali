.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;
.super Ljava/lang/Object;
.source "FastTrackUnityAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->loadFullscreen()V
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

    .line 259
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onUnityAdsAdLoaded$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackUnityAdapter$6(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .locals 3

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    const-string p1, "fastTrackTag"

    const-string v0, "progressDialog dismissal IAE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$800(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v1}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    .line 277
    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$900(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Lcom/unity3d/ads/IUnityAdsShowListener;

    move-result-object v2

    .line 276
    invoke-static {p1, v0, v1, v2}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    return-void
.end method

.method synthetic lambda$onUnityAdsFailedToLoad$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackUnityAdapter$6()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->loadFullscreen()V

    return-void
.end method

.method public onUnityAdsAdLoaded(Ljava/lang/String;)V
    .locals 5

    .line 263
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$602(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;Z)Z

    .line 264
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-boolean p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->pendingFullscreenRequest:Z

    const-string v0, "fastTrackTag"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-boolean p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->isInForeground:Z

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->pendingFullscreenRequest:Z

    .line 266
    const-string p1, "unity fullscreen loaded, pending request processing"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$700(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 269
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 270
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_0
    const-string p1, "unity fs onUnityAdsAdLoaded"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .locals 4

    .line 285
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->NO_FILL:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    const/4 v0, 0x1

    const-string v1, "fs id: "

    const-string v2, "details"

    if-ne p2, p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->context:Landroid/content/Context;

    .line 288
    const-string v3, "ft_interstitial_sdk_nofill"

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; error_desc: error message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->context:Landroid/content/Context;

    .line 294
    const-string v3, "ft_interstitial_sdk_error"

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 297
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackUnityAdapter$6;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unity fs onUnityAdsFailedToLoad "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    const-string p2, "fastTrackTag"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
