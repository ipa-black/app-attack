.class public Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "RewardVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ABk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cJ"
.end annotation


# instance fields
.field final Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field final cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V
    .locals 1

    .line 483
    const-string v0, "Reward Task"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    .line 484
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 485
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 486
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v0

    .line 499
    const-string v1, "material_meta"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    const-string v1, "ad_slot"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk$cJ;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    :cond_1
    return-void
.end method
