.class Lcom/bytedance/sdk/openadsdk/activity/Qhi$2;
.super Ljava/lang/Object;
.source "AdScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/Qhi;->lB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/Qhi;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->NFd:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/Qhi;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(I)[F

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi$2;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi([FLcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    return-void
.end method
