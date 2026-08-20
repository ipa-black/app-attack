.class Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;
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
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/common/cJ;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/common/cJ;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 377
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 378
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->kYc(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->kYc(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 380
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->tP(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->tP(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/common/LandingPageLoadingLayout;->Qhi(I)V

    :cond_1
    return-void
.end method
