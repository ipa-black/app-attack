.class Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;
.super Lcom/bykv/vk/openvk/component/video/api/fl/cJ;
.source "RewardVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

.field final synthetic cJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;ZLcom/bytedance/sdk/openadsdk/component/reward/hpZ;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->cJ:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/api/fl/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 0

    .line 197
    const-string p1, "RewardVideoLoadManager"

    const-string p2, "onVideoPreloadSuccess: "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->cJ:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->cJ:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
