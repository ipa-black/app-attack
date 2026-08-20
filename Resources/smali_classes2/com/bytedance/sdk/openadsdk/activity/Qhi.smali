.class public abstract Lcom/bytedance/sdk/openadsdk/activity/Qhi;
.super Lcom/bytedance/sdk/openadsdk/activity/ROR;
.source "AdScene.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;
.implements Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;
.implements Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;


# instance fields
.field private ABk:I

.field protected CJ:I

.field protected final Qhi:Lcom/bytedance/sdk/component/utils/CQU;

.field private ROR:Landroid/os/Bundle;

.field private Tgh:I

.field protected ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field protected cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

.field private final fl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private iMK:Z

.field private pA:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ROR;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    .line 50
    new-instance p1, Lcom/bytedance/sdk/component/utils/CQU;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 55
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Tgh:I

    .line 57
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ABk:I

    .line 58
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->iMK:Z

    return-void
.end method

.method private EBS()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Lcom/bytedance/sdk/component/utils/CQU;)V

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Gm()V

    return-void
.end method

.method private NFd()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->zc:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;)V

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->aP()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->CJ:I

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->fl()Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;)V

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->CJ()Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac()V

    .line 160
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->lG()V

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Qhi(J)V

    :cond_1
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/activity/Qhi;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Tgh:I

    return p0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->hm:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_show_order"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/os/Bundle;)V
    .locals 8

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Dww()Landroid/app/Activity;

    move-result-object v6

    .line 103
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, v6

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/CQU;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;I)V

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi()Z

    move-result v0

    iput-boolean v0, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR()Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ri:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH()Lcom/bytedance/sdk/openadsdk/WAv/hm;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    .line 108
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {v1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Landroid/content/Intent;Landroid/os/Bundle;)V

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/cJ;->Qhi(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    .line 112
    const-string v1, "start_show_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 113
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(J)V

    :cond_0
    if-eqz p2, :cond_1

    .line 116
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zjb:Z

    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ()V

    .line 120
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    .line 122
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;)V

    .line 123
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz p2, :cond_2

    .line 124
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/Qhi$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Qhi;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;)V

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR()Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "init: mAdType = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private lB()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->iMK:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->iMK:Z

    .line 243
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi()Landroid/view/View;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/Qhi$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Qhi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private lG()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 264
    sget v1, Lcom/bytedance/sdk/openadsdk/cJ/cJ$cJ;->ac:I

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(ZI)V

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Tgh()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Landroid/widget/FrameLayout;)V

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pM()V

    :cond_1
    return-void
.end method

.method private sDy()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected final ABk()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->removeMessages(I)V

    return-void
.end method

.method public final CJ()V
    .locals 4

    .line 298
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->aP()V

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wI()V

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Z)V

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gSh()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final CJ(Landroid/app/Activity;)V
    .locals 1

    .line 349
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->CJ(Landroid/app/Activity;)V

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy()V

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method public final Gm()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi()V

    return-void
.end method

.method public HzH()V
    .locals 1

    .line 423
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->HzH()V

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->bxS()V

    :cond_0
    return-void
.end method

.method protected MQ()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->MND:Ljava/lang/String;

    return-object v0
.end method

.method public final Qhi()Landroid/view/View;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    return-object v0
.end method

.method public Qhi(F)V
    .locals 3

    .line 460
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(F)V

    .line 466
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->pA:Z

    if-nez v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->yt()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->pA:Z

    .line 471
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Sf()Lcom/bytedance/sdk/openadsdk/activity/ROR;

    move-result-object p1

    .line 472
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    if-eqz v0, :cond_1

    .line 473
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->kYc()V

    :cond_1
    return-void
.end method

.method public Qhi(I)V
    .locals 0

    return-void
.end method

.method public Qhi(Landroid/app/Activity;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Landroid/app/Activity;)V

    .line 193
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi()V

    return-void
.end method

.method public final Qhi(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ROR:Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(Landroid/os/Bundle;)V

    return-void
.end method

.method public Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 1

    .line 79
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->SL()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Tgh:I

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ROR:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/os/Bundle;)V

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->hm:I

    if-lez p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->ac:Z

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    .line 87
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->EBS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->NFd()V

    return-void

    :catchall_0
    move-exception p1

    .line 89
    const-string p2, "TTAD.AdScene"

    const-string v0, "onCreate: "

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->cJ()V

    .line 91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->CQU()V

    return-void
.end method

.method public abstract Qhi(Landroid/os/Bundle;)V
.end method

.method public final Qhi(Landroid/os/Message;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Qhi(Landroid/os/Message;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 2

    .line 431
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    if-ne p1, p0, :cond_3

    .line 434
    instance-of p1, p2, Lcom/bytedance/sdk/openadsdk/activity/ac;

    if-eqz p1, :cond_3

    .line 435
    iget p1, p3, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->cJ:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 436
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Eh()Z

    move-result p3

    xor-int/2addr p3, v1

    const/4 v0, 0x2

    invoke-virtual {p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(II)V

    goto :goto_0

    .line 437
    :cond_0
    iget p1, p3, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->cJ:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 438
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Eh()Z

    move-result p3

    xor-int/2addr p3, v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Eh()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(II)V

    goto :goto_0

    .line 439
    :cond_1
    iget p1, p3, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->cJ:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 440
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p3, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->CJ:Z

    if-eqz p1, :cond_2

    .line 441
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    const-string p3, "skip"

    invoke-virtual {p1, p3, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Ljava/lang/String;Z)V

    .line 445
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Z)V

    .line 446
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 449
    :cond_3
    iget p1, p2, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    if-nez p1, :cond_4

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->hm:I

    if-eqz p1, :cond_4

    .line 451
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gy()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 454
    const-string p3, "price"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final Qhi(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(ZZI)V

    return-void
.end method

.method public final Qhi(ZZI)V
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(ZZZLcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;I)V

    return-void
.end method

.method public Qhi(ZZZLcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;I)V
    .locals 0

    .line 407
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(ZZZI)V

    return-void
.end method

.method protected abstract ROR()V
.end method

.method public final Sf()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->ABk()V

    return-void
.end method

.method public final Tgh()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->fl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    const-string v0, "invoke callback onShow, "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BVA"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ROR()V

    return-void
.end method

.method public final WAv()Landroid/view/View;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->sDy()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract ac()V
.end method

.method public ac(Landroid/app/Activity;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->ac(Landroid/app/Activity;)V

    .line 255
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez p1, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->qMt()V

    return-void
.end method

.method protected cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;
    .locals 1

    .line 511
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;-><init>(I)V

    .line 512
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    iput-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->ac:Z

    return-object v0
.end method

.method protected abstract cJ()V
.end method

.method public final cJ(Landroid/app/Activity;)V
    .locals 3

    .line 201
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->cJ(Landroid/app/Activity;)V

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->HzH()V

    .line 206
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Qe:Z

    .line 207
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->cJ(Lcom/bytedance/sdk/component/utils/CQU;)V

    .line 209
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->sDy()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->rB()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Z)V

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA()V

    .line 214
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ()V

    .line 215
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->ABk()V

    .line 217
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->cJ()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 218
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    .line 219
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ABk:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1, v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi(ZLcom/bytedance/sdk/openadsdk/core/video/ac/cJ;Z)V

    .line 222
    :cond_3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ABk:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ABk:I

    .line 224
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->lB()V

    .line 225
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz p1, :cond_4

    .line 226
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->ROR()V

    .line 228
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Eh:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/component/utils/CQU;)V

    .line 229
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->tP()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected final fl()V
    .locals 4

    .line 312
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x190

    .line 313
    iput v1, v0, Landroid/os/Message;->what:I

    .line 315
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2710

    .line 316
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(I)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi:Lcom/bytedance/sdk/component/utils/CQU;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final fl(Landroid/app/Activity;)V
    .locals 0

    .line 359
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->fl(Landroid/app/Activity;)V

    .line 360
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez p1, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->MQ()V

    return-void
.end method

.method public final hm()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->NFd()V

    return-void
.end method

.method public hpZ()V
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl()Lcom/bytedance/sdk/openadsdk/activity/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->fl()V

    :cond_0
    return-void
.end method

.method public iMK()V
    .locals 0

    return-void
.end method

.method public kYc()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/Qhi/cJ;->Qhi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    move-result-object v0

    .line 481
    const-string v1, "material_meta"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    const-string v2, "ad_slot"

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Qhi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/Qhi$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Qhi;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    return-void
.end method

.method public pA()V
    .locals 1

    .line 398
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->pA()V

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->EBS()V

    return-void
.end method

.method public qMt()V
    .locals 2

    .line 517
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/cJ/cJ$cJ;->cJ:I

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->cJ(I)Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method

.method public tP()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Dww()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zc()V
    .locals 0

    return-void
.end method
