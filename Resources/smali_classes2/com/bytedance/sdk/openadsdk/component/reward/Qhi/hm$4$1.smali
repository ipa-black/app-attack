.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4$1;
.super Ljava/lang/Object;
.source "RewardFullReportManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V
    .locals 12
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

    move-object v0, p0

    .line 505
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Landroid/view/View;FFFFLandroid/util/SparseArray;III)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4$1;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm$4;->ac:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hm;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
