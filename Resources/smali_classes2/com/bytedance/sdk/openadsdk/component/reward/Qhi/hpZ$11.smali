.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$11;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$11;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 332
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$11;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->cJ()V

    .line 333
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    if-eqz p1, :cond_0

    .line 334
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->CJ()V

    :cond_0
    return-void
.end method
