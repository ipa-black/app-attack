.class Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;
.super Ljava/lang/Object;
.source "RewardFullTypeDoubleAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->pM()V

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->jPH:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Eh()V

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ()V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Tgh()Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;->hpZ()V

    :cond_1
    return-void
.end method
