.class Lcom/bytedance/sdk/openadsdk/activity/ac$2;
.super Ljava/lang/Object;
.source "EndCardScene.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ac;->qMt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/view/View;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ac;Landroid/view/View;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->Qhi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CJ(Landroid/view/View;)V
    .locals 0

    .line 286
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->Qhi:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 2

    .line 222
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ac;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 229
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->tP()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(I)V

    return-void

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR()V

    return-void

    .line 237
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 238
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hpZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 249
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ac;->CQU()V

    return-void

    .line 242
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->tP()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 243
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->cJ(I)V

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ac;->CQU()V

    return-void
.end method

.method public ac(Landroid/view/View;)V
    .locals 1

    .line 281
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->sDy:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    return-void
.end method

.method public cJ(Landroid/view/View;)V
    .locals 2

    .line 254
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;->Qhi(Z)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "will set is Mute "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mLastVolume="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rewarded_video"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 259
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Z)V

    .line 261
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->zc(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi(ZZ)V

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Z)V

    .line 270
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    if-eqz p1, :cond_4

    .line 271
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    if-eqz p1, :cond_3

    .line 272
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Sf(J)V

    return-void

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->hm(J)V

    :cond_4
    return-void
.end method
