.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;
.super Ljava/lang/Object;
.source "RewardFullDislikeManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    const-string v0, "landing_page"

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    .line 81
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    const-string v0, "playable"

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    const-string v0, "endcard"

    goto :goto_0

    .line 92
    :cond_3
    const-string v0, "video_player"

    .line 94
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeDialog;->setDislikeSource(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->fl:Z

    if-eqz p1, :cond_6

    .line 97
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz p1, :cond_5

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(IZ)V

    :cond_5
    return-void

    .line 102
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->hpZ()V

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->cJ()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 104
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->pA()V

    :cond_7
    return-void
.end method

.method public cJ(Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->fl:Z

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(IZ)V

    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->CJ()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->iMK()V

    :cond_2
    return-void
.end method
