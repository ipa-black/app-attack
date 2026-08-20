.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;
.super Ljava/lang/Object;
.source "RewardFullReportManager.java"


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field private final ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 7
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 55
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    .line 57
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$1;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    move v6, p1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    return-object p0
.end method

.method private Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V
    .locals 3
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;III)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->fl:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 323
    const-string v0, "click_play_star_level"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 324
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->CJ:I

    if-eq v0, v1, :cond_a

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ROR:I

    if-ne v0, v1, :cond_2

    goto/16 :goto_1

    .line 327
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ac:I

    if-ne v0, v1, :cond_3

    .line 328
    const-string v0, "click_play_source"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 329
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->cJ:I

    if-ne v0, v1, :cond_4

    .line 330
    const-string v0, "click_play_logo"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 331
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->zc:I

    if-eq v0, v1, :cond_9

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->mZ:I

    if-eq v0, v1, :cond_9

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->HzH:I

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 335
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1f000009

    if-ne v0, v1, :cond_6

    .line 336
    const-string v0, "click_start_play"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->hm()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 337
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Gm:I

    if-ne v0, v1, :cond_7

    .line 338
    const-string v0, "click_video"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->hm()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 339
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1f00000b

    if-eq v0, v1, :cond_8

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Sf:I

    if-ne v0, v1, :cond_b

    .line 342
    :cond_8
    const-string v0, "fallback_endcard_click"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->hm()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 334
    :cond_9
    :goto_0
    const-string v0, "click_start_play_bar"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->hm()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 326
    :cond_a
    :goto_1
    const-string v0, "click_play_star_nums"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 344
    :cond_b
    :goto_2
    invoke-direct/range {p0 .. p9}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->cJ(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Landroid/view/View;FFFFLandroid/util/SparseArray;III)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p9}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Lorg/json/JSONObject;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lorg/json/JSONObject;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 98
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->vk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    const-string v0, "choose_one_ad_real_show"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    const-string v1, "TTAD.RFReportManager"

    const-string v3, "reportShow json error"

    invoke-static {v1, v3, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v0, :cond_1

    .line 107
    :try_start_1
    const-string v0, "ad_show_order"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private Sf()Z
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->yN()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private cJ(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;III)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Sf()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 358
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->fl:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->CJ:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ac:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->cJ:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->zc:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->mZ:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->HzH:I

    if-eq p1, v0, :cond_1

    const v0, 0x1f000009

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Gm:I

    if-eq p1, v0, :cond_1

    const v0, 0x1f00000b

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ROR:I

    if-ne p1, v0, :cond_3

    .line 371
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ROR(Landroid/content/Context;)I

    move-result p1

    .line 372
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->fl(Landroid/content/Context;)F

    move-result v0

    .line 373
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/content/Context;)F

    move-result v1

    .line 375
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;-><init>()V

    .line 376
    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Tgh(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 377
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->fl(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 378
    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 379
    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(J)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    const-wide/16 p3, 0x0

    .line 381
    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(J)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    .line 382
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Gm()Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    const/4 p3, 0x0

    .line 383
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;)[I

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p4, p4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    .line 384
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Gm()Landroid/view/View;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/view/View;)[I

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 385
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/view/View;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 389
    invoke-virtual {p2, p8}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 390
    invoke-virtual {p2, p9}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->fl(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 391
    invoke-virtual {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 392
    invoke-virtual {p2, p6}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 393
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 394
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p1

    .line 395
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p1

    .line 396
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    move-result-object p4

    .line 401
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 402
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->ROR()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {p7, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p5, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    const/4 p6, 0x1

    const/4 p8, -0x1

    const-string p2, "click_other"

    invoke-static/range {p2 .. p8}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private hm()Lorg/json/JSONObject;
    .locals 5

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->hpZ()J

    move-result-wide v0

    .line 426
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->HzH()I

    move-result v2

    .line 427
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    const-string v4, "duration"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 429
    const-string v0, "percent"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    :catchall_0
    const/4 v3, 0x0

    :catchall_1
    return-object v3
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;
    .locals 9

    .line 456
    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    move v5, v0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p2

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V

    return-object v8
.end method

.method public Qhi()V
    .locals 5
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 81
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lorg/json/JSONObject;)V

    .line 82
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Tgh()V

    .line 89
    new-instance v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;-><init>(I)V

    .line 90
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    iput v2, v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->cJ:I

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V

    return-void
.end method

.method public Qhi(Ljava/util/Map;)V
    .locals 2
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 173
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Qhi(Z)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 221
    :goto_0
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object p1

    .line 222
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(I)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 224
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->ROR(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    .line 226
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->cJ(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)V

    return-void
.end method

.method public ROR()V
    .locals 3

    .line 450
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 451
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lorg/json/JSONObject;)V

    .line 452
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Tgh()V
    .locals 4

    .line 285
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lorg/json/JSONObject;)V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->WAv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 292
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Jma:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/ABk;->CJ()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->lG:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 301
    :goto_0
    :try_start_0
    const-string v1, "endcard_content"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 309
    :cond_4
    const-string v1, "endCardNotShow"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :catch_0
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    const-string v3, "click_close"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ac()Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;->Qhi(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    const v2, 0x1f000011

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;->cJ(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->ac()Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->ac()Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CQU:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;)V

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->es:Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;

    invoke-virtual {v0, v1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/ac;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->zn:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;)V

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    return-object v0
.end method

.method public ac(Z)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 442
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qb()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ZRq()Z

    move-result p1

    if-nez p1, :cond_1

    .line 443
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ROR(Z)V

    .line 444
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->up()Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    :cond_1
    return-void
.end method

.method public cJ()V
    .locals 11
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "dynamic_show_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->hm()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 133
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lorg/json/JSONObject;)V

    .line 134
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 135
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    const-string v8, "width"

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    const-string v8, "height"

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    const-string v8, "alpha"

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v9, v5

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :catchall_0
    :try_start_2
    const-string v5, "root_view"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->Tgh()V

    .line 149
    new-instance v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->pM:Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ac;->hm()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :goto_1
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->VnT:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Ura:Lcom/bytedance/sdk/openadsdk/activity/ROR;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/ROR;->hm:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;->cJ:I

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 155
    const-string v1, "TTAD.RFReportManager"

    const-string v2, "reportShowWhenBindVideoAd error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public cJ(Z)V
    .locals 6
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 270
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ABk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->HLI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-wide v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->HLI:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->bxS:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/pA;->Qhi()Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Sf;)V

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->HLI:J

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->HLI:J

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-void
.end method

.method public fl()Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->ac:Lcom/bytedance/sdk/openadsdk/core/cJ/Tgh;

    return-object v0
.end method
