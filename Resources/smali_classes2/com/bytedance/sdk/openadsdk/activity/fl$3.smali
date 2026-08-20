.class Lcom/bytedance/sdk/openadsdk/activity/fl$3;
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

    .line 317
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->ABk()V

    .line 399
    const-string v0, "fullscreen_interstitial_ad"

    const-string v1, "onTimeOut\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method

.method public Qhi(JI)V
    .locals 2

    .line 325
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->Qhi:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 328
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->Qhi:Z

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->ABk()V

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JJ)V

    .line 332
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->cJ(Z)V

    .line 333
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p1

    const/16 p2, 0x24

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    if-eqz p1, :cond_1

    .line 335
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->ac()Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->CJ()V

    .line 336
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->cJ()V

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ()Z

    move-result p1

    if-nez p1, :cond_2

    .line 339
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Z)V

    .line 340
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    const/4 p2, 0x5

    if-eqz p1, :cond_3

    .line 344
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object p1

    .line 345
    iput-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->CJ:Z

    .line 346
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/fl;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void

    .line 348
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 349
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TGC()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 350
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->hm()I

    move-result p1

    if-ne p1, p3, :cond_7

    .line 351
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    return-void

    .line 354
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi(ZI)V

    .line 355
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 356
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    const-string p2, "skip"

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    return-void

    .line 361
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 362
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->CQU()V

    return-void

    .line 365
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 367
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Qhi(Ljava/lang/CharSequence;IIZ)V

    .line 369
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 370
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const-string v0, "X"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 371
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl(Z)V

    .line 372
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac()V

    :cond_7
    return-void
.end method

.method public Qhi(JJ)V
    .locals 7

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->ABk()V

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(JJ)V

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

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

    .line 434
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 435
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 436
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    .line 439
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 440
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->Qhi(Ljava/lang/CharSequence;IIZ)V

    .line 442
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi(F)V

    .line 443
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 445
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/fl;I)V

    .line 447
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl:I

    if-ltz p1, :cond_8

    .line 448
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 449
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public cJ(JI)V
    .locals 0

    .line 382
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    .line 383
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->fl()V

    return-void

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    .line 389
    const-string p1, "fullscreen_interstitial_ad"

    const-string p2, "onError\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "TTAD.AdScene"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Z)V

    .line 392
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/activity/fl;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/fl;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method
