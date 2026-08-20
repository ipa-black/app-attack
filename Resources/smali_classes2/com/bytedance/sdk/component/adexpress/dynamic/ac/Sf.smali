.class public Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;
.super Ljava/lang/Object;
.source "DynamicLayoutNativeValue.java"


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

.field public Qhi:I

.field private Tgh:Ljava/lang/String;

.field public ac:Lorg/json/JSONObject;

.field public cJ:Ljava/lang/String;

.field private fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->Qhi()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi:I

    .line 62
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->cJ:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->EGK()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->ac:Lorg/json/JSONObject;

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->CJ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Tgh:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->ac()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ROR()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    .line 70
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    :cond_1
    return-void
.end method

.method private Oy()Z
    .locals 3

    .line 365
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->cJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->cJ:Ljava/lang/String;

    const-string v2, "adx:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ABk;->cJ()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public static Qhi(Ljava/lang/String;)I
    .locals 5

    .line 375
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    return v1

    .line 378
    :cond_0
    const-string v0, "transparent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 382
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_2

    .line 383
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 385
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    .line 386
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 389
    :cond_3
    const-string v0, "rgba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 393
    :cond_4
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const-string v4, ")"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 394
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 396
    :try_start_0
    array-length v0, p0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    .line 397
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 398
    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v3, 0x2

    .line 399
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x3

    .line 400
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p0, v2

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    float-to-int v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    float-to-int v0, v3

    or-int/2addr p0, v0

    return p0

    :catch_0
    return v2

    :cond_5
    return v1
.end method

.method private SL()Z
    .locals 5

    .line 315
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result v0

    const-string v1, "logoad"

    const-string v2, "logounion"

    const/4 v3, 0x1

    const-string v4, "logo-union"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    .line 316
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    .line 317
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v3

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    .line 321
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    .line 322
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v3
.end method

.method public static cJ(Ljava/lang/String;)[F
    .locals 8

    .line 413
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 414
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    .line 415
    array-length v2, p0

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    .line 416
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 417
    aget-object v4, p0, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x2

    .line 418
    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/4 v7, 0x3

    .line 419
    aget-object p0, p0, v7

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 420
    new-array v0, v0, [F

    aput v3, v0, v2

    aput v4, v0, v1

    aput v6, v0, v5

    aput p0, v0, v7

    return-object v0

    .line 422
    :cond_0
    new-array p0, v0, [F

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public ABk()D
    .locals 4

    .line 167
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi:I

    const/16 v1, 0xb

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    if-ne v0, v1, :cond_1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->cJ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    double-to-int v0, v0

    int-to-double v0, v0

    :cond_0
    return-wide v0

    :catch_0
    :cond_1
    return-wide v2
.end method

.method public CJ()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->hpZ()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public CQU()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Ls()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Dq()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->NFd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Dww()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->yN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EBS()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->xyz()Z

    move-result v0

    return v0
.end method

.method public EGK()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Ki()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Eh()I
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->yN()Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-time-skip-btn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    .line 272
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-countdowns-skip-btn"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-time-countdown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    .line 276
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v1

    const-string v3, "skip-with-time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 279
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->FQ()Ljava/lang/String;

    move-result-object v1

    const-string v3, "click"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    return v0

    .line 282
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->SL()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Oy()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 285
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->SL()Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_4

    return v3

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v1

    const-string v4, "feedback-dislike"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    return v0

    .line 291
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 294
    :cond_6
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    .line 295
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->Qhi()I

    move-result v1

    const-string v4, "normal"

    if-ne v1, v3, :cond_7

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 301
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    return v0

    .line 304
    :cond_8
    const-string v1, "creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    return v1

    .line 307
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->FQ()Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v3, "slide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    return v2

    .line 296
    :cond_b
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Ug()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    return v0

    :cond_c
    const/4 v0, 0x4

    return v0

    :cond_d
    :goto_1
    return v2

    :cond_e
    :goto_2
    const/4 v0, 0x6

    return v0
.end method

.method public FQ()I
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Ura()I

    move-result v0

    return v0
.end method

.method public Gm()Ljava/lang/String;
    .locals 2

    .line 149
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->cJ:Ljava/lang/String;

    return-object v0

    .line 152
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public Gy()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->cJP()Z

    move-result v0

    return v0
.end method

.method public HLI()I
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Jma()I

    move-result v0

    return v0
.end method

.method public Hf()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->gT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HzH()F
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->zc()F

    move-result v0

    return v0
.end method

.method public Jma()I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->CJ()I

    move-result v0

    return v0
.end method

.method public MND()I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Px()I

    move-result v0

    return v0
.end method

.method public MQ()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->SNp()Z

    move-result v0

    return v0
.end method

.method public NBs()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->zTC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public NFd()D
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Sf()D

    move-result-wide v0

    return-wide v0
.end method

.method public PAe()I
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Ri()I

    move-result v0

    return v0
.end method

.method public PER()I
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->HUk()I

    move-result v0

    return v0
.end method

.method public Qe()I
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->IC()I

    move-result v0

    return v0
.end method

.method public Qhi()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->iMK()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public Qhi(F)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Qhi(F)V

    return-void
.end method

.method public Qhi(I)Z
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 430
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ROR()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    .line 434
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public ROR()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->EBS()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ReL()I
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->bM()I

    move-result v0

    return v0
.end method

.method public Ri()I
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Wrw()I

    move-result v0

    return v0
.end method

.method public Sf()I
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->qMt()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    return v0

    .line 121
    :cond_0
    const-string v1, "center"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    return v0

    .line 124
    :cond_1
    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public Tgh()Ljava/lang/String;
    .locals 2

    .line 100
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi:I

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->cJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->cJ:Ljava/lang/String;

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->ac:Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->ac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public Ura()I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->TKG()I

    move-result v0

    return v0
.end method

.method public VnT()Z
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->XH()Z

    move-result v0

    return v0
.end method

.method public WAv()Ljava/lang/String;
    .locals 2

    .line 142
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    const-string v0, ""

    return-object v0

    .line 143
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public YB()I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->mZ()I

    move-result v0

    return v0
.end method

.method public aP()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->bxS()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ac()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->pA()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public bxS()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->jPH()I

    move-result v0

    return v0
.end method

.method public cJ()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->HzH()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public cjC()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->cJP()Z

    move-result v0

    return v0
.end method

.method public dI()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->ABk()Z

    move-result v0

    return v0
.end method

.method public dIT()I
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->ne()I

    move-result v0

    return v0
.end method

.method public dVA()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->lB()Z

    move-result v0

    return v0
.end method

.method public es()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->FQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public et()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->CQU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fl()F
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->kYc()F

    move-result v0

    return v0
.end method

.method public gga()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->SO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hm()I
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Sf()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x800005

    return v0

    :cond_1
    const v0, 0x800003

    return v0
.end method

.method public hpZ()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->pM()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Qhi(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public iMK()D
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->tP()D

    move-result-wide v0

    return-wide v0
.end method

.method public ip()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->es()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jPH()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->ROR()I

    move-result v0

    return v0
.end method

.method public js()I
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->hm()I

    move-result v0

    return v0
.end method

.method public kYc()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->HWc()I

    move-result v0

    return v0
.end method

.method public lB()I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->cJ()I

    move-result v0

    return v0
.end method

.method public lG()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->fl()I

    move-result v0

    return v0
.end method

.method public oU()D
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->js()D

    move-result-wide v0

    return-wide v0
.end method

.method public ots()I
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->lG()I

    move-result v0

    return v0
.end method

.method public pA()F
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Gm()F

    move-result v0

    return v0
.end method

.method public pM()J
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->KW()J

    move-result-wide v0

    return-wide v0
.end method

.method public pv()D
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->zn()D

    move-result-wide v0

    return-wide v0
.end method

.method public qMt()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Dww()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sDy()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->ac()I

    move-result v0

    return v0
.end method

.method public tP()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->YD()I

    move-result v0

    return v0
.end method

.method public xyz()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->vml()Z

    move-result v0

    return v0
.end method

.method public yN()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->VnT()Z

    move-result v0

    return v0
.end method

.method public zc()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->Tgh:Ljava/lang/String;

    return-object v0
.end method

.method public zjb()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->sDy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zn()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->WAv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
