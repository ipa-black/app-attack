.class Lcom/bytedance/sdk/openadsdk/activity/cJ$2;
.super Ljava/lang/Object;
.source "AdSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    .line 472
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method
