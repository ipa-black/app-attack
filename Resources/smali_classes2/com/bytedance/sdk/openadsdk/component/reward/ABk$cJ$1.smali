.class Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ$1;
.super Lcom/bykv/vk/openvk/component/video/api/fl/cJ;
.source "RewardVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/api/fl/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 1

    .line 505
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    .locals 0

    return-void
.end method
