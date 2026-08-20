.class public final Lcom/facebook/ads/redexgen/X/WO;
.super Lcom/facebook/ads/redexgen/X/Bj;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 63344
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lkUmj0P9ANZweJy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AYR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2bCiSP20yUx8Jjv69HyX94pfkMFX1Tn5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GuptQSCxLEDTiFK9bPX0ljmbSmBcx9xx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QILfBos"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yeLNYaj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "n8HrTtIUehfoTgx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xV0sp6lxPyztL8QZzt7llBh4QSI4V12v"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WO;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WO;->A0A()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bj;-><init>(Lcom/facebook/ads/redexgen/X/Bh;)V

    .line 63346
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:J

    .line 63347
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hc;)I
    .locals 0

    .line 63348
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result p0

    return p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/Boolean;
    .locals 1

    .line 63349
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/Double;
    .locals 1

    .line 63350
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0L()J

    move-result-wide v0

    invoke-static {v0, p0}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, p0}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hc;I)Ljava/lang/Object;
    .locals 4

    .line 63351
    if-eqz p1, :cond_8

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/WO;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WO;->A02:[Ljava/lang/String;

    const-string v1, "Zl5TZ6M60aHBYOe9FM2F5W6f579JKUNd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/16 v3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/WO;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/WO;->A02:[Ljava/lang/String;

    const-string v1, "AtnlLuJZPUjXwht"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "kJYayAh32s2xp3N"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    .line 63352
    const/4 v0, 0x0

    return-object v0

    .line 63353
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A07(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 63354
    :cond_3
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A06(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 63355
    :cond_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A08(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 63356
    :cond_5
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A09(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 63357
    :cond_6
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A05(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63358
    :cond_7
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A01(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 63359
    :cond_8
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A02(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/WO;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1f

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WO;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WO;->A02:[Ljava/lang/String;

    const-string v1, "WF1W4nbxyUcfRBlDsHDD1CgmrC98ElX3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "aIs3tFZxis4srcfFD6vTbXobqrKXyR4d"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/String;
    .locals 4

    .line 63360
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v3

    .line 63361
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v2

    .line 63362
    .local v1, "position":I
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 63363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hc;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63364
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v3

    .line 63365
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 63366
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 63367
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A00(Lcom/facebook/ads/redexgen/X/Hc;)I

    move-result v0

    .line 63368
    .local v3, "type":I
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/WO;->A03(Lcom/facebook/ads/redexgen/X/Hc;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63369
    .end local v3    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63370
    .end local v2    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/Date;
    .locals 4

    .line 63371
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A02(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-long v2, v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 63372
    .local v0, "date":Ljava/util/Date;
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 63373
    return-object v1
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hc;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63374
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v4

    .line 63375
    .local v0, "count":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 63376
    .local v1, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 63377
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A05(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/String;

    move-result-object v1

    .line 63378
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A00(Lcom/facebook/ads/redexgen/X/Hc;)I

    move-result v0

    .line 63379
    .local v4, "type":I
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/WO;->A03(Lcom/facebook/ads/redexgen/X/Hc;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63380
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63381
    .end local v2    # "i":I
    :cond_0
    return-object v3
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hc;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63382
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 63383
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A05(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/String;

    move-result-object v2

    .line 63384
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WO;->A00(Lcom/facebook/ads/redexgen/X/Hc;)I

    move-result v1

    .line 63385
    .local v2, "type":I
    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    .line 63386
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    return-object v3

    .line 63387
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/WO;->A03(Lcom/facebook/ads/redexgen/X/Hc;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63388
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "type":I
    goto :goto_0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WO;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x28t
        -0x17t
        -0x1at
        -0x2bt
        -0x18t
        -0x23t
        -0x1dt
        -0x1et
        0x5t
        0x4t
        -0x1dt
        -0x5t
        0xat
        -0x9t
        -0x26t
        -0x9t
        0xat
        -0x9t
    .end array-data
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/Hc;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 63389
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WO;->A00(Lcom/facebook/ads/redexgen/X/Hc;)I

    move-result v1

    .line 63390
    .local v0, "nameType":I
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 63391
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WO;->A05(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/lang/String;

    move-result-object v3

    .line 63392
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x8

    const/16 v1, 0xa

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WO;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63393
    return-void

    .line 63394
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WO;->A00(Lcom/facebook/ads/redexgen/X/Hc;)I

    move-result v1

    .line 63395
    .local v2, "type":I
    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 63396
    return-void

    .line 63397
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WO;->A08(Lcom/facebook/ads/redexgen/X/Hc;)Ljava/util/HashMap;

    move-result-object v3

    .line 63398
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WO;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63399
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 63400
    .local v4, "durationSeconds":D
    const-wide/16 v1, 0x0

    cmpl-double v0, v4, v1

    if-lez v0, :cond_2

    .line 63401
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:J

    .line 63402
    .end local v4    # "durationSeconds":D
    :cond_2
    return-void

    .line 63403
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>()V

    throw v0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/Hc;)Z
    .locals 1

    .line 63404
    const/4 v0, 0x1

    return v0
.end method

.method public final A0D()J
    .locals 2

    .line 63405
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:J

    return-wide v0
.end method
