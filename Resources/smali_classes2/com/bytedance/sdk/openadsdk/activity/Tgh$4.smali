.class Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;
.super Ljava/lang/Object;
.source "RewardAdScene.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Qhi:Z

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ABk()V

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    .line 551
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method

.method public Qhi(JI)V
    .locals 4

    .line 463
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->Qhi:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 466
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->Qhi:Z

    .line 467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 468
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ABk()V

    .line 469
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JJ)V

    .line 473
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YAV()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 475
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 476
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V

    .line 478
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ()Z

    move-result p1

    if-nez p1, :cond_3

    .line 479
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Z)V

    .line 480
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V

    .line 482
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p2, v0

    iput p2, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->fl:I

    .line 484
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    const/4 p2, 0x5

    if-eqz p1, :cond_4

    .line 485
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object p1

    .line 486
    iput-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->CJ:Z

    .line 487
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void

    .line 490
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_0

    .line 497
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hpZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_6

    .line 498
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi(Z)V

    .line 499
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    return-void

    .line 505
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    const-string v1, "skip"

    if-eqz p1, :cond_8

    .line 506
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TGC()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 507
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    return-void

    .line 509
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(ZI)V

    .line 510
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 511
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    return-void

    .line 515
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TGC()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 516
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    return-void

    .line 518
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 519
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    .line 522
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->CQU()V

    :cond_b
    return-void

    .line 491
    :cond_c
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(ZI)V

    .line 492
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_d

    .line 493
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    const-wide/16 p2, 0x0

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    :cond_d
    return-void
.end method

.method public Qhi(JJ)V
    .locals 9

    .line 562
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ABk()V

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JJ)V

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-double v5, v3

    sub-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v7

    sub-double/2addr v7, v5

    double-to-int v2, v7

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    long-to-int v0, v3

    .line 586
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->WAv(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 590
    :goto_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 591
    :cond_5
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 592
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    .line 597
    :cond_6
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->CJ(I)V

    .line 599
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(JJ)V

    .line 601
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {v5, p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(F)V

    .line 603
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    if-lez p1, :cond_8

    .line 604
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    if-eqz v4, :cond_7

    if-lt v0, v2, :cond_7

    .line 607
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi(Z)V

    .line 608
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 609
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    return-void

    .line 611
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public cJ(JI)V
    .locals 0

    .line 533
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 535
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 537
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->fl()V

    return-void

    .line 540
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    .line 541
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    .line 543
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method
