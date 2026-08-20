.class Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;
.super Lcom/bykv/vk/openvk/component/video/api/fl/cJ;
.source "FullScreenVideoLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/pA;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/utils/Jma;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/pA;

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

.field final synthetic Tgh:Z

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic cJ:Z

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;Lcom/bytedance/sdk/openadsdk/component/reward/pA;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;Z)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/pA;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->cJ:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->Tgh:Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/api/fl/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V
    .locals 1

    .line 352
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->cJ()V

    .line 353
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->cJ:Z

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->Tgh:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/pA;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/ROR;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    :cond_2
    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V
    .locals 1

    .line 370
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->Tgh:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$5;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$cJ;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
