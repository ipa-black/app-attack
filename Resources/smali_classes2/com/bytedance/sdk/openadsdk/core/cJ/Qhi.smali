.class public Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;
.super Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;
.source "ClickCreativeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;
    }
.end annotation


# instance fields
.field private Qhi:Z

.field private ac:Z

.field private cJ:Z

.field private js:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private zn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi:Z

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ:Z

    .line 53
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ac:Z

    return-void
.end method

.method private CJ(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 317
    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Px:I

    if-eq v1, v3, :cond_6

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->PAe:I

    if-eq v1, v3, :cond_6

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->ip:I

    if-eq v1, v3, :cond_6

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->xyz:I

    if-eq v1, v3, :cond_6

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->jPH:I

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 332
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1f00001e

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Ug:I

    if-ne v1, v3, :cond_3

    goto :goto_2

    .line 336
    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    move v1, v0

    .line 337
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 338
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method private Sf()Z
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Dww()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private WAv()Z
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hm()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 363
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_2

    return v1

    .line 366
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->zn:I

    if-nez v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->zn:I

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ()Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi()Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ac()Z

    .line 372
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->zn:I

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Sf()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ac()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 376
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->zn:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v3
.end method

.method private cJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "open_ad"

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slide_banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "interaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "embeded_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 395
    :goto_0
    const-string p1, "banner_call"

    packed-switch v2, :pswitch_data_0

    const-string p1, ""

    :pswitch_0
    return-object p1

    .line 391
    :pswitch_1
    const-string p1, "interaction_call"

    return-object p1

    .line 385
    :pswitch_2
    const-string p1, "feed_call"

    return-object p1

    :pswitch_3
    return-object v1

    :pswitch_4
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_4
        -0x4b4ad1c8 -> :sswitch_3
        -0x2a77c376 -> :sswitch_2
        0x6deace12 -> :sswitch_1
        0x7cab2108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hm()Z
    .locals 1

    .line 349
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    return v0
.end method


# virtual methods
.method public Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move/from16 v9, p7

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 70
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Landroid/view/View;IFFFFLandroid/util/SparseArray;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Z)V

    .line 75
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wI()V

    .line 76
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Z)V

    .line 79
    :cond_1
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gSh()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;J)V

    .line 85
    :cond_2
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->iMK:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    .line 89
    :cond_3
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->iMK:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->fl()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_4
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ug()I

    move-result v6

    .line 93
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma(I)V

    .line 94
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-eqz v0, :cond_6

    .line 95
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-lez v6, :cond_5

    move v1, v6

    goto :goto_0

    :cond_5
    move v1, v7

    :goto_0
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->Qhi(I)V

    .line 97
    :cond_6
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    const-string v5, "auto_click"

    const-string v1, "click_probability_jump"

    const-string v2, "dsp_click_type"

    if-eqz v0, :cond_7

    .line 99
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-lez v6, :cond_a

    .line 104
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    .line 107
    :cond_8
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    const/16 v3, 0xb

    if-eqz v0, :cond_9

    if-ge v6, v3, :cond_9

    .line 108
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-lt v6, v3, :cond_a

    .line 110
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v0

    if-nez v0, :cond_a

    .line 111
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/model/ROR;->Qhi(I)I

    move-result v0

    .line 112
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_a
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v10, :cond_b

    const v0, 0x22000001

    .line 119
    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 121
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_b
    const-string v0, "VAST_ACTION_BUTTON"

    :goto_1
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->fl(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 126
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Ljava/lang/String;)V

    .line 129
    :cond_c
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->js:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 130
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->js:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;->getVideoProgress()J

    move-result-wide v1

    goto :goto_2

    :cond_d
    const-wide/16 v1, 0x0

    .line 132
    :goto_2
    const-string v3, "VAST_ICON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 133
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 134
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;->Qhi(J)V

    goto :goto_3

    .line 136
    :cond_e
    const-string v3, "VAST_END_CARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 137
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->ac()Lcom/bytedance/sdk/openadsdk/core/ROR/ac;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 138
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->ac()Lcom/bytedance/sdk/openadsdk/core/ROR/ac;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac;->Qhi(J)V

    goto :goto_3

    .line 141
    :cond_f
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->ROR(J)V

    .line 145
    :cond_10
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->WAv()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ac:Z

    if-nez v0, :cond_11

    .line 148
    invoke-super/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    return-void

    .line 153
    :cond_11
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    .line 156
    :cond_12
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    if-nez v0, :cond_13

    return-void

    .line 159
    :cond_13
    invoke-virtual {v11, v10, v9}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 163
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 166
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    const/16 v19, -0x1

    const/16 v20, 0x0

    if-eqz v1, :cond_15

    .line 167
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->zc:I

    .line 168
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/pA;->ABk:Lorg/json/JSONObject;

    .line 169
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/model/pA;->HzH:Lorg/json/JSONObject;

    .line 170
    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    iget-boolean v3, v3, Lcom/bytedance/sdk/openadsdk/core/model/pA;->kYc:Z

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v21, v3

    goto :goto_4

    :cond_15
    move-object/from16 v17, v0

    move/from16 v21, v7

    move/from16 v16, v19

    move-object/from16 v18, v20

    .line 172
    :goto_4
    iget-wide v3, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CQU:J

    iget-wide v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->pM:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hm:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_16

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ()Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_16
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_5
    move-object/from16 v22, v0

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->WAv:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_17

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->fl()Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_17
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->WAv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_6
    move-object/from16 v23, v0

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->fl(Landroid/content/Context;)F

    move-result v13

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ROR(Landroid/content/Context;)I

    move-result v14

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/content/Context;)F

    move-result v15

    move-object/from16 v0, p0

    move-wide/from16 v24, v1

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v26, v3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v28, v5

    move-object/from16 v5, p6

    move/from16 v29, v6

    move-wide/from16 v6, v26

    move/from16 v26, v8

    move-wide/from16 v8, v24

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    .line 172
    invoke-virtual/range {v0 .. v18}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    const/4 v8, 0x2

    if-eqz v21, :cond_19

    .line 179
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-eqz p7, :cond_18

    move/from16 v8, v26

    :cond_18
    const-string v5, "click"

    const/4 v6, 0x1

    move-object/from16 p1, v5

    move-object/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v6

    move-object/from16 p6, v4

    move/from16 p7, v8

    invoke-static/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    return-void

    .line 183
    :cond_19
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v8, :cond_1a

    if-eq v0, v3, :cond_1a

    if-eq v0, v2, :cond_1f

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1b

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1a

    move-object/from16 v4, p1

    move/from16 v0, v19

    goto/16 :goto_11

    :cond_1a
    move-object/from16 v4, p1

    const/4 v5, 0x0

    goto/16 :goto_c

    .line 217
    :cond_1b
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 218
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 219
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-eqz p7, :cond_1c

    move/from16 v15, v26

    goto :goto_7

    :cond_1c
    move v15, v8

    :goto_7
    const-string v9, "click_call"

    const/4 v13, 0x1

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 222
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Dq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    .line 223
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-eqz p7, :cond_1e

    move/from16 v15, v26

    goto :goto_8

    :cond_1e
    move v15, v8

    :goto_8
    const-string v9, "click"

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    move-object/from16 v4, p1

    goto/16 :goto_11

    .line 187
    :cond_1f
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ABk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    if-nez v2, :cond_20

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->kYc:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    if-eqz v2, :cond_24

    :cond_20
    move-object/from16 v4, p1

    if-eqz v4, :cond_21

    .line 191
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v20

    :cond_21
    if-nez v20, :cond_22

    .line 194
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    move-object v9, v2

    goto :goto_9

    :cond_22
    move-object/from16 v9, v20

    .line 196
    :goto_9
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v11, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Sf:I

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ABk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->kYc:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    const/16 v16, 0x1

    move/from16 v17, v29

    invoke-static/range {v9 .. v17}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;ZI)Z

    move-result v21

    .line 198
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi:Z

    if-eqz v2, :cond_32

    .line 199
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-eqz p7, :cond_23

    move/from16 v23, v26

    goto :goto_a

    :cond_23
    move/from16 v23, v8

    :goto_a
    const-string v17, "click"

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-static/range {v17 .. v23}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_11

    :cond_24
    move-object/from16 v4, p1

    .line 202
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    if-eqz v2, :cond_32

    .line 203
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->CJ()V

    .line 205
    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    .line 206
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ()Z

    move-result v2

    if-nez v2, :cond_25

    .line 207
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, v28

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Z)V

    .line 210
    :cond_25
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi:Z

    if-eqz v2, :cond_32

    .line 211
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    if-eqz p7, :cond_26

    move/from16 v15, v26

    goto :goto_b

    :cond_26
    move v15, v8

    :goto_b
    const-string v9, "click"

    const/4 v13, 0x1

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_11

    :goto_c
    if-ne v0, v3, :cond_28

    .line 232
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    const-string v6, "play.google.com/store"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 234
    const-string v6, "?id="

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v6, v3, v2, v7, v9}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 236
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi:Z

    if-eqz v2, :cond_32

    .line 237
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-eqz p7, :cond_27

    move/from16 v15, v26

    goto :goto_d

    :cond_27
    move v15, v8

    :goto_d
    const-string v9, "click"

    const/4 v13, 0x1

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_11

    .line 245
    :cond_28
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ABk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    if-nez v2, :cond_29

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ:Z

    if-eqz v2, :cond_2b

    .line 246
    :cond_29
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-eqz p7, :cond_2a

    move/from16 v15, v26

    goto :goto_e

    :cond_2a
    move v15, v8

    :goto_e
    const-string v9, "click_button"

    const/4 v13, 0x1

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_2b
    if-eqz v4, :cond_2c

    .line 250
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1f00001e

    if-eq v2, v3, :cond_2d

    instance-of v2, v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-nez v2, :cond_2d

    :cond_2c
    const v2, 0x1f000042

    .line 252
    invoke-virtual {v4, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 253
    :cond_2d
    invoke-static/range {v26 .. v26}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2e
    if-eqz v4, :cond_2f

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v20

    :cond_2f
    if-nez v20, :cond_30

    .line 264
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->CJ:Landroid/content/Context;

    move-object v9, v2

    goto :goto_f

    :cond_30
    move-object/from16 v9, v20

    .line 267
    :goto_f
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v11, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Sf:I

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ABk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->kYc:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    const/16 v16, 0x1

    move/from16 v17, v29

    invoke-static/range {v9 .. v17}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;ZI)Z

    move-result v21

    .line 269
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Z)V

    .line 270
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi:Z

    if-eqz v2, :cond_32

    .line 271
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ROR:Ljava/lang/String;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->HzH:Ljava/util/Map;

    if-eqz p7, :cond_31

    move/from16 v23, v26

    goto :goto_10

    :cond_31
    move/from16 v23, v8

    :goto_10
    const-string v17, "click"

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-static/range {v17 .. v23}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 278
    :cond_32
    :goto_11
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;

    if-eqz v2, :cond_33

    .line 279
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->zc:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;

    invoke-interface {v2, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;->Qhi(Landroid/view/View;I)V

    :cond_33
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;)V
    .locals 1

    .line 421
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->js:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi:Z

    return-void
.end method

.method protected Qhi()Z
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v0

    .line 286
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cJ(I)I

    move-result v0

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/hpZ;->ac(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    return v1

    .line 297
    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Tgh(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v4

    .line 295
    :cond_5
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->fl(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Tgh(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    :goto_1
    return v1

    .line 293
    :cond_8
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->CJ(I)Z

    move-result v0

    return v0
.end method

.method public ac(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->ac:Z

    return-void
.end method

.method public ac()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cJ(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->cJ:Z

    return-void
.end method

.method public cJ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
