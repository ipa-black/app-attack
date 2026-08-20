.class Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$2;
.super Ljava/lang/Object;
.source "RewardFullAdType.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->qMt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi()I

    move-result v0

    if-lez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi(Z)V

    :cond_0
    return-void
.end method
