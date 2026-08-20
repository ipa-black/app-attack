.class Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;
.super Ljava/lang/Object;
.source "RewardAdScene.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/view/View;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/Tgh;Landroid/view/View;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->Qhi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CJ(Landroid/view/View;)V
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->Qhi:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 2

    .line 194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Em()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Gm()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 200
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V

    :cond_0
    return-void

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ac:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YCN()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result p1

    if-nez p1, :cond_2

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 207
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 215
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/Tgh;ZZ)V

    return-void
.end method

.method public ac(Landroid/view/View;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->sDy:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    return-void
.end method

.method public cJ(Landroid/view/View;)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->CJ()Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ$Qhi;->Qhi(Z)V

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "will set is Mute "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " mLastVolume="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rewarded_video"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 225
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ(Z)V

    .line 227
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->zc(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi(ZZ)V

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Z)V

    .line 236
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    if-eqz p1, :cond_4

    .line 237
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    if-eqz p1, :cond_3

    .line 238
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Sf(J)V

    return-void

    .line 240
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->hm(J)V

    :cond_4
    return-void
.end method
