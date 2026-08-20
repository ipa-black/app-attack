.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;
.super Ljava/lang/Object;
.source "FastTrackAppodealAdapter.java"

# interfaces
.implements Lcom/appodeal/ads/InterstitialCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->loadFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onInterstitialFailedToLoad$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppodealAdapter$2()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->loadFullscreen()V

    return-void
.end method

.method synthetic lambda$onInterstitialLoaded$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppodealAdapter$2(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .locals 3

    .line 177
    const-string v0, "fastTrackTag"

    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    const-string p1, "progressDialog dismissal IAE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;)Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/appodeal/ads/Appodeal;->show(Landroid/app/Activity;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appodeal activity pass fail: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onInterstitialClicked()V
    .locals 5

    .line 219
    const-string v0, "fastTrackTag"

    const-string v1, "appodeal fullscreen onInterstitialClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 221
    const-string v4, "ft_interstitial_sdk_click"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    return-void
.end method

.method public onInterstitialClosed()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->loadFullscreen()V

    .line 228
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    const-string v0, "progressDialog dismissal IAE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onClose()V

    .line 238
    :cond_1
    const-string v0, "appodeal fullscreen onInterstitialClosed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterstitialExpired()V
    .locals 2

    .line 243
    const-string v0, "fastTrackTag"

    const-string v1, "appodeal fullscreen onInterstitialExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterstitialFailedToLoad()V
    .locals 5

    .line 194
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 195
    const-string v4, "ft_interstitial_sdk_nofill"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 197
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    const-string v0, "fastTrackTag"

    const-string v1, "appodeal fullscreen onInterstitialFailedToLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterstitialLoaded(Z)V
    .locals 5

    .line 169
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-boolean p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->pendingFullscreenRequest:Z

    const-string v0, "fastTrackTag"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-boolean p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->isInForeground:Z

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->pendingFullscreenRequest:Z

    .line 171
    const-string p1, "appodeal fullscreen loaded, pending request processing"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 174
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 175
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_0
    const-string p1, "appodeal fullscreen onInterstitialLoaded"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterstitialShowFailed()V
    .locals 2

    .line 214
    const-string v0, "fastTrackTag"

    const-string v1, "appodeal fullscreen onInterstitialShowFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterstitialShown()V
    .locals 5

    .line 203
    const-string v0, "fastTrackTag"

    const-string v1, "appodeal fullscreen onInterstitialShown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 205
    const-string v4, "ft_interstitial_sdk_impression"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppodealAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onShow()V

    :cond_0
    return-void
.end method
