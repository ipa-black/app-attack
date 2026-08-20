.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;
.source "RewardFullWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/zc;Z)V
    .locals 6

    .line 609
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

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
    .locals 0

    .line 713
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 717
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz p1, :cond_0

    .line 718
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Tgh()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 724
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 725
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz p1, :cond_0

    .line 726
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->fl()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    .line 620
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iput p2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh:I

    .line 621
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iput-object p3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_1

    .line 625
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 627
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 628
    const-string v1, "msg"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :catch_0
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 646
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    .line 651
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_2

    .line 653
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_1

    .line 656
    const-string v1, "code"

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 657
    const-string v1, "msg"

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    if-eqz p3, :cond_3

    .line 668
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh:I

    .line 669
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR:Ljava/lang/String;

    :cond_3
    if-nez p2, :cond_4

    return-void

    .line 674
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 683
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    if-eqz p3, :cond_0

    .line 686
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh:I

    .line 687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const-string v1, "onReceivedHttpError"

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR:Ljava/lang/String;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_2

    .line 692
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_1

    .line 695
    const-string v1, "code"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 696
    const-string v1, "msg"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    if-eqz p2, :cond_3

    .line 707
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_3
    return-void
.end method
