.class public final Lcom/facebook/ads/redexgen/X/XA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7P;


# static fields
.field public static A07:Lcom/facebook/ads/redexgen/X/XA;

.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0U;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/6Q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/7O;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/7e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/8I;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/Im;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/Ga;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 66464
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kZNWMB05A80rolZkZr5gINRkemJedumA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PGnlsDLswmZGHAGkHnqyou4j"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CQczeQcoxNMNqPeDO5UPH4delPie3CF6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ozs7AQnIuhnl4TF488yhCLnc3lqg3Tqv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QUMQF15y8F49TOv2Mbtf3pi6YRJU7tsl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iRM3Hx3PCEqf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8yEJzjy1AvS4vnL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zEXAgd0MZ6iopjt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XA;->A07()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;)Lcom/facebook/ads/redexgen/X/5q;
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Ga;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66466
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A1J(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 66467
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 66468
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5r;->A00()Lcom/facebook/ads/redexgen/X/5r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A01(Lcom/facebook/ads/redexgen/X/Ga;)Lcom/facebook/ads/redexgen/X/5q;

    move-result-object p0

    return-object p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/7e;
    .locals 2

    .line 66469
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7f;->A00()Lcom/facebook/ads/redexgen/X/7f;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XH;-><init>()V

    .line 66470
    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/7f;->A01(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7d;)Lcom/facebook/ads/redexgen/X/7e;

    move-result-object v0

    .line 66471
    return-object v0
.end method

.method public static declared-synchronized A02()Lcom/facebook/ads/redexgen/X/XA;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/XA;

    monitor-enter v1

    .line 66472
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/XA;->A07:Lcom/facebook/ads/redexgen/X/XA;

    if-nez v0, :cond_0

    .line 66473
    new-instance v0, Lcom/facebook/ads/redexgen/X/XA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XA;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/XA;->A07:Lcom/facebook/ads/redexgen/X/XA;

    .line 66474
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/XA;->A07:Lcom/facebook/ads/redexgen/X/XA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/QG;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66476
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A1F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66477
    const/4 v0, 0x0

    return-object v0

    .line 66478
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/QY;->A01(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/QG;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized A04()Lcom/facebook/ads/redexgen/X/Ga;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 66479
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/Ga;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/7e;Lcom/facebook/ads/redexgen/X/QG;)Lcom/facebook/ads/redexgen/X/Ga;
    .locals 17
    .param p2    # Lcom/facebook/ads/redexgen/X/QG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66480
    move-object/from16 v4, p0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/IK;->A23(Landroid/content/Context;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v16, p2

    if-nez v16, :cond_1

    .line 66481
    :cond_0
    return-object v8

    .line 66482
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v6, 0x0

    sget-object v7, Lcom/facebook/ads/redexgen/X/JF;->A07:Lcom/facebook/ads/redexgen/X/JF;

    .line 66483
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_2

    .line 66484
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v8

    .line 66485
    :cond_2
    const/4 v9, 0x0

    .line 66486
    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    .line 66487
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v11

    new-instance v12, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v12}, Lcom/facebook/ads/redexgen/X/JK;-><init>()V

    .line 66488
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/IK;->A0I(Landroid/content/Context;)I

    move-result v0

    .line 66489
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L3;->A01(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A06(III)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/Ja;-><init>(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kx;Lcom/facebook/ads/redexgen/X/JF;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/JK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66490
    .local v0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/Ja;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qv;->A00()Lcom/facebook/ads/redexgen/X/Qv;

    move-result-object v13

    .line 66491
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Jh;->A04(Lcom/facebook/ads/redexgen/X/7N;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/XB;

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/redexgen/X/XB;-><init>(Lcom/facebook/ads/redexgen/X/Ja;Lcom/facebook/ads/redexgen/X/Xb;)V

    .line 66492
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qt;->A00()Lcom/facebook/ads/redexgen/X/Qs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qs;->A00()Lcom/facebook/ads/redexgen/X/Qt;

    move-result-object p2

    .line 66493
    move-object/from16 v15, p1

    move-object v14, v4

    move-object/from16 p1, v1

    invoke-virtual/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Qv;->A01(Lcom/facebook/ads/redexgen/X/7N;Lcom/facebook/ads/redexgen/X/7e;Lcom/facebook/ads/redexgen/X/QG;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qu;Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Ga;

    move-result-object v0

    .line 66494
    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/XA;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    const-string v1, "Hv2WK1fJh7GnXaP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "jwUFRNkRPBL5IaL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_2

    aget-byte p1, v3, p0

    sub-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    const-string v1, "3jbuj6iR6sIerVLqEJ9xAsC0KuP7QrbG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qsuffxm3RCjhy50iWQEl04Txy4tWGAPw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x62

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XA;->A08:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    const-string v1, "XQj6tBQR93KUWcmqG7acynHpkyXbPHo4"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0fPU7ngiro1m2vFzwgFa3cBnolZ3o5pA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x3at
        -0x40t
        -0x38t
        -0xdt
        -0x3bt
        -0x3et
        -0xdt
        -0x40t
        -0x10t
        0x2t
        0x10t
        0x10t
        0x6t
        0xct
        0xbt
        -0x43t
        0x1t
        -0x2t
        0x11t
        -0x2t
        -0x43t
        0x6t
        0xbt
        0x6t
        0x11t
        0x6t
        -0x2t
        0x9t
        0x6t
        0x17t
        0x2t
        0x1t
        0x21t
        0x14t
        0x1ft
        0x1et
        0x21t
        0x23t
        0x2t
        0x14t
        0x22t
        0x22t
        0x18t
        0x1et
        0x1dt
        -0xdt
        0x10t
        0x23t
        0x10t
        -0x8t
        0x1dt
        0x18t
        0x23t
        0x18t
        0x10t
        0x1bt
        0x18t
        0x29t
        0x14t
        0x13t
    .end array-data
.end method

.method public static A08()V
    .locals 7

    const/16 v2, 0x20

    const/16 v1, 0x1c

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const/16 v4, 0x18

    const/16 v3, 0x3b

    sget-object v1, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A09:[Ljava/lang/String;

    const-string v1, "4ii3kc4oT9MJsiDOLfNQb5ib2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/XA;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66495
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/5q;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/5q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66496
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 66497
    :cond_0
    return-void

    .line 66498
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5o;->A00()Lcom/facebook/ads/redexgen/X/5o;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/5o;->A01(Lcom/facebook/ads/redexgen/X/5q;Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/5n;

    .line 66499
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;)V
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/Ga;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66500
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IK;->A0j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 66501
    :cond_0
    return-void

    .line 66502
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/6C;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/6C;-><init>()V

    .line 66503
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->getBidderTokenProviderApi()Lcom/facebook/ads/redexgen/X/5L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5L;->A00()Lcom/facebook/ads/redexgen/X/6D;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6B;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/6B;-><init>(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;Lcom/facebook/ads/redexgen/X/6C;Lcom/facebook/ads/redexgen/X/6D;)V

    .line 66504
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Ga;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66505
    if-nez p1, :cond_0

    .line 66506
    return-void

    .line 66507
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/IN;->A00(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;)V

    .line 66508
    return-void
.end method


# virtual methods
.method public final declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/Xb;)V
    .locals 2

    monitor-enter p0

    .line 66509
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/Ga;

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66510
    monitor-exit p0

    return-void

    .line 66511
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XA;->A01(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/7e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A03:Lcom/facebook/ads/redexgen/X/7e;

    .line 66512
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XA;->A03(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/QG;

    move-result-object v1

    .line 66513
    .local v0, "networkModule":Lcom/facebook/ads/redexgen/X/QG;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A03:Lcom/facebook/ads/redexgen/X/7e;

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/XA;->A05(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/7e;Lcom/facebook/ads/redexgen/X/QG;)Lcom/facebook/ads/redexgen/X/Ga;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/Ga;

    .line 66514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/Ga;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A00(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;)Lcom/facebook/ads/redexgen/X/5q;

    move-result-object v0

    .line 66515
    .local v1, "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/5q;
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A09(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/5q;)V

    .line 66516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/Ga;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A0A(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;)V

    .line 66517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/Ga;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A0B(Lcom/facebook/ads/redexgen/X/Xb;Lcom/facebook/ads/redexgen/X/Ga;)V

    .line 66518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/Ga;

    if-eqz v0, :cond_1

    .line 66519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/Ga;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ga;->A5W()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66520
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Xb;
    :cond_1
    monitor-exit p0

    return-void

    .line 66521
    .end local v0    # "networkModule":Lcom/facebook/ads/redexgen/X/QG;
    .end local v1    # "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/5q;
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A5e(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/Ia;
    .locals 1

    .line 66522
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UB;->A01(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A5t(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7O;
    .locals 1

    monitor-enter p0

    .line 66523
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A02:Lcom/facebook/ads/redexgen/X/7O;

    if-nez v0, :cond_0

    .line 66524
    new-instance v0, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XC;-><init>(Lcom/facebook/ads/redexgen/X/XA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A02:Lcom/facebook/ads/redexgen/X/7O;

    .line 66525
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A02:Lcom/facebook/ads/redexgen/X/7O;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66526
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/7N;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A64()Lcom/facebook/ads/redexgen/X/6Q;
    .locals 1

    monitor-enter p0

    .line 66527
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    if-nez v0, :cond_0

    .line 66528
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Xd;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    .line 66529
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A01:Lcom/facebook/ads/redexgen/X/6Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6R(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7e;
    .locals 1

    monitor-enter p0

    .line 66531
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A03:Lcom/facebook/ads/redexgen/X/7e;

    if-nez v0, :cond_0

    .line 66532
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XA;->A01(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/7e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A03:Lcom/facebook/ads/redexgen/X/7e;

    .line 66533
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A03:Lcom/facebook/ads/redexgen/X/7e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66534
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/7N;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6S(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7r;
    .locals 1

    monitor-enter p0

    .line 66535
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/XQ;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/XQ;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/7N;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6c(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7Q;
    .locals 1

    monitor-enter p0

    .line 66536
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dr;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Dr;-><init>(Lcom/facebook/ads/redexgen/X/XA;Lcom/facebook/ads/redexgen/X/7N;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/7N;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6p(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/0U;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 66537
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A0v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66538
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 66539
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A00:Lcom/facebook/ads/redexgen/X/0U;

    if-nez v0, :cond_1

    .line 66540
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0V;->A00()Lcom/facebook/ads/redexgen/X/0V;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XF;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/XF;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0V;->A01(Lcom/facebook/ads/redexgen/X/0S;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A00:Lcom/facebook/ads/redexgen/X/0U;

    .line 66541
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A00:Lcom/facebook/ads/redexgen/X/0U;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66542
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/7N;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7X(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/7S;
    .locals 1

    monitor-enter p0

    .line 66543
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/XD;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/XD;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/7N;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A7Y(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;
    .locals 1

    .line 66544
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7M;->A00()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    .line 66545
    .local v0, "sdkContext":Lcom/facebook/ads/redexgen/X/Xb;
    if-nez v0, :cond_0

    .line 66546
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xb;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Xb;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;)V

    .line 66547
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7M;->A01(Lcom/facebook/ads/redexgen/X/Xb;)V

    .line 66548
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized A7Z(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/Im;
    .locals 1

    monitor-enter p0

    .line 66549
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A05:Lcom/facebook/ads/redexgen/X/Im;

    if-nez v0, :cond_0

    .line 66550
    new-instance v0, Lcom/facebook/ads/redexgen/X/UI;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/UI;-><init>(Lcom/facebook/ads/redexgen/X/Xb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A05:Lcom/facebook/ads/redexgen/X/Im;

    .line 66551
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A05:Lcom/facebook/ads/redexgen/X/Im;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66552
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Xb;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7f()Lcom/facebook/ads/redexgen/X/8I;
    .locals 1

    monitor-enter p0

    .line 66553
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A04:Lcom/facebook/ads/redexgen/X/8I;

    if-nez v0, :cond_0

    .line 66554
    new-instance v0, Lcom/facebook/ads/redexgen/X/8I;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8I;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A04:Lcom/facebook/ads/redexgen/X/8I;

    .line 66555
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XA;->A08()V

    .line 66556
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/XA;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A04:Lcom/facebook/ads/redexgen/X/8I;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66557
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic A7p()Lcom/facebook/ads/redexgen/X/7T;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XA;->A04()Lcom/facebook/ads/redexgen/X/Ga;

    move-result-object v0

    return-object v0
.end method
