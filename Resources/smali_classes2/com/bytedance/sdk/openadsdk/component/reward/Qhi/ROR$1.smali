.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;
.super Ljava/lang/Object;
.source "RewardFullExpressManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;


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

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CJ()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->CJ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->fl()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ()Z

    const/4 v0, 0x3

    return v0
.end method

.method public Qhi()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ()V

    return-void
.end method

.method public Qhi(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->zc()V

    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V

    return-void

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pM()V

    return-void

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 87
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Qhi(JZ)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    if-eq v0, p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->fl()V

    :cond_0
    return-void
.end method

.method public ac()J
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Sf()J

    move-result-wide v0

    return-wide v0
.end method

.method public cJ()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->WAv()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public cJ(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iput p1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->YB:I

    return-void
.end method

.method public fl()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->sDy:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ROR$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    return-void
.end method
