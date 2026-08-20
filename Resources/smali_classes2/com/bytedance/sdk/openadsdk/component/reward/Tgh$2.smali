.class Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;
.super Lcom/bykv/vk/openvk/component/video/api/fl/cJ;
.source "FullScreenVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Lcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/component/reward/pA;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/reward/pA;

.field final synthetic cJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;ZLcom/bytedance/sdk/openadsdk/component/reward/pA;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->CJ:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->cJ:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/pA;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/api/fl/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->cJ:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/pA;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->cJ:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
