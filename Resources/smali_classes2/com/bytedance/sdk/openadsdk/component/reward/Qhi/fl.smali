.class public Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;
.super Ljava/lang/Object;
.source "RewardFullDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Z

.field Qhi:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

.field private final ac:Ljava/lang/String;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private final fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 37
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 38
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->ac:Ljava/lang/String;

    return-void
.end method

.method private CJ()V
    .locals 3

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->ip:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->ac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->fl:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->ac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    :cond_1
    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->CJ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->CJ:Z

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->CJ()V

    return-void
.end method

.method public Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;IIILcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;III",
            "Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    .line 71
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 74
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->fl:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 75
    const-string v2, "click_play_star_level"

    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 76
    :cond_0
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->CJ:I

    if-ne v2, v3, :cond_1

    .line 77
    const-string v2, "click_play_star_nums"

    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 78
    :cond_1
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ac:I

    if-ne v2, v3, :cond_2

    .line 79
    const-string v2, "click_play_source"

    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 80
    :cond_2
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->cJ:I

    if-ne v2, v3, :cond_3

    .line 81
    const-string v2, "click_play_logo"

    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v1, p10

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 84
    invoke-interface/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V

    return-void
.end method

.method public ac()Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    return-object v0
.end method

.method public cJ()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->CJ()V

    :cond_0
    return-void
.end method
