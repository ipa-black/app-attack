.class public abstract Lcom/bytedance/adsdk/ugeno/component/cJ;
.super Ljava/lang/Object;
.source "UGenWidget.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/ac;
.implements Lcom/bytedance/adsdk/ugeno/core/iMK$Qhi;
.implements Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/ugeno/ac;",
        "Lcom/bytedance/adsdk/ugeno/core/iMK$Qhi;",
        "Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;"
    }
.end annotation


# instance fields
.field protected ABk:F

.field protected CJ:Lorg/json/JSONObject;

.field protected CQU:Z

.field private Dq:Lcom/bytedance/adsdk/ugeno/core/cJ/Tgh;

.field protected Dww:Z

.field protected EBS:F

.field private EGK:Z

.field protected Eh:Z

.field protected FQ:F

.field protected Gm:Ljava/lang/String;

.field private Gy:F

.field private HLI:Lcom/bytedance/adsdk/ugeno/core/HzH;

.field private Hf:Lcom/bytedance/adsdk/ugeno/core/cJ/cJ;

.field protected HzH:F

.field protected Jma:F

.field protected MND:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/adsdk/ugeno/core/zc;",
            ">;"
        }
    .end annotation
.end field

.field protected MQ:F

.field private NBs:Lcom/bytedance/adsdk/ugeno/core/cJ/Qhi;

.field protected NFd:Ljava/lang/String;

.field protected PAe:Z

.field private PER:F

.field private Qe:Z

.field private Qhi:Landroid/graphics/drawable/GradientDrawable;

.field protected ROR:Lcom/bytedance/adsdk/ugeno/component/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/component/Qhi<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private ReL:Z

.field private Ri:Z

.field protected Sf:Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;

.field protected Tgh:Lcom/bytedance/adsdk/ugeno/component/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/component/Qhi<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private Ura:Z

.field private VnT:Lorg/json/JSONObject;

.field protected WAv:Ljava/lang/String;

.field private YB:Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;

.field protected aP:I

.field protected ac:Lorg/json/JSONObject;

.field protected bxS:F

.field protected cJ:Landroid/content/Context;

.field private cjC:Lcom/bytedance/adsdk/ugeno/core/Qhi;

.field private dI:Lcom/bytedance/adsdk/ugeno/core/hm;

.field private dIT:Ljava/lang/String;

.field private dVA:Ljava/lang/String;

.field protected es:I

.field protected fl:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private gga:Z

.field protected hm:Lcom/bytedance/adsdk/ugeno/core/WAv;

.field protected hpZ:F

.field protected iMK:F

.field protected ip:Lcom/bytedance/adsdk/ugeno/core/Sf;

.field protected jPH:Lcom/bytedance/adsdk/ugeno/core/pA;

.field protected js:F

.field protected kYc:F

.field protected lB:F

.field protected lG:F

.field private oU:Z

.field private ots:Z

.field protected pA:F

.field protected pM:Z

.field private pv:Z

.field protected qMt:F

.field protected sDy:F

.field protected tP:F

.field protected xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

.field protected yN:I

.field protected zc:F

.field private zjb:Z

.field protected zn:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/component/Qhi;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/component/Qhi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/adsdk/ugeno/component/Qhi<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40000000    # -2.0f

    .line 75
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zc:F

    .line 76
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ABk:F

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->yN:I

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->PAe:Z

    .line 129
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->gga:Z

    .line 131
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Ri:Z

    .line 132
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Ura:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 134
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->PER:F

    const/high16 v0, 0x41400000    # 12.0f

    .line 189
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Gy:F

    .line 196
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Tgh:Lcom/bytedance/adsdk/ugeno/component/Qhi;

    .line 198
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    .line 199
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    .line 200
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/adsdk/ugeno/component/cJ;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zjb:Z

    return p0
.end method

.method private Qhi()V
    .locals 4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->WAv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Gm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 368
    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const-string v2, "1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/core/zc;

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 372
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 376
    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private Sf()V
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->NFd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 473
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qe:Z

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->YB:Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;

    if-eqz v0, :cond_2

    .line 475
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;->Qhi:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->YB:Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;

    iget-object v1, v1, Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;->cJ:[I

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->YB:Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;

    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;->ac:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->YB:Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;

    iget-object v1, v1, Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;->cJ:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->aP:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 485
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->sDy:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 486
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zn:F

    float-to-int v1, v1

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->es:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 487
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->NFd:Ljava/lang/String;

    const-string v1, "local://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->NFd:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 493
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    .line 494
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 495
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 496
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    .line 497
    invoke-static {v3, v0}, Lcom/bytedance/adsdk/ugeno/cJ/fl;->cJ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    .line 498
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 500
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/adsdk/ugeno/component/cJ;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->gga:Z

    return p0
.end method


# virtual methods
.method public ABk()Lcom/bytedance/adsdk/ugeno/component/Qhi;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Tgh:Lcom/bytedance/adsdk/ugeno/component/Qhi;

    return-object v0
.end method

.method public CJ()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->HLI:Lcom/bytedance/adsdk/ugeno/core/HzH;

    if-eqz v0, :cond_0

    .line 821
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->oU:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 822
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->oU:Z

    :cond_0
    return-void
.end method

.method public CJ(Ljava/lang/String;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Gm:Ljava/lang/String;

    return-void
.end method

.method public Gm()Lorg/json/JSONObject;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac:Lorg/json/JSONObject;

    return-object v0
.end method

.method public HzH()I
    .locals 1

    .line 577
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ABk:F

    float-to-int v0, v0

    return v0
.end method

.method protected Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/ugeno/component/cJ<",
            "TT;>;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->WAv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->WAv:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi(IIII)V
    .locals 0

    .line 868
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->HLI:Lcom/bytedance/adsdk/ugeno/core/HzH;

    if-eqz p1, :cond_0

    .line 869
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->EGK:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 870
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->EGK:Z

    :cond_0
    return-void
.end method

.method protected Qhi(ILorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/core/zc;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 800
    const-string v0, "success"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/zc;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/core/zc;-><init>()V

    .line 803
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(Lorg/json/JSONObject;)V

    .line 804
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    .line 805
    invoke-virtual {p3, v1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V

    .line 807
    :cond_0
    const-string v0, "fail"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/zc;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/core/zc;-><init>()V

    .line 810
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(Lorg/json/JSONObject;)V

    .line 811
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    .line 812
    invoke-virtual {p3, v1}, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ(Lcom/bytedance/adsdk/ugeno/core/zc;)V

    .line 814
    :cond_1
    invoke-virtual {p3, p2}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(Lorg/json/JSONObject;)V

    .line 815
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Qhi(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/ugeno/core/IAnimation;)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->dI:Lcom/bytedance/adsdk/ugeno/core/hm;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/hm;->Qhi(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/ugeno/core/IAnimation;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/Qhi;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Tgh:Lcom/bytedance/adsdk/ugeno/component/Qhi;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/HzH;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->HLI:Lcom/bytedance/adsdk/ugeno/core/HzH;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Sf:Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/Sf;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ip:Lcom/bytedance/adsdk/ugeno/core/Sf;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/WAv;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->hm:Lcom/bytedance/adsdk/ugeno/core/WAv;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/pA;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->jPH:Lcom/bytedance/adsdk/ugeno/core/pA;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 900
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->ac()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "nodeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    .line 909
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac(I)V

    .line 910
    invoke-virtual {p0, p0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/component/Qhi;

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ROR:Lcom/bytedance/adsdk/ugeno/component/Qhi;

    .line 911
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ROR:Lcom/bytedance/adsdk/ugeno/component/Qhi;

    if-eqz v1, :cond_1

    .line 912
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/component/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 914
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "availability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "marginLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "borderRightBottomRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "onLongTap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "onScroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "borderLeftTopRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "onPullToRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "animatorSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "onAnimation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "marginRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "onExposure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "paddingRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "onLoadMore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "paddingBottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "onTap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "paddingTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "i18n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "borderLeftBottomRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "marginBottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "triggerFunc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "backgroundDrawable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "onDown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "marginTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "borderRightTopRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "margin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    move v5, v1

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_0

    :cond_25
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_25
    const-string v0, "background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_26
    const-string v0, "onTimer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_27
    const-string v0, "onSlide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_0

    :cond_28
    move v5, v2

    goto :goto_0

    :sswitch_28
    const-string v0, "onShake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_0

    :cond_29
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_29
    const-string v0, "onDelay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2a
    const-string v0, "paddingLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_0

    :cond_2b
    move v5, v4

    goto :goto_0

    :sswitch_2b
    const-string v0, "clickable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_0

    :cond_2c
    move v5, v3

    :goto_0
    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v6, -0x40800000    # -1.0f

    const-string v7, "wrap_content"

    const-string v8, "match_parent"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 686
    :pswitch_0
    const-string p1, "unavailable"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v4

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->PAe:Z

    return-void

    .line 655
    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->pA:F

    return-void

    .line 643
    :pswitch_2
    const-string p1, "visible"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 644
    iput v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->yN:I

    return-void

    .line 645
    :cond_2d
    const-string p1, "invisible"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 646
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->yN:I

    return-void

    .line 647
    :cond_2e
    const-string p1, "gone"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 648
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->yN:I

    return-void

    .line 710
    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->js:F

    return-void

    .line 701
    :pswitch_4
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->sDy:F

    return-void

    .line 707
    :pswitch_5
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->lB:F

    return-void

    .line 748
    :pswitch_6
    invoke-static {p2, p0}, Lcom/bytedance/adsdk/ugeno/core/Qhi;->Qhi(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/core/Qhi;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cjC:Lcom/bytedance/adsdk/ugeno/core/Qhi;

    return-void

    .line 658
    :pswitch_7
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->hpZ:F

    return-void

    .line 719
    :pswitch_8
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zn:F

    return-void

    .line 716
    :pswitch_9
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cJ/Qhi;->Qhi(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->es:I

    return-void

    .line 674
    :pswitch_a
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->qMt:F

    .line 675
    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->CQU:Z

    return-void

    .line 682
    :pswitch_b
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->bxS:F

    .line 683
    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Eh:Z

    return-void

    .line 623
    :pswitch_c
    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 624
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zc:F

    goto :goto_1

    .line 625
    :cond_2f
    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 626
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zc:F

    goto :goto_1

    .line 628
    :cond_30
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zc:F

    .line 630
    :goto_1
    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Ri:Z

    return-void

    :pswitch_d
    const/4 p1, 0x0

    .line 728
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->FQ:F

    return-void

    .line 725
    :pswitch_e
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->dIT:Ljava/lang/String;

    return-void

    .line 678
    :pswitch_f
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->EBS:F

    .line 679
    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->pM:Z

    return-void

    .line 620
    :pswitch_10
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Gm:Ljava/lang/String;

    return-void

    :pswitch_11
    const/4 p1, 0x0

    .line 731
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/cJ;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->VnT:Lorg/json/JSONObject;

    return-void

    .line 617
    :pswitch_12
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->WAv:Ljava/lang/String;

    return-void

    .line 704
    :pswitch_13
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->lG:F

    return-void

    .line 661
    :pswitch_14
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->kYc:F

    return-void

    .line 752
    :pswitch_15
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->dVA:Ljava/lang/String;

    return-void

    .line 667
    :pswitch_16
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->tP:F

    return-void

    .line 722
    :pswitch_17
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->NFd:Ljava/lang/String;

    return-void

    .line 664
    :pswitch_18
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->HzH:F

    return-void

    .line 713
    :pswitch_19
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Jma:F

    return-void

    .line 652
    :pswitch_1a
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->iMK:F

    return-void

    .line 633
    :pswitch_1b
    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 634
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ABk:F

    goto :goto_2

    .line 635
    :cond_31
    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 636
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ABk:F

    goto :goto_2

    .line 638
    :cond_32
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ABk:F

    .line 640
    :goto_2
    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Ura:Z

    return-void

    :pswitch_1c
    const/high16 p1, 0x3f800000    # 1.0f

    .line 755
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->PER:F

    :cond_33
    :goto_3
    return-void

    .line 689
    :pswitch_1d
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cJ/Qhi;->ac(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 690
    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qe:Z

    .line 691
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cJ/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->YB:Lcom/bytedance/adsdk/ugeno/cJ/Qhi$Qhi;

    return-void

    .line 693
    :cond_34
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/cJ/Qhi;->Qhi(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->aP:I

    .line 694
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qe:Z

    return-void

    .line 745
    :pswitch_1e
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 670
    :pswitch_1f
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cJ/hm;->Qhi(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MQ:F

    .line 671
    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Dww:Z

    return-void

    .line 698
    :pswitch_20
    invoke-static {p2, v4}, Lcom/bytedance/adsdk/ugeno/cJ/ac;->Qhi(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->gga:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x751aa91e -> :sswitch_2b
        -0x597a2048 -> :sswitch_2a
        -0x5089711c -> :sswitch_29
        -0x4fb4db99 -> :sswitch_28
        -0x4fb2ecee -> :sswitch_27
        -0x4fa6235a -> :sswitch_26
        -0x4f67aad2 -> :sswitch_25
        -0x4b8807f5 -> :sswitch_24
        -0x48c76ed9 -> :sswitch_23
        -0x40737a52 -> :sswitch_22
        -0x3ee27929 -> :sswitch_21
        -0x3e464339 -> :sswitch_20
        -0x3c6760df -> :sswitch_1f
        -0x37a9d414 -> :sswitch_1e
        -0x300fc3ef -> :sswitch_1d
        -0x289caf64 -> :sswitch_1c
        -0x113c6e87 -> :sswitch_1b
        -0xab09770 -> :sswitch_1a
        0xd1b -> :sswitch_19
        0x307a1e -> :sswitch_18
        0x337a8b -> :sswitch_17
        0x55f4784 -> :sswitch_16
        0x5a5c588 -> :sswitch_15
        0x64f7944 -> :sswitch_14
        0x674500b -> :sswitch_13
        0x6be2dc6 -> :sswitch_12
        0xc0fb19c -> :sswitch_11
        0x1318b45a -> :sswitch_10
        0x2a8c788b -> :sswitch_f
        0x2b158697 -> :sswitch_e
        0x2c2c84fa -> :sswitch_d
        0x324da006 -> :sswitch_c
        0x3a1ea90e -> :sswitch_b
        0x40d55865 -> :sswitch_a
        0x44a7dbfb -> :sswitch_9
        0x450b7f7c -> :sswitch_8
        0x4b158134 -> :sswitch_7
        0x506afbde -> :sswitch_6
        0x58dabd8c -> :sswitch_5
        0x646f20a8 -> :sswitch_4
        0x64d75c0d -> :sswitch_3
        0x73b66312 -> :sswitch_2
        0x757a12d5 -> :sswitch_1
        0x7710155b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1e
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_1e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_1e
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1e
        :pswitch_7
        :pswitch_1e
        :pswitch_6
        :pswitch_1e
        :pswitch_5
        :pswitch_4
        :pswitch_1e
        :pswitch_1e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 5

    .line 221
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->CJ:Lorg/json/JSONObject;

    .line 222
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Tgh:Lcom/bytedance/adsdk/ugeno/component/Qhi;

    instance-of v2, v1, Lcom/bytedance/adsdk/ugeno/component/Qhi;

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/component/Qhi;->Sf()Lcom/bytedance/adsdk/ugeno/component/Qhi$Qhi;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 231
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/bytedance/adsdk/ugeno/Qhi/ac;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {p0, v2, v3}, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 236
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v3}, Lcom/bytedance/adsdk/ugeno/component/Qhi$Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 240
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/component/Qhi$Qhi;->Qhi()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :cond_4
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->VnT:Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->CJ:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 244
    :try_start_0
    const-string v1, "i18n"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string p1, "nxb"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->WAv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->VnT:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public Qhi(II)[I
    .locals 4

    .line 841
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->FQ:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 842
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Ri:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 843
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 844
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->FQ:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1

    int-to-float p2, v0

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 846
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 848
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Ura:Z

    if-eqz v0, :cond_1

    .line 849
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 850
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->FQ:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1

    int-to-float p1, v0

    mul-float/2addr p1, v3

    float-to-int p1, p1

    .line 852
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 857
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->HLI:Lcom/bytedance/adsdk/ugeno/core/HzH;

    if-eqz v0, :cond_2

    .line 858
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->pv:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 859
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->pv:Z

    .line 863
    :cond_2
    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method public ROR()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->dI:Lcom/bytedance/adsdk/ugeno/core/hm;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/hm;->cJ()V

    :cond_0
    return-void
.end method

.method public Tgh()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cjC:Lcom/bytedance/adsdk/ugeno/core/Qhi;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/hm;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cjC:Lcom/bytedance/adsdk/ugeno/core/Qhi;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/core/hm;-><init>(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/core/Qhi;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->dI:Lcom/bytedance/adsdk/ugeno/core/hm;

    .line 389
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/hm;->Qhi()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Hf:Lcom/bytedance/adsdk/ugeno/core/cJ/cJ;

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Hf:Lcom/bytedance/adsdk/ugeno/core/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/cJ/cJ;->Qhi()V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Dq:Lcom/bytedance/adsdk/ugeno/core/cJ/Tgh;

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Dq:Lcom/bytedance/adsdk/ugeno/core/cJ/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/cJ/Tgh;->Qhi()V

    :cond_2
    return-void
.end method

.method public WAv()Lorg/json/JSONObject;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->CJ:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ac()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public ac(I)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->WAv:Ljava/lang/String;

    return-void
.end method

.method public cJ(Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/component/cJ;
    .locals 1

    .line 932
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ABk()Lcom/bytedance/adsdk/ugeno/component/Qhi;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/component/Qhi;

    if-eqz v0, :cond_0

    return-object p1

    .line 935
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->ABk()Lcom/bytedance/adsdk/ugeno/component/Qhi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(Lcom/bytedance/adsdk/ugeno/component/cJ;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    return-object p1
.end method

.method public cJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/ugeno/component/cJ<",
            "TT;>;"
        }
    .end annotation

    .line 530
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/component/cJ;

    move-result-object p1

    return-object p1
.end method

.method public cJ()V
    .locals 7

    .line 259
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->Sf()V

    .line 260
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->PER:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 261
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Dww:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MQ:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->tP:F

    .line 262
    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->CQU:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->qMt:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->tP:F

    .line 263
    :goto_1
    iget-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->pM:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->EBS:F

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->tP:F

    .line 264
    :goto_2
    iget-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Eh:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->bxS:F

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->tP:F

    .line 266
    :goto_3
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v2, v2

    float-to-int v1, v1

    float-to-int v3, v3

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 267
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->yN:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Sf:Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/component/cJ$1;

    invoke-direct {v2, p0}, Lcom/bytedance/adsdk/ugeno/component/cJ$1;-><init>(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 278
    :cond_4
    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zjb:Z

    if-nez v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/component/cJ$2;

    invoke-direct {v2, p0}, Lcom/bytedance/adsdk/ugeno/component/cJ$2;-><init>(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 294
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ots:Z

    .line 295
    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/cJ/fl;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/core/zc;

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/core/zc;

    iget-boolean v6, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ots:Z

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/bytedance/adsdk/ugeno/core/cJ/fl;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/adsdk/ugeno/core/zc;Z)V

    goto :goto_5

    .line 297
    :cond_6
    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/cJ/fl;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/core/zc;

    iget-boolean v5, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ots:Z

    invoke-direct {v3, v4, v0, v5}, Lcom/bytedance/adsdk/ugeno/core/cJ/fl;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/zc;Z)V

    goto :goto_5

    :cond_7
    move-object v3, v2

    .line 303
    :goto_5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zjb:Z

    if-eqz v0, :cond_8

    .line 304
    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/core/zc;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/zc;)V

    .line 307
    :cond_8
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 308
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/cJ/Qhi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->NBs:Lcom/bytedance/adsdk/ugeno/core/cJ/Qhi;

    .line 311
    new-instance v0, Lcom/bytedance/adsdk/ugeno/component/cJ$3;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/component/cJ$3;-><init>(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    .line 324
    :cond_9
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 325
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/cJ/Tgh;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/core/zc;

    invoke-direct {v1, v4, v0, p0}, Lcom/bytedance/adsdk/ugeno/core/cJ/Tgh;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Dq:Lcom/bytedance/adsdk/ugeno/core/cJ/Tgh;

    .line 326
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/core/cJ/Tgh;->Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;)V

    :cond_a
    const/16 v0, 0xa

    .line 330
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 331
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/cJ/cJ;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->cJ:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/core/zc;

    invoke-direct {v1, v4, v0, p0}, Lcom/bytedance/adsdk/ugeno/core/cJ/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Hf:Lcom/bytedance/adsdk/ugeno/core/cJ/cJ;

    .line 332
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/core/cJ/cJ;->Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;)V

    .line 337
    :cond_b
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/component/cJ$4;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/adsdk/ugeno/component/cJ$4;-><init>(Lcom/bytedance/adsdk/ugeno/component/cJ;Lcom/bytedance/adsdk/ugeno/core/cJ/ac;Lcom/bytedance/adsdk/ugeno/core/cJ/fl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 361
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi()V

    return-void
.end method

.method public cJ(IIII)V
    .locals 0

    .line 893
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->dI:Lcom/bytedance/adsdk/ugeno/core/hm;

    if-eqz p3, :cond_0

    .line 894
    invoke-virtual {p3, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/hm;->Qhi(II)V

    :cond_0
    return-void
.end method

.method protected cJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 763
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 767
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/core/ABk;->Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/ABk;->Qhi()I

    move-result p1

    .line 768
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/zc;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/zc;-><init>()V

    .line 769
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(I)V

    .line 770
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V

    .line 771
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 773
    const-string p2, "shakeAmplitude"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 775
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->CJ:Lorg/json/JSONObject;

    invoke-static {p2, v2}, Lcom/bytedance/adsdk/ugeno/Qhi/ac;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Gy:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/high16 p2, 0x41400000    # 12.0f

    .line 777
    :try_start_2
    iput p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Gy:F

    .line 780
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->xyz:Lcom/bytedance/adsdk/ugeno/core/iMK;

    instance-of v2, p2, Lcom/bytedance/adsdk/ugeno/core/Qhi/Qhi;

    if-nez v2, :cond_2

    .line 781
    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi(ILorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/core/zc;)V

    return-void

    .line 784
    :cond_2
    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/Qhi/Qhi;

    .line 785
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/core/Qhi/Qhi;->Qhi()Z

    move-result p2

    if-nez p2, :cond_3

    .line 786
    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/adsdk/ugeno/component/cJ;->Qhi(ILorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/core/zc;)V

    return-void

    .line 789
    :cond_3
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi(Lorg/json/JSONObject;)V

    .line 790
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    :goto_1
    return-void
.end method

.method public cJ(Lorg/json/JSONObject;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ac:Lorg/json/JSONObject;

    return-void
.end method

.method public cJ(I)Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->MND:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public fl()V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->HLI:Lcom/bytedance/adsdk/ugeno/core/HzH;

    if-eqz v0, :cond_0

    .line 832
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ReL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 833
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->ReL:Z

    :cond_0
    return-void
.end method

.method public hm()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->fl:Landroid/view/View;

    return-object v0
.end method

.method public hpZ()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->zc:F

    float-to-int v0, v0

    return v0
.end method

.method public iMK()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->WAv:Ljava/lang/String;

    return-object v0
.end method

.method public kYc()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->PAe:Z

    return v0
.end method

.method public pA()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Gm:Ljava/lang/String;

    return-object v0
.end method

.method public zc()Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/cJ;->Sf:Lcom/bytedance/adsdk/ugeno/core/ROR$Qhi;

    return-object v0
.end method
