.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;
.source "RewardFullPlayableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Landroid/webkit/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V
    .locals 6

    .line 391
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->fl(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loading_h5_success"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 423
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Z)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 414
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 415
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Z)Z

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 406
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf$6;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;Z)Z

    return-void
.end method
