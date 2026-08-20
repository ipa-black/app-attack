.class public Lcom/bytedance/sdk/openadsdk/activity/cJ;
.super Ljava/lang/Object;
.source "AdSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/cJ$Qhi;,
        Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;,
        Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;,
        Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;
    }
.end annotation


# static fields
.field private static ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

.field private static cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;


# instance fields
.field private ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

.field private final CJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/activity/ROR;",
            ">;"
        }
    .end annotation
.end field

.field private CQU:Ljava/lang/Runnable;

.field private Dww:I

.field private EBS:Z

.field private Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

.field private HzH:I

.field private MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

.field public Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

.field private ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

.field private Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

.field private final Tgh:Landroid/os/Bundle;

.field private WAv:Landroid/app/Activity;

.field private bxS:Z

.field private final fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private hm:Z

.field private hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

.field private iMK:Lcom/bytedance/sdk/openadsdk/activity/ac;

.field private kYc:Landroid/os/Bundle;

.field private pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

.field private final pM:Lcom/bytedance/sdk/openadsdk/WAv/hm;

.field private qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

.field private tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

.field private zc:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Tgh:Landroid/os/Bundle;

    .line 89
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    .line 95
    new-instance v0, Lcom/bytedance/sdk/openadsdk/WAv/hm;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/WAv/hm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pM:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    .line 99
    instance-of v0, p2, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 100
    move-object v0, p2

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->XJ()Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm()Z

    move-result v2

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm:Z

    if-eqz v2, :cond_1

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->gT()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm:Z

    .line 111
    :cond_0
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm:Z

    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 115
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)Lcom/bytedance/sdk/openadsdk/activity/ROR;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Dww:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Dww:I

    move v1, v4

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p2, v1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)Lcom/bytedance/sdk/openadsdk/activity/ROR;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 129
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->iMK(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 133
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/cJ$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ROR;->Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/ROR$Qhi;)Lcom/bytedance/sdk/openadsdk/utils/zc;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

    :cond_4
    return-void

    .line 131
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ac;

    invoke-direct {v0, p0, p2, v1}, Lcom/bytedance/sdk/openadsdk/activity/ac;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP()Z

    move-result p0

    return p0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)Lcom/bytedance/sdk/openadsdk/activity/ROR;
    .locals 2

    .line 159
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LpL()Z

    move-result v0

    .line 160
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-object v0

    .line 167
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/fl;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/fl;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    return-object p0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 7

    .line 295
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 296
    instance-of v0, p2, Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    if-eqz v0, :cond_4

    .line 297
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->zc:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->zc:I

    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(F)V

    .line 300
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    if-nez v2, :cond_1

    .line 301
    instance-of v2, p2, Lcom/bytedance/sdk/openadsdk/activity/fl;

    if-eqz v2, :cond_0

    .line 302
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/cJ$Qhi;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-direct {v2, p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/activity/cJ$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    goto :goto_0

    .line 304
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-direct {v2, p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/activity/cJ$ac;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    .line 309
    :cond_1
    :goto_0
    iget v2, p2, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 310
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 311
    instance-of v5, v4, Lcom/bytedance/sdk/openadsdk/activity/ac;

    if-nez v5, :cond_3

    .line 314
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v4

    if-eqz v4, :cond_2

    int-to-double v5, v3

    .line 316
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v3

    add-double/2addr v5, v3

    double-to-int v3, v5

    goto :goto_2

    :cond_2
    int-to-long v3, v3

    const-wide/16 v5, 0xa

    add-long/2addr v3, v5

    long-to-int v3, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Qhi(I)V

    .line 322
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz v2, :cond_9

    if-nez p1, :cond_9

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 323
    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi(J)V

    goto :goto_3

    .line 325
    :cond_4
    instance-of v2, p2, Lcom/bytedance/sdk/openadsdk/activity/ac;

    if-eqz v2, :cond_9

    .line 327
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 328
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ROR(Landroid/view/View;)V

    .line 329
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    .line 332
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v2, :cond_6

    .line 336
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ROR(Landroid/view/View;)V

    .line 337
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getITopLayout()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ROR(Landroid/view/View;)V

    .line 338
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    .line 340
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    if-eqz v2, :cond_7

    .line 341
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->ac()V

    .line 345
    :cond_7
    instance-of v2, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    if-eqz v2, :cond_8

    .line 346
    move-object v2, p1

    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    .line 349
    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz v2, :cond_9

    .line 350
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/utils/zc;->ac()V

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 354
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    const-string v2, "tt_multiple_ad_indicator"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/MQ;->cJ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 355
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    iget v4, p2, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Dww:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 357
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setVisibility(I)V

    :cond_b
    :goto_4
    if-eqz p1, :cond_c

    .line 361
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/ROR;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 364
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->kYc:Landroid/os/Bundle;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 365
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_11

    const/4 p3, 0x3

    if-eq p1, p3, :cond_10

    const/4 p3, 0x4

    if-eq p1, p3, :cond_f

    const/4 p3, 0x5

    if-eq p1, p3, :cond_e

    goto :goto_6

    .line 377
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->ac(Landroid/app/Activity;)V

    :goto_6
    return-void

    .line 374
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->fl(Landroid/app/Activity;)V

    return-void

    .line 370
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->CJ(Landroid/app/Activity;)V

    .line 371
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->cJ(Landroid/app/Activity;)V

    return-void

    .line 367
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->CJ(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ()I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 235
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 236
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 237
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/ROR;

    :cond_2
    if-nez p1, :cond_3

    .line 240
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;)V

    return-void

    .line 250
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v2, :cond_6

    if-ne v2, p1, :cond_4

    return-void

    .line 254
    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->fl(Landroid/app/Activity;)V

    .line 255
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->ac(Landroid/app/Activity;)V

    .line 257
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 259
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->removeView(Landroid/view/View;)V

    .line 261
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->pA()V

    .line 262
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iput-boolean v1, v2, Lcom/bytedance/sdk/openadsdk/activity/ROR;->WAv:Z

    .line 265
    :cond_6
    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/activity/ROR;->WAv:Z

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    .line 267
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 272
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    if-ne v2, v3, :cond_7

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 274
    :cond_7
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    .line 275
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 278
    :cond_8
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    .line 279
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_a

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 285
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 286
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 287
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/activity/cJ;)Lcom/bytedance/sdk/openadsdk/activity/ROR;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->kYc()Lcom/bytedance/sdk/openadsdk/activity/ROR;

    move-result-object p0

    return-object p0
.end method

.method private kYc()Lcom/bytedance/sdk/openadsdk/activity/ROR;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    return-object v0
.end method

.method private tP()Z
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 732
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ac;

    return v0
.end method


# virtual methods
.method public ABk()Z
    .locals 1

    .line 674
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->bxS:Z

    return v0
.end method

.method public CJ()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->HzH()V

    :cond_0
    return-void
.end method

.method public CJ(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x5

    .line 428
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH:I

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->ac(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public Gm()V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    if-eqz v0, :cond_0

    .line 647
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;->cJ()V

    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    if-eqz v0, :cond_1

    .line 650
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;->cJ()V

    :cond_1
    return-void
.end method

.method public HzH()Lcom/bytedance/sdk/openadsdk/WAv/hm;
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pM:Lcom/bytedance/sdk/openadsdk/WAv/hm;

    return-object v0
.end method

.method public Qhi(F)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;->setProgress(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 576
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;->setVisibility(I)V

    return-void

    :cond_1
    if-lez p1, :cond_2

    .line 577
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 578
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public Qhi(I)V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 598
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Qhi()V

    .line 599
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_2

    .line 600
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->cJ()V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 603
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->cJ()V

    .line 604
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_2

    .line 605
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi()V

    :cond_2
    return-void
.end method

.method public Qhi(Landroid/app/Activity;)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Qhi(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 2

    .line 952
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 955
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;)V
    .locals 1

    .line 511
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    if-eqz v0, :cond_0

    .line 512
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Tgh;->EBS()V

    .line 514
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 515
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 504
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 682
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->EBS:Z

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/cJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;Lcom/bytedance/sdk/openadsdk/activity/ROR;ZILjava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CQU:Ljava/lang/Runnable;

    return-void

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 698
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->iMK()V

    .line 699
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 700
    new-instance v8, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/cJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 707
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-object p5, p1, Lcom/bytedance/sdk/openadsdk/activity/ROR;->Sf:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->b_()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    const-string p2, "reward_success"

    goto :goto_0

    :cond_2
    const-string p2, "reward_fail"

    :goto_0
    invoke-static {p3, p4, p5, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/ROR;ZZZI)V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl()Lcom/bytedance/sdk/openadsdk/activity/ac;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 535
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    invoke-direct {v0, p5}, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;-><init>(I)V

    .line 536
    iget-object p5, v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->Qhi:Landroid/os/Bundle;

    const-string v1, "isSkip"

    invoke-virtual {p5, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 537
    iget-object p2, v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->Qhi:Landroid/os/Bundle;

    const-string p5, "force"

    invoke-virtual {p2, p5, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 538
    iget-object p2, v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;->Qhi:Landroid/os/Bundle;

    const-string p3, "isFromLandingPage"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x2

    .line 386
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH:I

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->CJ(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 441
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    if-eqz p1, :cond_0

    .line 442
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    return-void

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    if-eqz p1, :cond_1

    .line 444
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;)V
    .locals 6

    .line 176
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->kYc:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 180
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH:I

    .line 181
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    .line 182
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->setFitsSystemWindows(Z)V

    .line 183
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pA:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    .line 184
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm:Z

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    .line 187
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    .line 188
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 189
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->tP:Lcom/bytedance/sdk/openadsdk/layout/TTProgressIndicator;

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    .line 193
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextColor(I)V

    .line 194
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setTextSize(F)V

    .line 195
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v2, v5, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;->setShadowLayer(FFFI)V

    .line 196
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x42700000    # 60.0f

    .line 197
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v3, 0x41800000    # 16.0f

    .line 198
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v3, 0x800035

    .line 199
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 200
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hpZ:Lcom/bytedance/sdk/openadsdk/core/customview/PAGTextView;

    invoke-virtual {v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    .line 204
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    .line 206
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    .line 209
    :cond_0
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    .line 210
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    const/4 p1, 0x0

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 212
    sget-object p3, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    .line 213
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    :cond_1
    if-nez p4, :cond_2

    if-eqz p2, :cond_2

    .line 216
    sget-object p2, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    .line 217
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ac:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    .line 221
    :cond_2
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;-><init>(I)V

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/activity/ROR;Lcom/bytedance/sdk/openadsdk/activity/cJ$fl;)V

    return-void
.end method

.method public Qhi()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hm:Z

    return v0
.end method

.method public ROR()Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->MQ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    return-object v0
.end method

.method public Sf()Lcom/bytedance/sdk/openadsdk/activity/ROR;
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 618
    :cond_0
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_1

    .line 619
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 620
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/ROR;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public Tgh()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->zc:I

    return v0
.end method

.method public WAv()V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    if-eqz v0, :cond_0

    .line 634
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;->onAdClicked()V

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    if-eqz v0, :cond_1

    .line 637
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public ac()Landroid/app/Activity;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    return-object v0
.end method

.method public ac(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x4

    .line 412
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH:I

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->fl(Landroid/app/Activity;)V

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->Qhi()V

    .line 419
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_2

    .line 420
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->cJ()V

    :cond_2
    return-void
.end method

.method public cJ()I
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public cJ(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x3

    .line 396
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH:I

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->cJ(Landroid/app/Activity;)V

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    if-eqz p1, :cond_1

    .line 401
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->cJ()V

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_2

    .line 404
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->Qhi()V

    :cond_2
    return-void
.end method

.method public fl()Lcom/bytedance/sdk/openadsdk/activity/ac;
    .locals 4

    .line 556
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->iMK:Lcom/bytedance/sdk/openadsdk/activity/ac;

    if-eqz v0, :cond_0

    return-object v0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 560
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-le v1, v0, :cond_3

    .line 561
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 562
    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/activity/ac;

    if-eqz v3, :cond_2

    .line 563
    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/ac;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->iMK:Lcom/bytedance/sdk/openadsdk/activity/ac;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 567
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->iMK:Lcom/bytedance/sdk/openadsdk/activity/ac;

    return-object v0
.end method

.method public fl(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 3

    const/4 p1, 0x6

    .line 452
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->HzH:I

    .line 453
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->cJ()I

    move-result p1

    .line 454
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 455
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    if-lt v2, p1, :cond_0

    .line 456
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->pA()V

    goto :goto_0

    .line 460
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz p1, :cond_2

    .line 461
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->pM()V

    .line 465
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ROR;->tP()Z

    move-result p1

    if-nez p1, :cond_3

    .line 466
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/cJ$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cJ;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->qMt:Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;

    if-eqz p1, :cond_4

    .line 479
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ$cJ;->ac()V

    .line 482
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/zc;

    if-eqz p1, :cond_5

    .line 483
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/zc;->ac()V

    :cond_5
    const/4 p1, 0x0

    .line 486
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    .line 487
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->WAv:Landroid/app/Activity;

    return-void
.end method

.method public hm()Landroid/os/Bundle;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Tgh:Landroid/os/Bundle;

    return-object v0
.end method

.method public hpZ()V
    .locals 1

    const/4 v0, 0x1

    .line 736
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->EBS:Z

    return-void
.end method

.method public iMK()V
    .locals 1

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->bxS:Z

    return-void
.end method

.method public pA()Z
    .locals 1

    .line 714
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->EBS:Z

    return v0
.end method

.method public zc()V
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->pA()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->hpZ()V

    .line 660
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->ROR:Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;

    if-eqz v0, :cond_1

    .line 661
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/CJ/ac;->Qhi()V

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Sf:Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;

    if-eqz v0, :cond_2

    .line 664
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/apiImpl/cJ/cJ;->Qhi()V

    .line 667
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CQU:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 668
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 669
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cJ;->CQU:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method
