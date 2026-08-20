.class public Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;
.super Ljava/lang/Object;
.source "DynamicLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;
    }
.end annotation


# static fields
.field private static ROR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

.field private Qhi:Lorg/json/JSONObject;

.field private Tgh:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;

.field private ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

.field private cJ:Lorg/json/JSONObject;

.field private fl:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/fl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    sput-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ROR:Ljava/util/HashMap;

    const-string v1, "subtitle"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ROR:Ljava/util/HashMap;

    const-string v1, "source"

    const-string v2, "source|app.app_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ROR:Ljava/util/HashMap;

    const-string v1, "screenshot"

    const-string v2, "dynamic_creative.screenshot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi:Lorg/json/JSONObject;

    .line 62
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->cJ:Lorg/json/JSONObject;

    .line 63
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    .line 64
    invoke-static {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    .line 65
    invoke-static {p4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Tgh:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;

    return-void
.end method

.method private Qhi()Ljava/lang/String;
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    if-nez v0, :cond_0

    .line 426
    const-string v0, ""

    return-object v0

    .line 428
    :cond_0
    const-string v1, "adx_name"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Qhi(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 411
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 412
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 413
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->cJ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->NFd()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->ac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 439
    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    const-string v1, "cn"

    .line 442
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Tgh()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 443
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Tgh()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 449
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 453
    :cond_3
    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 454
    const-string v2, "}}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v1, :cond_6

    if-ltz v2, :cond_6

    if-ge v2, v1, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x2

    .line 459
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 463
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x2

    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->zc(Ljava/lang/String;)V

    return-void

    .line 456
    :cond_6
    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->zc(Ljava/lang/String;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;I)V
    .locals 5

    const/4 v0, 0x5

    .line 341
    const-string v1, "clickArea"

    if-eq p2, v0, :cond_3

    const/16 v0, 0xf

    if-eq p2, v0, :cond_3

    const/16 v0, 0x32

    if-eq p2, v0, :cond_3

    const/16 v0, 0x9a

    if-eq p2, v0, :cond_3

    .line 366
    const-string p2, "image"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->Qhi(Ljava/lang/String;)V

    .line 367
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Gm;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v2

    .line 369
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->MQ(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ROR()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->MQ(Ljava/lang/String;)V

    .line 371
    invoke-static {p2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Gm;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 372
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->pA(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ROR()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->pA(Ljava/lang/String;)V

    .line 376
    :cond_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Ohm()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 378
    const-string v1, "imageLottieTosPath"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->bxS(Ljava/lang/String;)V

    .line 380
    const-string v1, "animationsLoop"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->zc(Z)V

    .line 381
    const-string v1, "lottieAppNameMaxLength"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->pM(I)V

    .line 382
    const-string v1, "lottieAdDescMaxLength"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->aP(I)V

    .line 383
    const-string v1, "lottieAdTitleMaxLength"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Eh(I)V

    .line 385
    :cond_1
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 387
    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    const/4 v1, 0x0

    .line 389
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 390
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 392
    :try_start_0
    const-string v1, "width"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v1, "height"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ".height"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ac(Ljava/lang/String;)V

    .line 400
    :cond_2
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->mz()V

    return-void

    .line 346
    :cond_3
    const-string p2, "video"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->Qhi(Ljava/lang/String;)V

    .line 347
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Gm;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->MQ(Ljava/lang/String;)V

    .line 349
    invoke-static {p2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Gm;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 350
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 351
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->pA(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ROR()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->pA(Ljava/lang/String;)V

    .line 355
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ROR()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->MQ(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->yy()V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->ac()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/Qhi;->ac()Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/Qhi/Qhi/ac;->pA()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->Qhi(Landroid/content/Context;)I

    move-result v0

    .line 112
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->cJ(Landroid/content/Context;F)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->ac:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->Qhi:F

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->Qhi:F

    int-to-float v0, v0

    .line 115
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->cJ:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 117
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->fl(F)V

    .line 118
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->WAv()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v0

    .line 119
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->WAv(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Tgh(F)V

    return-void

    .line 122
    :cond_3
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->fl(F)V

    .line 124
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->cJ(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 124
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->cJ(Landroid/content/Context;F)I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget-boolean v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->ac:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->cJ:F

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->cJ:F

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 127
    :goto_2
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Tgh(F)V

    .line 128
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->WAv()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object p1

    .line 129
    const-string v0, "fixed"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->WAv(Ljava/lang/String;)V

    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    if-nez v0, :cond_1

    return-void

    .line 285
    :cond_1
    const-string v1, "image.0.url"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 289
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 298
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 303
    :cond_5
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    return-void

    .line 307
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    .line 311
    :cond_7
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    const-string v6, "icon"

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    return-void

    .line 315
    :cond_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    return-void

    .line 321
    :cond_9
    iget-object v7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    const-string v8, "app.app_name"

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 322
    iget-object v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    const-string v9, "source"

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_a

    if-nez v8, :cond_a

    return-void

    :cond_a
    if-eqz v7, :cond_b

    goto :goto_0

    :cond_b
    move-object v7, v8

    .line 327
    :goto_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 328
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    return-void

    .line 331
    :cond_c
    const-string v8, "imageUrl"

    invoke-virtual {p1, v8, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, v2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1, v4, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1, v6, v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "app_name"

    invoke-virtual {p1, v0, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 336
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Z)V

    return-void
.end method


# virtual methods
.method public Qhi(DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;
    .locals 12

    move-object v0, p0

    .line 72
    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ac:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ac;->Qhi()V

    const/4 v1, 0x0

    .line 75
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Tgh:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;

    iget-object v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;->cJ:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    .line 79
    :goto_0
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi:Lorg/json/JSONObject;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Tgh;->Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 82
    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;

    move-result-object v2

    .line 83
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)V

    .line 86
    new-instance v11, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR;

    move-object v3, v11

    move-wide v4, p1

    move v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR;-><init>(DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;)V

    .line 87
    new-instance v3, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR$Qhi;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR$Qhi;-><init>()V

    .line 88
    iget-object v4, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget v4, v4, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->Qhi:F

    iput v4, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR$Qhi;->Qhi:F

    .line 89
    iget-object v4, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->CJ:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    iget v4, v4, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->cJ:F

    iput v4, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR$Qhi;->cJ:F

    const/4 v4, 0x0

    .line 90
    iput v4, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR$Qhi;->ac:F

    .line 91
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR$Qhi;)V

    .line 93
    invoke-virtual {v11, v2, v4, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;FF)V

    .line 94
    invoke-virtual {v11}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR;->Qhi()V

    .line 95
    iget-object v2, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/cJ;

    iget v2, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/cJ;->CJ:F

    const/high16 v3, 0x47800000    # 65536.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    return-object v1

    .line 98
    :cond_0
    iget-object v1, v11, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/ROR;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/cJ;

    iget-object v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/cJ;->Tgh:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;

    return-object v1
.end method

.method public Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;
    .locals 6

    .line 196
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v2, "values"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 199
    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Gm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 201
    const-string v3, "sceneValues"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 202
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Gm;->Qhi(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    .line 204
    invoke-static {v0, p1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Gm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 206
    new-instance v3, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;-><init>()V

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->cJ(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->cJ(Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_c

    .line 214
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->cJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)V

    .line 215
    const-string v1, "x"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->ac(F)V

    .line 216
    const-string v1, "y"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->CJ(F)V

    .line 217
    const-string v1, "width"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->fl(F)V

    .line 218
    const-string v1, "height"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Tgh(F)V

    .line 219
    const-string v1, "remainWidth"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->ROR(F)V

    .line 220
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;-><init>()V

    .line 221
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->Qhi(Ljava/lang/String;)V

    .line 222
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ(Ljava/lang/String;)V

    .line 223
    const-string v4, "dataExtraInfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ac(Ljava/lang/String;)V

    .line 224
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;)V

    .line 227
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object p1

    if-nez p1, :cond_1

    .line 229
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;)V

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;)V

    .line 233
    :goto_1
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;)V

    .line 235
    const-string p1, "video-image-budget"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->cJ:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 237
    const-string v4, "image_mode"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 238
    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;I)V

    .line 241
    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v4

    .line 243
    sget-object v5, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ROR:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Hf()Z

    move-result v5

    if-nez v5, :cond_3

    .line 244
    sget-object v5, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->ROR:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->MQ(Ljava/lang/String;)V

    .line 247
    :cond_3
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->Hf()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 248
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ac()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 250
    :cond_4
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 253
    const-string v5, "star"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "text_star"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 254
    :cond_5
    const-string v4, "dynamic_creative.score_exact_i18n|"

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    :cond_6
    const-string v5, "score-count"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "score-count-type-1"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "score-count-type-2"

    .line 257
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 258
    :cond_7
    const-string v4, "dynamic_creative.comment_num_i18n|"

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    :cond_8
    const-string v5, "root"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->SNp()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 262
    const-string p1, "image.0.url"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "logo-union"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "logo"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 267
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "adx:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ(Ljava/lang/String;)V

    goto :goto_3

    .line 269
    :cond_b
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ(Ljava/lang/String;)V

    .line 271
    :goto_3
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;)V

    :cond_c
    return-object v3
.end method

.method public Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 138
    :cond_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "custom-component-vessel"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const-string v2, "componentId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Tgh:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;

    if-eqz v3, :cond_1

    .line 142
    new-instance v3, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/fl;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/fl;-><init>()V

    iput-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->fl:Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/fl;

    .line 143
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Tgh:Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;

    iget-object v4, v4, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/fl;->Qhi:Ljava/util/List;

    invoke-virtual {v3, v4, v2, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/fl;->Qhi(Ljava/util/List;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object p1, v2

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;

    move-result-object v2

    .line 151
    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)V

    .line 153
    const-string p2, "children"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_2

    .line 155
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Ljava/util/List;)V

    return-object v2

    .line 158
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 161
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 162
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    const-string v7, "tag-group"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 169
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->WAv()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->fl()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/ROR;->gga()I

    move-result v7

    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_1
    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_5

    .line 174
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 175
    invoke-virtual {p0, v9, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;)Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;

    move-result-object v9

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->cJ()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->WAv()Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/Tgh;->cJ()Ljava/lang/String;

    move-result-object v10

    const-string v11, "skip-with-time"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "transparent"

    .line 177
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->bxS()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->bxS()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 178
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->bxS()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->ac(Ljava/lang/String;)V

    .line 180
    :cond_4
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 183
    :cond_5
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 186
    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->Qhi(Ljava/util/List;)V

    .line 188
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 189
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ac/hm;->cJ(Ljava/util/List;)V

    :cond_9
    return-object v2
.end method
