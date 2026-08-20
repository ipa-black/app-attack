.class Lcom/bytedance/sdk/openadsdk/activity/ac$1;
.super Ljava/lang/Object;
.source "EndCardScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ac;->qMt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ac;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 161
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dww()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ABk()Z

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl(Z)V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v1, 0x258

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YCN()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 176
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    if-eqz p1, :cond_4

    .line 178
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 179
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->fl()Z

    move-result p1

    goto :goto_0

    .line 181
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result p1

    if-nez p1, :cond_4

    .line 182
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pA()Z

    move-result p1

    if-nez p1, :cond_4

    .line 183
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 184
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 185
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 188
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->HzH()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    return-void

    .line 201
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CQU()V

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Gm()V

    .line 203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Tgh()V

    .line 204
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ac;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    invoke-static {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ac;ZZ)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 209
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ac$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/ac;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ac;->CQU()V

    return-void
.end method
