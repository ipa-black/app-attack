.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$9;
.super Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;
.source "RewardFullWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/common/cJ;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V
    .locals 0

    .line 1352
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$9;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$9;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/common/cJ;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1355
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/fl;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 1356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$9;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;

    if-eqz v0, :cond_0

    .line 1357
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;->Qhi(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method
