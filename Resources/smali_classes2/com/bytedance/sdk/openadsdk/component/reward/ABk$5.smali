.class Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;
.super Lcom/bykv/vk/openvk/component/video/api/fl/cJ;
.source "RewardVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

.field final synthetic Tgh:Z

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic cJ:Z

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Z)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->cJ:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->Tgh:Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/api/fl/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 1

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->cJ()V

    .line 318
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->cJ:Z

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->Tgh:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    .locals 1

    .line 334
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->Tgh:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
