.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;
.super Ljava/lang/Object;
.source "RewardFullExpressManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi([FLcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->c_()V

    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result p1

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Z)V

    .line 162
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl()V

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->fl()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ABk()V

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result p1

    if-nez p1, :cond_3

    .line 183
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Z)V

    .line 185
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ(Z)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ(Z)V

    .line 190
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(I)V

    .line 191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Z)V

    .line 192
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl()V

    .line 195
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->cJ()Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p2

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Tgh()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Landroid/widget/FrameLayout;)V

    goto :goto_1

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cjC:Z

    .line 204
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pM()V

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;

    if-eqz p1, :cond_4

    .line 207
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p2

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p3

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLjava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Sf()Z

    move-result p1

    if-nez p1, :cond_4

    .line 210
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Tgh()V

    .line 213
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$2;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ABk()V

    return-void
.end method
