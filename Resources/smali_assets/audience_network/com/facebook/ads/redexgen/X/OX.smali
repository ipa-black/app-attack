.class public final Lcom/facebook/ads/redexgen/X/OX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/OV;,
        Lcom/facebook/ads/redexgen/X/OW;,
        Lcom/facebook/ads/redexgen/X/S0;
    }
.end annotation


# static fields
.field public static A08:[B


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/OM;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/S0;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Lcom/facebook/ads/redexgen/X/O9;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OX;->A09()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/OM;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/O9;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47459
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OX;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 47460
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A00:Ljava/lang/ref/WeakReference;

    .line 47461
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    .line 47462
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A07:Ljava/lang/ref/WeakReference;

    .line 47463
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/OX;->A04:Lcom/facebook/ads/redexgen/X/O9;

    .line 47464
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/OX;->A05:Ljava/lang/String;

    .line 47465
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/OX;->A06:Ljava/lang/String;

    .line 47466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A02:Z

    .line 47467
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/OX;)Lcom/facebook/ads/redexgen/X/O9;
    .locals 0

    .line 47468
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OX;->A04:Lcom/facebook/ads/redexgen/X/O9;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OX;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x74

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/OX;)Ljava/lang/String;
    .locals 0

    .line 47469
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OX;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static A03(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47470
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 47471
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47472
    .local v1, "extraDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47473
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47474
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47475
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 47476
    :cond_0
    return-object v2
.end method

.method private A04()V
    .locals 1

    .line 47477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S0;

    .line 47478
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v0, :cond_0

    .line 47479
    return-void

    .line 47480
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S0;->close()V

    .line 47481
    return-void
.end method

.method private A05()V
    .locals 1

    .line 47482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S0;

    .line 47483
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v0, :cond_0

    .line 47484
    return-void

    .line 47485
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S0;->A8E()V

    .line 47486
    return-void
.end method

.method private A06()V
    .locals 1

    .line 47487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S0;

    .line 47488
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v0, :cond_0

    .line 47489
    return-void

    .line 47490
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S0;->A8w()V

    .line 47491
    return-void
.end method

.method private A07()V
    .locals 1

    .line 47492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4x()V

    .line 47493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A02:Z

    .line 47494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S0;

    .line 47495
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v0, :cond_0

    .line 47496
    return-void

    .line 47497
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S0;->AFS()V

    .line 47498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Im;->AAg()V

    .line 47500
    :cond_1
    return-void
.end method

.method private A08()V
    .locals 1

    .line 47501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S0;

    .line 47502
    .local v0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v0, :cond_0

    .line 47503
    return-void

    .line 47504
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S0;->AB4()V

    .line 47505
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x67

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OX;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x38t
        0x36t
        0x36t
        0x2at
        0x37t
        0x2dt
        0xat
        0xbt
        0xct
        0x7t
        0x1bt
        0x12t
        0x1at
        0x3ft
        0x4et
        0x47t
        0x3at
        -0x1dt
        -0xet
        -0x15t
        -0x15t
        -0x1et
        -0x17t
        -0x24t
        -0x20t
        -0x14t
        -0x1ft
        -0x1et
        0xct
        0x1bt
        0x14t
        0x14t
        0xbt
        0x12t
        0x5t
        0x13t
        0xbt
        0x19t
        0x19t
        0x7t
        0xdt
        0xbt
        -0x25t
        -0x16t
        -0x1dt
        -0x1dt
        -0x26t
        -0x1ft
        -0x2ct
        -0x17t
        -0x12t
        -0x1bt
        -0x26t
        -0x17t
        -0x1dt
        -0x9t
        0x34t
        0x35t
        0x24t
        0x2et
        0x29t
        0x5at
        0x4bt
        0x5ft
        0x5dt
        0x4ft
        0x4et
        0x2ct
        0x63t
        0x3ft
        0x5dt
        0x4ft
        0x5ct
        0x39t
        0x3at
        0x27t
        0x38t
        0x3at
        0x2bt
        0x2at
        0x8t
        0x3ft
        0x1bt
        0x39t
        0x2bt
        0x38t
        0x53t
        0x54t
        0x41t
        0x54t
        0x45t
        0x30t
        0x2dt
        0x27t
        0x6t
        0x20t
        0x34t
        -0xat
        -0x1ft
        -0x14t
        -0xbt
        -0x1bt
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/OM;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47506
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47507
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jm;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 47508
    .local v1, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47509
    .local v3, "opId":Ljava/lang/String;
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47510
    .local v4, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47511
    .local v5, "storageValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v6, v0

    :cond_0
    invoke-virtual {p1, v5, v6}, Lcom/facebook/ads/redexgen/X/OM;->A0g(Ljava/lang/String;Ljava/lang/String;)V

    .line 47512
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/OM;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47513
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47514
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x62

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47515
    .local v2, "value":Ljava/lang/String;
    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47516
    .local v1, "opId":Ljava/lang/String;
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47517
    .local v3, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jm;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47518
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47519
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/OM;->A0f(Ljava/lang/String;)V

    .line 47520
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/OV;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47521
    sget-object v1, Lcom/facebook/ads/redexgen/X/OU;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OV;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 47522
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/OM;

    .line 47523
    .local v0, "webViewController":Lcom/facebook/ads/redexgen/X/OM;
    if-nez v2, :cond_1

    .line 47524
    return-void

    .line 47525
    :pswitch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OX;->A0I(Lorg/json/JSONObject;)V

    .line 47526
    goto :goto_0

    .line 47527
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OX;->A06()V

    .line 47528
    goto :goto_0

    .line 47529
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OX;->A04()V

    .line 47530
    goto :goto_0

    .line 47531
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OX;->A07()V

    .line 47532
    goto :goto_0

    .line 47533
    :pswitch_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OX;->A0K(Lorg/json/JSONObject;)V

    .line 47534
    goto :goto_0

    .line 47535
    :pswitch_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OX;->A0L(Lorg/json/JSONObject;)V

    .line 47536
    goto :goto_0

    .line 47537
    :pswitch_6
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47538
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OX;->A05()V

    .line 47539
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A59(Ljava/lang/String;)V

    .line 47540
    goto :goto_0

    .line 47541
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/OX;->A0D(Lcom/facebook/ads/redexgen/X/OV;Ljava/lang/String;)V

    .line 47542
    goto :goto_0

    .line 47543
    :pswitch_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OX;->A0J(Lorg/json/JSONObject;)V

    .line 47544
    goto :goto_0

    .line 47545
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OX;->A08()V

    .line 47546
    goto :goto_0

    .line 47547
    :pswitch_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OX;->A0M(Lorg/json/JSONObject;)V

    .line 47548
    goto :goto_0

    .line 47549
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/OU;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OV;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 47550
    :goto_1
    return-void

    .line 47551
    :pswitch_d
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/OM;->A0S()V

    .line 47552
    goto :goto_1

    .line 47553
    :pswitch_e
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/OM;->A0R()V

    .line 47554
    goto :goto_1

    .line 47555
    :pswitch_f
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/OX;->A0B(Lcom/facebook/ads/redexgen/X/OM;Ljava/lang/String;)V

    .line 47556
    goto :goto_1

    .line 47557
    :pswitch_10
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/OX;->A0A(Lcom/facebook/ads/redexgen/X/OM;Ljava/lang/String;)V

    .line 47558
    goto :goto_1

    .line 47559
    :pswitch_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OX;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0i(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/OV;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/S0;

    .line 47561
    .local v0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v2, :cond_0

    .line 47562
    return-void

    .line 47563
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/OU;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OV;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 47564
    :goto_0
    return-void

    .line 47565
    :pswitch_0
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/S0;->AB8()V

    .line 47566
    goto :goto_0

    .line 47567
    :pswitch_1
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/S0;->ACZ()V

    .line 47568
    goto :goto_0

    .line 47569
    :pswitch_2
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/OX;->A0G(Lcom/facebook/ads/redexgen/X/S0;Ljava/lang/String;)V

    .line 47570
    goto :goto_0

    .line 47571
    :pswitch_3
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/OX;->A0F(Lcom/facebook/ads/redexgen/X/S0;Ljava/lang/String;)V

    .line 47572
    goto :goto_0

    .line 47573
    :pswitch_4
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/OX;->A0E(Lcom/facebook/ads/redexgen/X/S0;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/S0;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47574
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47575
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x57

    const/4 v1, 0x5

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 47576
    .local v1, "STATE_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47577
    .local v2, "state":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/S0;->ABm(Z)V

    .line 47578
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/S0;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47579
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47580
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x3e

    const/16 v1, 0xc

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 47581
    .local v1, "PAUSED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47582
    .local v2, "pausedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/S0;->AD5(Z)V

    .line 47583
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/S0;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47584
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47585
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x4a

    const/16 v1, 0xd

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 47586
    .local v1, "STARTED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47587
    .local v2, "startedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/S0;->AD7(Z)V

    .line 47588
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/OX;Lcom/facebook/ads/redexgen/X/OV;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47589
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/OX;->A0C(Lcom/facebook/ads/redexgen/X/OV;Ljava/lang/String;)V

    return-void
.end method

.method private A0I(Lorg/json/JSONObject;)V
    .locals 4

    .line 47590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/S0;

    .line 47591
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v3, :cond_0

    .line 47592
    return-void

    .line 47593
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47594
    .local v1, "productUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47595
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/S0;->A89()V

    .line 47596
    :goto_0
    return-void

    .line 47597
    :cond_1
    invoke-interface {v3, v1}, Lcom/facebook/ads/redexgen/X/S0;->A8A(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0J(Lorg/json/JSONObject;)V
    .locals 3

    .line 47598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S0;

    .line 47599
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v0, :cond_0

    .line 47600
    return-void

    .line 47601
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 47602
    .local v1, "action":Ljava/lang/String;
    return-void
.end method

.method private A0K(Lorg/json/JSONObject;)V
    .locals 4

    .line 47603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ia;

    .line 47604
    .local v0, "adEventManager":Lcom/facebook/ads/redexgen/X/Ia;
    if-nez v3, :cond_0

    .line 47605
    return-void

    .line 47606
    :cond_0
    const/16 v2, 0x2b

    const/16 v1, 0xb

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47607
    .local v1, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47608
    return-void

    .line 47609
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A06:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 47610
    .local v2, "handler":Lcom/facebook/ads/redexgen/X/Ii;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/OX;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A05(Ljava/lang/String;Ljava/util/Map;)V

    .line 47611
    return-void
.end method

.method private A0L(Lorg/json/JSONObject;)V
    .locals 5

    .line 47612
    const/4 v4, -0x1

    const/16 v2, 0x12

    const/16 v1, 0xb

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 47613
    .local v1, "code":I
    if-ne v3, v4, :cond_0

    .line 47614
    return-void

    .line 47615
    :cond_0
    const/16 v2, 0x1d

    const/16 v1, 0xe

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47616
    .local v0, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47617
    return-void

    .line 47618
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/0R;->A9A(ILjava/lang/String;)V

    .line 47619
    return-void
.end method

.method private A0M(Lorg/json/JSONObject;)V
    .locals 4

    .line 47620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/S0;

    .line 47621
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/S0;
    if-nez v3, :cond_0

    .line 47622
    return-void

    .line 47623
    :cond_0
    const/16 v2, 0x5c

    const/4 v1, 0x6

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47624
    .local v1, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 47625
    return-void

    .line 47626
    :cond_1
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/S0;->ADL(Ljava/lang/String;)V

    .line 47627
    return-void
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/S0;)V
    .locals 1

    .line 47628
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A01:Ljava/lang/ref/WeakReference;

    .line 47629
    return-void
.end method

.method public final A0O()Z
    .locals 1

    .line 47630
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OX;->A02:Z

    return v0
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47631
    new-instance v0, Lcom/facebook/ads/redexgen/X/OT;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/OT;-><init>(Lcom/facebook/ads/redexgen/X/OX;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(Ljava/lang/Runnable;)V

    .line 47632
    return-void
.end method
