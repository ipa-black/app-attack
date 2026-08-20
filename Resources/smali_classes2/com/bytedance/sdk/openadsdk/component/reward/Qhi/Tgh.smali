.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;
.super Ljava/lang/Object;
.source "RewardFullEndCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;
    }
.end annotation


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field private ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    return-void
.end method

.method private ROR()I
    .locals 6

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->vml()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x1388

    if-gt v0, v2, :cond_4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_1

    add-int/lit16 v0, v0, 0x3e8

    .line 381
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(I)I

    move-result v4

    if-gt v4, v2, :cond_4

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    if-ge v4, v3, :cond_3

    add-int/lit16 v4, v4, 0x3e8

    .line 390
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private Sf()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->zc(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->cJ(Z)V

    .line 400
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lB:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/WAv/hm;->Qhi(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public CJ()V
    .locals 1

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(Z)V

    return-void
.end method

.method public Qhi()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi()V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;

    return-void
.end method

.method Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(F)V

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(F)V

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(I)V

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(I)V

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->yN()V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(I)V

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(I)V

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->ROR()V

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->iMK:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 268
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ac(I)V

    .line 273
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ROR()V

    .line 274
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v2, 0x320

    invoke-virtual {p1, v2, v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v2, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->dIT:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(ZZ)V

    .line 280
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac(Z)V

    .line 281
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Z)V

    .line 283
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->WAv()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 285
    const-string v0, "prerender_page_show"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/16 v2, 0x198

    const-string v3, "end_card_timeout"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(ZILjava/lang/String;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NFd()V

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(I)V

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Qhi(I)V

    .line 422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->iMK:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;I)V

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->fl(I)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ac(I)V

    .line 427
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_3

    .line 434
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Tgh()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->Qhi(I)V

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->cJ()V

    .line 438
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ROR()V

    if-eqz p1, :cond_5

    .line 440
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ReL:Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z

    .line 442
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 443
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Z)V

    return-void
.end method

.method public Qhi(ZZZLcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v10, p4

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showEndCard() called with: isSkip = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], force = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], isFromLandingPage = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mAdType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_24

    if-nez v10, :cond_0

    goto/16 :goto_6

    .line 83
    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->zc()V

    const/4 v11, 0x1

    if-eqz v4, :cond_1

    .line 85
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    :cond_1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->EGK:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->hpZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 88
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->HzH:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    .line 89
    :cond_2
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    return-void

    .line 92
    :cond_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    :cond_4
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 94
    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    return-void

    .line 99
    :cond_5
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 103
    :cond_6
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    .line 106
    :cond_7
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_a

    .line 108
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v1, :cond_8

    .line 109
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 110
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getBrandBannerController()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    move-result-object v13

    :cond_8
    if-eqz v13, :cond_9

    .line 113
    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ()V

    .line 115
    :cond_9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 119
    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;

    if-eqz v1, :cond_b

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 120
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;->Qhi(ZZZLcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;I)V

    return-void

    .line 124
    :cond_b
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ABk()V

    .line 125
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pM()V

    .line 126
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Gm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->sDy:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ac;->Qhi()V

    .line 130
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ROR:Z

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->rB()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v11

    goto :goto_0

    :cond_c
    move v2, v12

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->Qhi(Z)V

    .line 132
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 138
    :cond_d
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eqz v1, :cond_10

    .line 139
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 141
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js()Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v11

    goto :goto_1

    .line 144
    :cond_e
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->HzH()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v14

    goto :goto_1

    :cond_f
    move v1, v15

    .line 150
    :goto_1
    const-string v2, "webview_state"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ZZZZILjava/util/Map;)V

    .line 153
    :cond_10
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v9, :cond_11

    .line 154
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 156
    :cond_11
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 157
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 160
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Sf()V

    .line 163
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    .line 170
    :cond_13
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->kYc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->iMK()V

    .line 172
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 173
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    goto :goto_2

    .line 175
    :cond_14
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 177
    :goto_2
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->ac(Z)V

    .line 178
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v9, :cond_15

    .line 179
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 181
    :cond_15
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Eh()V

    .line 182
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    if-eqz v1, :cond_16

    .line 183
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->pA:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ()V

    .line 185
    :cond_16
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->ac()V

    .line 186
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v1, :cond_17

    .line 187
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Tgh()V

    .line 190
    :cond_17
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 191
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/cJ/cJ$Qhi;->ac:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Z

    return-void

    .line 194
    :cond_18
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    if-eqz v1, :cond_19

    .line 195
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->Tgh()V

    .line 198
    :cond_19
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 199
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->es()Z

    move-result v1

    if-nez v1, :cond_23

    :cond_1a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 200
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ()Z

    move-result v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->CJ()Z

    move-result v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->zc()Z

    move-result v4

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->aP()Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZZZZ)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_5

    .line 205
    :cond_1b
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 207
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1, v11, v12, v13}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(ZILjava/lang/String;)V

    .line 212
    :cond_1c
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 213
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js()Z

    move-result v1

    if-nez v1, :cond_20

    .line 214
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 218
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ()Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 219
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ()Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(I)V

    .line 222
    :cond_1d
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Sf()V

    goto :goto_3

    .line 227
    :cond_1e
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ()Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 228
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ()Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(I)V

    .line 231
    :cond_1f
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->hm()V

    .line 232
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 234
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->aP:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->fl()Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V

    :goto_3
    return-void

    .line 237
    :cond_20
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->js()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 238
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ()Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 239
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->MQ()Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(I)V

    .line 242
    :cond_21
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    goto :goto_4

    .line 245
    :cond_22
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z

    .line 250
    :goto_4
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V

    return-void

    .line 201
    :cond_23
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->CJ()V

    :cond_24
    :goto_6
    return-void
.end method

.method public Tgh()Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh$Qhi;

    return-object v0
.end method

.method public ac()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->CJ()V

    return-void
.end method

.method public ac(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)Z
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->ROR()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    .line 336
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->hpZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Dww()V

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    :goto_0
    move p1, v3

    goto :goto_2

    .line 345
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    if-ltz p1, :cond_2

    .line 346
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->qMt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 347
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x2bc

    .line 348
    iput v0, p1, Landroid/os/Message;->what:I

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessage(Landroid/os/Message;)Z

    .line 352
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    move p1, v1

    .line 356
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dww()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, p1

    :goto_3
    if-eqz v1, :cond_4

    .line 360
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_4

    .line 361
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Sf:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    :cond_4
    return v3

    :cond_5
    return v1
.end method

.method public cJ()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->ac()V

    return-void
.end method

.method public cJ(Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;)V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Wrw()I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->TKG()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 298
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->Dww()V

    goto :goto_1

    .line 307
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/cJ/cJ;->pA()V

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_6

    .line 311
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->js:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/zc;->CJ(Z)V

    .line 312
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    const/16 v1, 0x258

    if-eqz p1, :cond_5

    .line 313
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->hpZ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->HzH()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 314
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 318
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 321
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->xyz:Lcom/bytedance/sdk/component/utils/CQU;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_6

    .line 326
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->gga:Lcom/bytedance/sdk/openadsdk/utils/zc;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    :cond_6
    :goto_1
    return-void
.end method

.method public fl()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/cJ;->fl()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
