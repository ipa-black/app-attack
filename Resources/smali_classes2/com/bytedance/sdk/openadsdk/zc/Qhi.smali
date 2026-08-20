.class public Lcom/bytedance/sdk/openadsdk/zc/Qhi;
.super Ljava/lang/Object;
.source "FeatureCollectionModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/openadsdk/zc/Qhi;",
        ">;"
    }
.end annotation


# instance fields
.field private ABk:I

.field private final CJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private Gm:I

.field private final Qhi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ROR:I

.field private final Sf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final Tgh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private WAv:I

.field private ac:I

.field private final cJ:Ljava/lang/String;

.field private fl:I

.field private final hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/zc/cJ;",
            ">;"
        }
    .end annotation
.end field

.field private iMK:J

.field private final zc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/zc/cJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->CJ:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Tgh:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Sf:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->WAv:I

    .line 40
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Gm:I

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    .line 42
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ABk:I

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->cJ:Ljava/lang/String;

    return-void
.end method

.method private Qhi(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;[IJLorg/json/JSONObject;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;[IJ",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    .line 178
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 179
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_3

    aget v9, v2, v7

    int-to-long v10, v9

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    sub-long v10, p5, v10

    :goto_1
    if-ltz v4, :cond_0

    .line 182
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 183
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v10

    if-ltz v12, :cond_0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_1

    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-virtual {v11, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v8

    if-eqz v10, :cond_2

    .line 193
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_1
    move-object/from16 v11, p2

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ltz v4, :cond_4

    .line 199
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 207
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->hm()[I

    move-result-object v4

    const-string v1, "show_c_"

    move-object v0, p0

    move-object v2, p1

    move-wide v5, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;[IJLorg/json/JSONObject;)V

    .line 208
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->CJ:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->WAv()[I

    move-result-object v4

    const-string v1, "click_c_"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;[IJLorg/json/JSONObject;)V

    .line 209
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Tgh:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Gm()[I

    move-result-object v4

    const-string v1, "v_play_c_"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;[IJLorg/json/JSONObject;)V

    .line 210
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Sf:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->hpZ()[I

    move-result-object v4

    const-string v1, "dislike_c_"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;[IJLorg/json/JSONObject;)V

    .line 212
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Tgh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ac:I

    if-eqz v0, :cond_0

    .line 214
    const-string v1, "show_c_s"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ac:I

    add-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ROR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->fl:I

    if-eqz v0, :cond_1

    .line 223
    const-string v1, "click_c_s"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->fl:I

    add-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Sf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ROR:I

    if-eqz v0, :cond_2

    .line 232
    const-string v1, "v_play_c_s"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ROR:I

    add-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method private cJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 243
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 244
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 246
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->zc()[I

    move-result-object v7

    const-wide/32 v8, 0xea60

    if-eqz v7, :cond_3

    const/4 v13, 0x0

    .line 248
    :goto_0
    array-length v14, v7

    if-ge v13, v14, :cond_3

    .line 249
    aget v14, v7, v13

    int-to-long v10, v14

    mul-long/2addr v10, v8

    sub-long v10, v3, v10

    .line 252
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 253
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v8, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Ljava/lang/String;

    move-object/from16 v18, v7

    .line 254
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-eqz v7, :cond_0

    .line 256
    invoke-virtual {v7, v10, v11, v3, v4}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi(JJ)J

    move-result-wide v19

    add-long v8, v8, v19

    :cond_0
    move-object/from16 v7, v18

    goto :goto_1

    :cond_1
    move-object/from16 v18, v7

    const-wide/16 v15, 0x0

    cmp-long v7, v8, v15

    if-eqz v7, :cond_2

    .line 261
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "lp_stay_t_"

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v11, v7

    add-long/2addr v11, v8

    cmp-long v7, v11, v15

    if-eqz v7, :cond_2

    .line 264
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v18

    const-wide/32 v8, 0xea60

    goto :goto_0

    .line 270
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ABk()[I

    move-result-object v7

    if-eqz v7, :cond_b

    const/4 v8, 0x0

    .line 272
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_b

    .line 273
    aget v9, v7, v8

    int-to-long v10, v9

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    sub-long v10, v3, v10

    .line 277
    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 278
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    check-cast v7, Ljava/lang/String;

    move-object/from16 v18, v14

    .line 279
    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-eqz v7, :cond_4

    .line 281
    invoke-virtual {v7, v10, v11, v3, v4}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi(JJ)J

    move-result-wide v20

    add-long v12, v12, v20

    const-wide/16 v22, 0x4e20

    cmp-long v7, v20, v22

    if-lez v7, :cond_4

    add-int/lit8 v15, v15, 0x1

    :cond_4
    move-object/from16 v14, v18

    move-object/from16 v7, v19

    goto :goto_3

    :cond_5
    move-object/from16 v19, v7

    const-wide/16 v16, 0x0

    cmp-long v7, v12, v16

    if-eqz v7, :cond_6

    .line 289
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "v_stay_t_"

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 290
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-wide/from16 v20, v3

    int-to-long v3, v7

    add-long/2addr v3, v12

    cmp-long v7, v3, v16

    if-eqz v7, :cond_7

    .line 292
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    move-wide/from16 v20, v3

    :cond_7
    :goto_4
    if-eqz v15, :cond_8

    .line 296
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "v_20s_play_c_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v15

    if-eqz v3, :cond_8

    .line 299
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    :cond_8
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 303
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 306
    :cond_9
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 307
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v7, v19

    move-wide/from16 v3, v20

    goto/16 :goto_2

    .line 312
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->pA()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 313
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->WAv:I

    if-eqz v3, :cond_c

    .line 314
    const-string v4, "v_stay_t_s"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->WAv:I

    add-int/2addr v3, v5

    if-eqz v3, :cond_c

    .line 317
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->iMK()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 323
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ABk:I

    if-eqz v3, :cond_d

    .line 324
    const-string v4, "lp_stay_t_s"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ABk:I

    add-int/2addr v3, v5

    if-eqz v3, :cond_d

    .line 327
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->HzH()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 333
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Gm:I

    if-eqz v3, :cond_e

    .line 334
    const-string v4, "v_30p_play_c_s"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Gm:I

    add-int/2addr v1, v3

    if-eqz v1, :cond_e

    .line 337
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_e
    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/zc/Qhi;)I
    .locals 1

    .line 359
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ac:I

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ac:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public Qhi(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 168
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->cJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public Qhi()V
    .locals 2

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->iMK:J

    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Gm:I

    .line 346
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->fl:I

    .line 347
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ac:I

    .line 348
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ABk:I

    .line 349
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->WAv:I

    .line 350
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ROR:I

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "play_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "dislike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "videoPercent30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "landingFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "feed_pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "feed_break"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "feed_continue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "feed_over"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "landingStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "landingPause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v2, v1

    goto :goto_0

    :sswitch_c
    const-string v0, "landingContinue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 66
    :pswitch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Tgh:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Sf()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 68
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ROR:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ROR:I

    .line 70
    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-nez p1, :cond_e

    .line 73
    new-instance p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi(J)V

    return-void

    .line 81
    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Sf:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 156
    :pswitch_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->HzH()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 157
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Gm:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Gm:I

    goto/16 :goto_1

    .line 113
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-eqz p1, :cond_f

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->cJ(J)V

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->iMK()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 118
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ABk:I

    int-to-long v0, p2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->iMK:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ABk:I

    :cond_f
    return-void

    .line 125
    :pswitch_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-eqz p1, :cond_10

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->ac(J)V

    :cond_10
    return-void

    .line 134
    :pswitch_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-eqz p1, :cond_11

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->CJ(J)V

    :cond_11
    return-void

    .line 60
    :pswitch_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->CJ:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ROR()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 62
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->fl:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->fl:I

    return-void

    .line 54
    :pswitch_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Tgh()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 56
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ac:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->ac:I

    return-void

    .line 144
    :pswitch_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 145
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->hm:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-eqz p1, :cond_12

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->cJ(J)V

    .line 148
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->pA()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 149
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->WAv:I

    int-to-long v0, p2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->iMK:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->WAv:I

    :cond_12
    return-void

    .line 84
    :pswitch_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-nez p1, :cond_13

    .line 87
    new-instance p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->Qhi(J)V

    return-void

    .line 104
    :pswitch_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-eqz p1, :cond_14

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->ac(J)V

    :cond_14
    return-void

    .line 95
    :pswitch_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->zc:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/cJ;

    if-eqz p1, :cond_15

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/zc/cJ;->CJ(J)V

    :cond_15
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71c43c22 -> :sswitch_c
        -0x697b4de1 -> :sswitch_b
        -0x6948af75 -> :sswitch_a
        -0x61fc1d2b -> :sswitch_9
        0x35dafd -> :sswitch_8
        0x5a5c588 -> :sswitch_7
        0x1fcbea28 -> :sswitch_6
        0x21bf731e -> :sswitch_5
        0x227d4015 -> :sswitch_4
        0x296e858a -> :sswitch_3
        0x29e25327 -> :sswitch_2
        0x63a33d25 -> :sswitch_1
        0x72cb7b97 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/bytedance/sdk/openadsdk/zc/Qhi;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/zc/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/zc/Qhi;)I

    move-result p1

    return p1
.end method
