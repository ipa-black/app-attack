.class public Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;
.super Ljava/lang/Object;
.source "UGenRender.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/iMK;
.implements Lcom/bytedance/adsdk/ugeno/core/pA;
.implements Lcom/bytedance/sdk/component/adexpress/cJ/fl;
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/fl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/ugeno/core/iMK;",
        "Lcom/bytedance/adsdk/ugeno/core/pA;",
        "Lcom/bytedance/sdk/component/adexpress/cJ/fl<",
        "Landroid/view/View;",
        ">;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/fl;"
    }
.end annotation


# static fields
.field private static CQU:F = 0.0f

.field private static Dww:J = 0x0L

.field private static Eh:F = 0.0f

.field protected static Gm:I = 0x18

.field private static aP:F

.field private static pM:F


# instance fields
.field public ABk:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field protected CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private EBS:J

.field private final HzH:Z

.field private Jma:Lorg/json/JSONObject;

.field private MQ:F

.field private NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

.field protected Qhi:Lcom/bytedance/adsdk/ugeno/core/Gm;

.field protected ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

.field protected Sf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected Tgh:Landroid/widget/FrameLayout;

.field protected WAv:Z

.field protected ac:Lcom/bytedance/adsdk/ugeno/component/cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/component/cJ<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private bxS:J

.field protected cJ:Landroid/content/Context;

.field private es:Z

.field protected fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

.field protected hm:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private hpZ:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

.field private iMK:Lorg/json/JSONObject;

.field private final js:Lcom/bytedance/sdk/component/Sf/hm;

.field private kYc:F

.field private lB:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private lG:Ljava/lang/String;

.field private pA:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

.field private qMt:F

.field private sDy:Ljava/lang/String;

.field private tP:F

.field protected zc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final zn:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->cJ()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Gm:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;Landroid/view/ViewGroup;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->WAv:Z

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ABk:Landroid/util/SparseArray;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->lG:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;

    const-string v1, "ugen_render_template"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->js:Lcom/bytedance/sdk/component/Sf/hm;

    .line 103
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->zn:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->es:Z

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ:Landroid/content/Context;

    .line 118
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->HzH:Z

    .line 119
    new-instance p3, Lcom/bytedance/adsdk/ugeno/core/Gm;

    invoke-direct {p3, p1}, Lcom/bytedance/adsdk/ugeno/core/Gm;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi:Lcom/bytedance/adsdk/ugeno/core/Gm;

    .line 120
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 121
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    .line 122
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    .line 123
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Sf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    instance-of p1, p5, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz p1, :cond_0

    .line 125
    check-cast p5, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->lB:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 127
    :cond_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->CJ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->sDy:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->aP()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Jma:Lorg/json/JSONObject;

    .line 129
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ:Landroid/content/Context;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->CJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->sDy:Ljava/lang/String;

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Jma:Lorg/json/JSONObject;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->lB:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->lG:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->iMK:Lorg/json/JSONObject;

    return-object p1
.end method

.method private Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V
    .locals 12

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->pA:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object v0

    .line 273
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v1, "swiperLeft"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->cJ()V

    return-void

    .line 278
    :cond_1
    const-string v1, "swiperRight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->ac()V

    return-void

    .line 284
    :cond_2
    const-string v1, "swiperClick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    if-eqz v1, :cond_3

    .line 285
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)Z

    move-result v1

    .line 287
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->CJ()Lorg/json/JSONObject;

    move-result-object v4

    move v5, v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move v1, v3

    move v5, v1

    .line 289
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "creative"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v11, v7

    goto :goto_1

    :sswitch_1
    const-string v6, "video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v11, v8

    goto :goto_1

    :sswitch_2
    const-string v6, "skip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v11, v9

    goto :goto_1

    :sswitch_3
    const-string v6, "mute"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move v11, v2

    goto :goto_1

    :sswitch_4
    const-string v6, "feedback"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    move v11, v10

    goto :goto_1

    :sswitch_5
    const-string v6, "privacy"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    move v11, v3

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move v5, v2

    goto :goto_2

    :pswitch_1
    move v5, v8

    goto :goto_2

    :pswitch_2
    const/4 v5, 0x6

    goto :goto_2

    :pswitch_3
    move v5, v7

    goto :goto_2

    :pswitch_4
    move v5, v9

    goto :goto_2

    :pswitch_5
    const/4 v5, 0x7

    .line 309
    :goto_2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi()Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v0

    .line 310
    new-array v6, v2, [I

    .line 311
    new-array v2, v2, [I

    .line 312
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->zc:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_b

    .line 313
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;)[I

    move-result-object v7

    if-eqz v7, :cond_a

    move-object v6, v7

    .line 317
    :cond_a
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->zc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/view/View;)[I

    move-result-object v7

    if-eqz v7, :cond_b

    move-object v2, v7

    .line 322
    :cond_b
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;-><init>()V

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->kYc:F

    .line 323
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v7

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->tP:F

    .line 324
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v7

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->MQ:F

    .line 325
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v7

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->qMt:F

    .line 326
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v7

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->EBS:J

    .line 327
    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(J)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v7

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->bxS:J

    .line 328
    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(J)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v7

    aget v8, v6, v3

    .line 329
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v7

    aget v6, v6, v10

    .line 330
    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v6

    aget v3, v2, v3

    .line 331
    invoke-virtual {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->fl(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    aget v2, v2, v10

    .line 332
    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ABk:Landroid/util/SparseArray;

    .line 333
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v2

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->WAv:Z

    .line 334
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v2

    if-nez v0, :cond_c

    const-string v0, ""

    goto :goto_3

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->pA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->iMK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(Z)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/pA;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->pA:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi()Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object p1

    invoke-interface {v1, p1, v5, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/hm;->Qhi(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ac;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_5
        -0xb6a147b -> :sswitch_4
        0x335219 -> :sswitch_3
        0x35e57f -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x6c816faf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    return-void
.end method

.method private Qhi(Ljava/lang/CharSequence;ZIZ)V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v0

    .line 405
    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 410
    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    const-string v2, "parse duration exception"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "UGenRender"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-nez p4, :cond_5

    if-lez v2, :cond_5

    .line 414
    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->es:Z

    if-eqz p4, :cond_2

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_3

    .line 419
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->Qhi()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->CJ()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/CJ/Dww;->cJ(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 420
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object p1

    const-string p2, "tt_reward_full_skip"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/MQ;->Qhi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 420
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 424
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->CJ()Ljava/lang/String;

    move-result-object p2

    const-string p3, "open_ad"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->Qhi()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    .line 425
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->es:Z

    .line 426
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 430
    :cond_4
    check-cast v0, Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 415
    :cond_5
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 252
    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "nodeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 259
    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac(I)V

    return-void

    .line 261
    :cond_2
    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    .line 262
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac(I)V

    :cond_3
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)Lcom/bytedance/sdk/component/adexpress/cJ/Sf;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->hpZ:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->zn:Ljava/lang/Runnable;

    return-object p0
.end method

.method private cJ(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->NFd()Lcom/bytedance/adsdk/ugeno/core/HzH;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/HzH;->Qhi()V

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->iMK:Lorg/json/JSONObject;

    const/16 v1, 0x85

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ugen template is null real reason is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->lG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Jma:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 145
    const-string v0, "ugen data is null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi:Lcom/bytedance/adsdk/ugeno/core/Gm;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/Gm;->Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;)V

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi:Lcom/bytedance/adsdk/ugeno/core/Gm;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/Gm;->Qhi(Lcom/bytedance/adsdk/ugeno/core/pA;)V

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi:Lcom/bytedance/adsdk/ugeno/core/Gm;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->iMK:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Gm;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    .line 151
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->NFd()Lcom/bytedance/adsdk/ugeno/core/HzH;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/HzH;->cJ()V

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->NFd()Lcom/bytedance/adsdk/ugeno/core/HzH;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/HzH;->ac()V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi:Lcom/bytedance/adsdk/ugeno/core/Gm;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Jma:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Gm;->cJ(Lorg/json/JSONObject;)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-eqz v0, :cond_a

    .line 159
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/cJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/cJ;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(Z)V

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(I)V

    .line 162
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->HzH:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->setSoundMute(Z)V

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->hm:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-eqz v0, :cond_3

    .line 164
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/video/Qhi;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/cJ;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/video/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/video/Qhi;->MQ()Lcom/bytedance/adsdk/ugeno/component/frame/UGFrameLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/cJ;->Qhi(Landroid/widget/FrameLayout;)V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    const-string v1, "feedback"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    if-eqz v1, :cond_4

    .line 169
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi()V

    :cond_4
    if-eqz v0, :cond_5

    .line 171
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 172
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->zc:Ljava/lang/ref/WeakReference;

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hpZ()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->HzH()I

    move-result v1

    .line 177
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->pM()F

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->fl:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->Eh()F

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 182
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_6

    .line 192
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    const/4 v7, -0x2

    invoke-direct {v6, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 194
    :cond_6
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v7, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-lez v5, :cond_8

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_7

    goto :goto_1

    .line 206
    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(D)V

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->cJ(D)V

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x0

    .line 197
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 198
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 199
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v1

    .line 203
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(D)V

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->cJ(D)V

    .line 209
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Sf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x89

    .line 210
    const-string v1, "ugen render timeout"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void

    .line 212
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ROR:Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    return-void

    :cond_a
    const/16 v0, 0x8a

    .line 215
    const-string v1, "ugen render error"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/Sf;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method private cJ(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    .line 434
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    const-string p3, "skip"

    invoke-virtual {p1, p3}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const/16 p3, 0x8

    .line 445
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;Landroid/view/MotionEvent;)V
    .locals 11

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, -0x1

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    :goto_0
    move v4, v2

    goto/16 :goto_2

    .line 356
    :cond_0
    sget p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Eh:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->CQU:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p1, v2

    sput p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Eh:F

    .line 357
    sget p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->aP:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->pM:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p1, v2

    sput p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->aP:F

    .line 358
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->CQU:F

    .line 359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->pM:F

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Dww:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    .line 361
    sget p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Eh:F

    sget v2, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Gm:I

    int-to-float v4, v2

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_2

    sget p1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->aP:F

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 367
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->kYc:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Gm:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->tP:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Gm:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_4

    .line 368
    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->WAv:Z

    :cond_4
    move v2, v1

    .line 371
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->MQ:F

    .line 372
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->qMt:F

    .line 373
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->MQ:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->kYc:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Gm:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_6

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->qMt:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->tP:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Gm:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_7

    .line 374
    :cond_6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->WAv:Z

    .line 376
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->bxS:J

    goto/16 :goto_0

    .line 347
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->EBS:J

    .line 348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->kYc:F

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->tP:F

    .line 350
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->WAv:Z

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Dww:J

    .line 353
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/fl/ac;->Qhi(Landroid/view/MotionEvent;)V

    move v4, v0

    .line 379
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ABk:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    float-to-double v5, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    float-to-double v7, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;-><init>(IDDJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;Lcom/bytedance/adsdk/ugeno/core/iMK$Qhi;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 238
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V

    .line 240
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ()I

    move-result p3

    const/16 v0, 0xa

    if-ne p3, v0, :cond_3

    .line 241
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lorg/json/JSONObject;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 243
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->CJ()Lcom/bytedance/adsdk/ugeno/core/zc;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 244
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->CJ()Lcom/bytedance/adsdk/ugeno/core/zc;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V

    :cond_4
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->hpZ:Lcom/bytedance/sdk/component/adexpress/cJ/Sf;

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->js:Lcom/bytedance/sdk/component/Sf/hm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/hm;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->pA:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->NFd:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V

    :cond_0
    return-void
.end method

.method public Qhi(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 388
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Ljava/lang/CharSequence;ZIZ)V

    .line 389
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->cJ(Ljava/lang/CharSequence;ZIZ)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Sf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public ac()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public d_()V
    .locals 0

    return-void
.end method

.method public fl()Landroid/view/View;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Tgh:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setSoundMute(Z)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    if-nez v0, :cond_0

    return-void

    .line 454
    :cond_0
    const-string v1, "mute"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 457
    move-object p1, v0

    check-cast p1, Lcom/bytedance/adsdk/ugeno/component/image/cJ;

    const-string v1, "local://tt_reward_full_mute"

    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/component/image/cJ;->fl(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_1
    move-object p1, v0

    check-cast p1, Lcom/bytedance/adsdk/ugeno/component/image/cJ;

    const-string v1, "local://tt_reward_full_unmute"

    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/component/image/cJ;->fl(Ljava/lang/String;)V

    .line 461
    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ()V

    :cond_2
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    return-void
.end method
