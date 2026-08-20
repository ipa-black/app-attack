.class Lcom/bytedance/sdk/openadsdk/activity/fl$4;
.super Ljava/lang/Object;
.source "FullscreenAdScene.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/CJ/fl$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Qhi:Z

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/fl;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 538
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->ABk()V

    .line 539
    const-string v0, "fullscreen_interstitial_ad"

    const-string v1, "onTimeOut\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method

.method public Qhi(JI)V
    .locals 3

    .line 472
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->Qhi:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 475
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->Qhi:Z

    .line 476
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 477
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->ABk()V

    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JJ)V

    .line 479
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->tP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 480
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YAV()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 481
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 482
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V

    .line 484
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ()Z

    move-result p1

    if-nez p1, :cond_2

    .line 485
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Z)V

    .line 486
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V

    .line 489
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    const/4 p2, 0x5

    if-eqz p1, :cond_3

    .line 490
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object p1

    .line 491
    iput-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->CJ:Z

    .line 492
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/fl;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void

    .line 494
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    const-string v0, "skip"

    if-eqz p1, :cond_6

    .line 495
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TGC()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 496
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    return-void

    .line 498
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi(ZI)V

    .line 499
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_5

    .line 500
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    .line 502
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 503
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    return-void

    .line 507
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TGC()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 508
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    return-void

    .line 510
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 511
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    .line 514
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->CQU()V

    :cond_9
    return-void
.end method

.method public Qhi(JJ)V
    .locals 7

    .line 551
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 560
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->ABk()V

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JJ)V

    .line 565
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-double v5, v3

    sub-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl:I

    long-to-int v0, v3

    .line 570
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 571
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 572
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/fl;I)V

    .line 578
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi(F)V

    .line 580
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl:I

    if-ltz p1, :cond_5

    .line 581
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public cJ(JI)V
    .locals 0

    .line 523
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 525
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 527
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl()V

    return-void

    .line 530
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    .line 532
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$4;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method
