.class Lcom/bytedance/sdk/openadsdk/activity/fl$1;
.super Ljava/lang/Object;
.source "FullscreenAdScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/fl;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/fl;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dww()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ABk()Z

    move-result p1

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl(Z)V

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x258

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YCN()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    if-eqz p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 142
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->fl()Z

    move-result p1

    goto :goto_0

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result p1

    if-nez p1, :cond_4

    .line 145
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA()Z

    move-result p1

    if-nez p1, :cond_4

    .line 146
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 147
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 148
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 151
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    return-void

    .line 162
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CQU()V

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Gm()V

    .line 164
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/fl;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Tgh()V

    .line 165
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/fl$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/fl;->CQU()V

    return-void
.end method
