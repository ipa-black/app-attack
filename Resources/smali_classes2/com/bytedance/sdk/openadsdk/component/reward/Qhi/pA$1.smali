.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA$1;
.super Ljava/lang/Object;
.source "RewardFullVideoPlayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pM()V

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(ILjava/lang/String;)V

    return-void
.end method
