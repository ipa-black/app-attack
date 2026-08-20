.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;
.super Ljava/lang/Object;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

.field private final cJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->cJ()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->cJ:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1211
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    if-eqz v2, :cond_0

    .line 1212
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->fl:Lcom/bytedance/sdk/openadsdk/cJ/zc;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Landroid/view/MotionEvent;)V

    .line 1214
    :cond_0
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/common/cJ;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1215
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->tP(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/common/cJ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/common/cJ;->Qhi(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 v2, 0x0

    .line 1219
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_b

    const/4 v10, 0x3

    if-eq v3, v9, :cond_2

    if-eq v3, v8, :cond_4

    if-eq v3, v10, :cond_3

    const/4 v10, -0x1

    :cond_2
    :goto_0
    move v12, v10

    goto/16 :goto_2

    :cond_3
    const/4 v10, 0x4

    goto :goto_0

    .line 1242
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 1243
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    .line 1244
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v11

    sub-float/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->cJ:I

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-gez v3, :cond_5

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v3

    sub-float v3, v10, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->cJ:I

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-ltz v3, :cond_6

    .line 1245
    :cond_5
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    .line 1247
    :cond_6
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v3, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F

    .line 1248
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dww(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v3, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F

    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0xc8

    cmp-long v3, v11, v13

    const/high16 v11, 0x41000000    # 8.0f

    if-lez v3, :cond_8

    .line 1250
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->bxS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v3

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_7

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Dww(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v3

    cmpl-float v3, v3, v11

    if-lez v3, :cond_8

    :cond_7
    move v3, v9

    goto :goto_1

    :cond_8
    move v3, v8

    .line 1257
    :goto_1
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CQU(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1258
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v12

    sub-float v12, v10, v12

    cmpl-float v11, v12, v11

    if-lez v11, :cond_9

    .line 1259
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pM(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/common/ROR;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/common/ROR;->Qhi()V

    .line 1261
    :cond_9
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, -0x3f000000    # -8.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    .line 1262
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->pM(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/common/ROR;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/common/ROR;->cJ()V

    :cond_a
    move v12, v3

    goto :goto_2

    .line 1222
    :cond_b
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ROR(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z

    .line 1223
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 1224
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F

    .line 1225
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F

    .line 1226
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    :try_start_1
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->getLandingPageClickBegin()J

    move-result-wide v10

    cmp-long v3, v10, v6

    if-lez v3, :cond_c

    .line 1229
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)J

    move-result-wide v12

    cmp-long v3, v10, v12

    if-gez v3, :cond_c

    .line 1230
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;J)J

    .line 1231
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLandingPageClickBegin(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1238
    :catch_0
    :cond_c
    :try_start_2
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->ac(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F

    .line 1239
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;F)F

    move v12, v2

    .line 1274
    :goto_2
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Eh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v11

    float-to-double v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v11

    float-to-double v4, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v11, v15

    move-object v2, v15

    move-wide v15, v4

    invoke-direct/range {v11 .. v18}, Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;-><init>(IDDJ)V

    invoke-virtual {v3, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v9, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    if-ne v2, v9, :cond_18

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    .line 1276
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->aP(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->ROR(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_d
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NFd(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1278
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1279
    const-string v3, "down_x"

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->qMt(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1280
    const-string v3, "down_y"

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->EBS(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1281
    const-string v3, "down_time"

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->MQ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1283
    const-string v3, "up_x"

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1284
    const-string v3, "up_y"

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1287
    :try_start_3
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/widget/SSWebView;->getLandingPageClickEnd()J

    move-result-wide v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v5, v10, v6

    if-lez v5, :cond_e

    cmp-long v5, v10, v3

    if-gez v5, :cond_e

    .line 1290
    :try_start_4
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/widget/SSWebView;->setLandingPageClickEnd(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-wide v3, v10

    .line 1297
    :catch_2
    :cond_e
    :try_start_5
    const-string v5, "up_time"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1299
    new-array v3, v8, [I

    .line 1302
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CQU(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1303
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v5

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    sget v6, Lcom/bytedance/sdk/openadsdk/utils/iMK;->gga:I

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/view/View;)Landroid/view/View;

    goto :goto_3

    .line 1305
    :cond_f
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->cJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    move-result-object v5

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->yN:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;

    const v6, 0x1f000011

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardFullBaseLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Landroid/view/View;)Landroid/view/View;

    .line 1307
    :goto_3
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1308
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1309
    const-string v4, "button_x"

    const/4 v5, 0x0

    aget v6, v3, v5

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1310
    const-string v4, "button_y"

    aget v3, v3, v9

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1311
    const-string v3, "button_width"

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1312
    const-string v3, "button_height"

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->sDy(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1315
    :cond_10
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lB(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1316
    new-array v3, v8, [I

    .line 1317
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lB(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1318
    const-string v4, "ad_x"

    const/4 v5, 0x0

    aget v6, v3, v5

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1319
    const-string v4, "ad_y"

    aget v3, v3, v9

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1320
    const-string v3, "width"

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lB(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1321
    const-string v3, "height"

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lB(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1323
    :cond_11
    const-string v3, "toolType"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1324
    const-string v3, "deviceId"

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1325
    const-string v3, "source"

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1326
    const-string v0, "ft"

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Eh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi()Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v9

    goto :goto_4

    :cond_12
    move v4, v8

    :goto_4
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Gm;->Qhi(Landroid/util/SparseArray;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1327
    const-string v0, "user_behavior_type"

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->NFd(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v9

    goto :goto_5

    :cond_13
    move v3, v8

    :goto_5
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1330
    const-string v0, "click_scence"

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1331
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1332
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Tgh(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Tgh;->Qhi(Lorg/json/JSONObject;)V

    .line 1334
    :cond_14
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->aP(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Tgh(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7

    .line 1337
    :cond_15
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->lG(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v3, "click"

    if-eqz v0, :cond_16

    .line 1338
    :try_start_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    const-string v4, "rewarded_video"

    invoke-static {v0, v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6

    .line 1340
    :cond_16
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->CJ(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v0

    const-string v4, "fullscreen_interstitial_ad"

    invoke-static {v0, v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1342
    :goto_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$8;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;

    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;->Sf(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :cond_17
    :goto_7
    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    .line 1345
    const-string v2, "TTAD.RFWVM"

    const-string v3, "TouchRecordTool onTouch error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_8
    const/4 v2, 0x0

    return v2
.end method
