.class Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;
.source "LandingPageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V
    .locals 7

    .line 308
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 311
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 317
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 318
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->zc(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Gm()V

    .line 319
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/HzH;J)J

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->CJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 327
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v3

    .line 328
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Tgh:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->CJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 330
    const-string p1, "image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 331
    const-string p2, "mp4"

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-nez p1, :cond_4

    if-nez v2, :cond_4

    .line 332
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    .line 333
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    :cond_4
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    .line 342
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ABk(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->iMK(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I

    .line 353
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/fl/cJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->pA(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ABk(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/fl/cJ;->Qhi(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getWebResourceResponse()Landroid/webkit/WebResourceResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I

    .line 357
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getWebResourceResponse()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getMsg()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->HzH(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)I

    .line 362
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 365
    const-string v1, "LandingPageModel"

    const-string v2, "shouldInterceptRequest url error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
