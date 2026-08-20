.class public Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;
.super Lcom/bytedance/sdk/openadsdk/core/cJ/ac;
.source "ClickListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;
    }
.end annotation


# static fields
.field private static js:I = -0x80000000


# instance fields
.field protected ABk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

.field protected CJ:Landroid/content/Context;

.field protected Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

.field protected HzH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected MQ:I

.field private Qhi:Ljava/lang/String;

.field protected final ROR:Ljava/lang/String;

.field protected final Sf:I

.field protected final Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field protected WAv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Z

.field private cJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

.field protected hm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

.field protected iMK:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

.field protected kYc:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

.field protected pA:Z

.field protected tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Qhi;

.field protected zc:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/ac;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->pA:Z

    .line 70
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->MQ:I

    .line 73
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ac:Z

    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 104
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ROR:Ljava/lang/String;

    .line 105
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Sf:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;IZ)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 111
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ac:Z

    return-void
.end method

.method private static Qhi(Landroid/content/Context;)I
    .locals 2

    .line 382
    sget v0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->js:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 383
    const-string v0, "btn_native_creative"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/MQ;->fl(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->js:I

    .line 385
    :cond_0
    sget p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->js:I

    return p0
.end method

.method public static Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    :try_start_0
    sget v1, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi;->MQ:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 283
    sget v2, Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi;->MQ:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 284
    const-string v2, "click"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    return v0

    .line 295
    :catch_0
    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ac(Landroid/view/View;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    .line 296
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->tP()I

    move-result p0

    if-ne p0, v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    .line 298
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->kYc()I

    move-result p0

    if-ne p0, v0, :cond_7

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v0
.end method

.method public static ac(Landroid/view/View;)Z
    .locals 2

    const v0, 0x1f000009

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    const v0, 0x1f00000b

    .line 372
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    const v0, 0x1f000007

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->HUk:I

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/iMK;->Ewb:I

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public CJ()Landroid/view/View;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->cJ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->cJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public CJ(I)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->MQ:I

    return-void
.end method

.method public CJ(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->pA:Z

    return-void
.end method

.method protected Qhi(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Gm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;JJ",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "FIFI",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/core/model/Gm;"
        }
    .end annotation

    move-object v0, p0

    .line 309
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;-><init>()V

    move v2, p1

    .line 310
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Tgh(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move v2, p2

    .line 311
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->fl(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move v2, p3

    .line 312
    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move v2, p4

    .line 313
    invoke-virtual {v1, p4}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move-wide v2, p6

    .line 314
    invoke-virtual {v1, p6, p7}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(J)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move-wide v2, p8

    .line 315
    invoke-virtual {v1, p8, p9}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(J)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    .line 316
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    .line 317
    invoke-static {p11}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    .line 318
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    .line 319
    invoke-static {p11}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Eh:I

    .line 320
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->aP:I

    .line 321
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->fl(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->NFd:I

    .line 322
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move-object v2, p5

    .line 323
    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    .line 324
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move-object/from16 v2, p12

    .line 325
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move/from16 v2, p13

    .line 326
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move/from16 v2, p14

    .line 327
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move/from16 v2, p15

    .line 328
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move/from16 v2, p16

    .line 329
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move-object/from16 v2, p17

    .line 330
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    move-object/from16 v2, p18

    .line 331
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    move-result-object v1

    return-object v1
.end method

.method public Qhi(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->NFd:I

    return-void
.end method

.method public Qhi(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->cJ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->hm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 26
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

    .line 187
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    .line 190
    :cond_0
    iget-boolean v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ac:Z

    if-nez v0, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Landroid/view/View;IFFFFLandroid/util/SparseArray;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 194
    :cond_1
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    .line 201
    :cond_2
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    const/16 v19, 0x0

    const/4 v8, -0x1

    const/16 v20, 0x0

    if-eqz v0, :cond_3

    .line 202
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/pA;->zc:I

    .line 203
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/pA;->ABk:Lorg/json/JSONObject;

    .line 204
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/model/pA;->HzH:Lorg/json/JSONObject;

    .line 205
    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->fl:Lcom/bytedance/sdk/openadsdk/core/model/pA;

    iget-boolean v3, v3, Lcom/bytedance/sdk/openadsdk/core/model/pA;->kYc:Z

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v21, v3

    goto :goto_0

    :cond_3
    move/from16 v16, v8

    move/from16 v21, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v17

    .line 207
    :goto_0
    iget-wide v6, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CQU:J

    iget-wide v4, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->pM:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->hm:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_4

    move-object/from16 v22, v20

    goto :goto_1

    .line 208
    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v22, v0

    :goto_1
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->WAv:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    move-object/from16 v23, v20

    goto :goto_2

    .line 209
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v23, v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    .line 210
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->fl(Landroid/content/Context;)F

    move-result v13

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ROR(Landroid/content/Context;)I

    move-result v14

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/content/Context;)F

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v24, v4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, v24

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    .line 207
    invoke-virtual/range {v0 .. v18}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    .line 213
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 217
    :cond_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->iMK:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    if-eqz v0, :cond_8

    .line 218
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    .line 221
    :cond_7
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->iMK:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/CJ/fl;->fl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_8
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ac:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_13

    if-eqz v21, :cond_9

    goto/16 :goto_6

    .line 228
    :cond_9
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->zc:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;

    move-object/from16 v4, p1

    if-eqz v0, :cond_a

    const/4 v5, -0x1

    .line 229
    invoke-interface {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;->Qhi(Landroid/view/View;I)V

    :cond_a
    move/from16 v0, p7

    .line 231
    invoke-virtual {v1, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Landroid/view/View;Z)Z

    move-result v5

    if-nez v5, :cond_b

    return-void

    .line 234
    :cond_b
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 235
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ROR:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Sf:I

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v11, v5

    if-eqz v4, :cond_d

    const v5, 0x1f000042

    .line 238
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 239
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_d
    if-eqz v4, :cond_e

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v20

    :cond_e
    if-nez v20, :cond_f

    .line 249
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    move-object v6, v4

    goto :goto_4

    :cond_f
    move-object/from16 v6, v20

    .line 251
    :goto_4
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget v8, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Sf:I

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->kYc:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;ZI)Z

    move-result v4

    .line 253
    invoke-static/range {v19 .. v19}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Z)V

    if-nez v4, :cond_10

    .line 255
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 256
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->ac()I

    move-result v5

    if-ne v5, v3, :cond_10

    return-void

    .line 261
    :cond_10
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v5, :cond_11

    if-nez v4, :cond_11

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ROR:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/cJ/cJ;->Qhi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 262
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CJ:Landroid/content/Context;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ROR:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object v5

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;->CJ()V

    .line 265
    :cond_11
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ROR:Ljava/lang/String;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    if-eqz v0, :cond_12

    goto :goto_5

    :cond_12
    move v2, v3

    :goto_5
    const-string v0, "click"

    move-object/from16 p1, v0

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move/from16 p5, v4

    move-object/from16 p6, v8

    move/from16 p7, v2

    invoke-static/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    return-void

    :cond_13
    :goto_6
    move/from16 v0, p7

    .line 224
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ROR:Ljava/lang/String;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    if-eqz v0, :cond_14

    goto :goto_7

    :cond_14
    move v2, v3

    :goto_7
    const-string v0, "click"

    const/4 v3, 0x1

    move-object/from16 p1, v0

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v3

    move-object/from16 p6, v7

    move/from16 p7, v2

    invoke-static/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/lang/String;ZLjava/util/Map;I)V

    return-void
.end method

.method public Qhi(Lcom/bykv/vk/openvk/component/video/api/CJ/fl;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->iMK:Lcom/bykv/vk/openvk/component/video/api/CJ/fl;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/PangleAd;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->kYc:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->ABk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->zc:Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Qhi;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Qhi;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->hpZ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->HzH:Ljava/util/Map;

    return-void
.end method

.method protected Qhi(Landroid/view/View;IFFFFLandroid/util/SparseArray;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IFFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;Z)Z"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Qhi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 343
    new-array v2, v0, [I

    .line 344
    new-array v0, v0, [I

    .line 345
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->WAv:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;)[I

    move-result-object v2

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->WAv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/view/View;)[I

    move-result-object v0

    .line 349
    :cond_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;-><init>()V

    .line 350
    invoke-virtual {v3, p3}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    .line 351
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    .line 352
    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    .line 353
    invoke-virtual {p3, p6}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    iget-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->CQU:J

    .line 354
    invoke-virtual {p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(J)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    iget-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->pM:J

    .line 355
    invoke-virtual {p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(J)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    aget p4, v2, v1

    .line 356
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    const/4 p4, 0x1

    aget p5, v2, p4

    .line 357
    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    aget p5, v0, v1

    .line 358
    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->fl(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    aget p5, v0, p4

    .line 359
    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    .line 360
    invoke-virtual {p3, p7}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    .line 361
    invoke-virtual {p3, p8}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object p3

    .line 362
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/pA;

    move-result-object p3

    .line 363
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->tP:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Qhi;

    invoke-interface {p5, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Qhi;->Qhi(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/model/pA;)V

    return p4

    :cond_1
    return v1
.end method

.method public Qhi(Landroid/view/View;Z)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)Z

    move-result p1

    return p1
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Gm;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/Gm;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public Tgh()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public ac(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->Eh:I

    return-void
.end method

.method public cJ(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->aP:I

    return-void
.end method

.method public cJ(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->WAv:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public fl()Landroid/view/View;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->cJ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->cJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1f000011

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/cJ/cJ;->cJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
