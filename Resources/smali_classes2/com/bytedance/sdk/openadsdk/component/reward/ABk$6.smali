.class Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/zc$Qhi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

.field final synthetic Qhi:Z

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

.field final synthetic Tgh:Z

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

.field final synthetic fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;ZLcom/bytedance/sdk/openadsdk/component/reward/hpZ;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;Z)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->Tgh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 348
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->cJ()V

    .line 350
    :cond_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->Qhi:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_5

    .line 353
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/ABk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/ABk;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/zc;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->ac:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 357
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->Tgh:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    if-ne p1, p2, :cond_5

    .line 358
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/hpZ;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/hm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->Qhi(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    return-void

    .line 362
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->Tgh:Z

    if-nez p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->MQ()I

    move-result p1

    if-ne p1, p2, :cond_5

    .line 363
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$6;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;

    const/4 p2, -0x1

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ABk$ac;->onError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
