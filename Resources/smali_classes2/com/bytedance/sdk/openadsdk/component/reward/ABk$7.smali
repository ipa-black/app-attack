.class Lcom/bytedance/sdk/openadsdk/component/reward/ABk$7;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/bxS$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ABk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$7;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/content/Context;Landroid/content/Intent;ZI)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$7;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)Lcom/bytedance/sdk/component/Sf/hm;

    move-result-object p1

    if-nez p1, :cond_1

    .line 458
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$7;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/cJ;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$7;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)Ljava/util/List;

    move-result-object p3

    const-string p4, "net connect task"

    invoke-direct {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/component/Sf/hm;)Lcom/bytedance/sdk/component/Sf/hm;

    .line 460
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Sf;->Qhi()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$7;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)Lcom/bytedance/sdk/component/Sf/hm;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
