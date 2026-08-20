.class Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;
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

    .line 292
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ABk()V

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method

.method public Qhi(JI)V
    .locals 2

    .line 300
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->Qhi:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 303
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->Qhi:Z

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ABk()V

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JJ)V

    .line 307
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->cJ(Z)V

    .line 308
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p1

    const/16 p2, 0x24

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->ac()Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->CJ()V

    .line 311
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->cJ()V

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ()Z

    move-result p1

    if-nez p1, :cond_2

    .line 315
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Z)V

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V

    .line 318
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    const/4 p2, 0x5

    if-eqz p1, :cond_3

    .line 319
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    goto/16 :goto_0

    .line 321
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    const-string v0, "skip"

    if-eqz p1, :cond_5

    .line 322
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TGC()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 323
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->hm()I

    move-result p1

    if-ne p1, p3, :cond_8

    .line 324
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    goto :goto_0

    .line 327
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(ZI)V

    .line 328
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 329
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    goto :goto_0

    .line 333
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TGC()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 334
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->hm()I

    move-result p1

    if-ne p1, p3, :cond_8

    .line 335
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    goto :goto_0

    .line 338
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 339
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, v0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    .line 342
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->CQU()V

    .line 346
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-int p2, p2

    iput p2, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->fl:I

    .line 347
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-nez p1, :cond_9

    .line 348
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    :cond_9
    return-void
.end method

.method public Qhi(JJ)V
    .locals 11

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ABk()V

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JJ)V

    .line 405
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Tgh:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->WAv(Ljava/lang/String;)I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-ltz v0, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    .line 407
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v7, p1, v7

    long-to-double v9, v7

    sub-double/2addr v5, v9

    double-to-int v5, v5

    iput v5, v4, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    long-to-int v4, v7

    .line 412
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 413
    :cond_5
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 414
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    .line 418
    :cond_6
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    const/4 v6, 0x0

    if-ltz v5, :cond_7

    .line 419
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget v7, v7, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 423
    :cond_7
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->CJ(I)V

    .line 425
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(JJ)V

    .line 426
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 427
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v5

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget v7, v7, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4, v3, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Qhi(Ljava/lang/CharSequence;IIZ)V

    .line 429
    :cond_8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(F)V

    .line 430
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    if-lez p1, :cond_a

    if-eqz v1, :cond_9

    if-lt v4, v0, :cond_9

    .line 432
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_9

    .line 433
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qhi(Z)V

    .line 434
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 435
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    return-void

    .line 437
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ROR:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public cJ(JI)V
    .locals 0

    .line 357
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 359
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->fl()V

    return-void

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    .line 365
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    .line 366
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Z)V

    .line 368
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method
