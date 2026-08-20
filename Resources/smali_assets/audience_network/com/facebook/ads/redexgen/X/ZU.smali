.class public final Lcom/facebook/ads/redexgen/X/ZU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZV;,
        Lcom/facebook/ads/redexgen/X/Ei;,
        Lcom/facebook/ads/redexgen/X/1s;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/8A;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/AdSize;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/0s;

.field public final A08:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A0A:Lcom/facebook/ads/redexgen/X/JF;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Jd;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 70547
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Um"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5O6Pi5UhekEiJBNtL2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ByBiFstlzS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNZICTTmM6bBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "I3ykA2cHAONkN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xnUs6VMzToWHuFoC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LFB8Dcv49A6aPeUL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZU;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LN;->A02()V

    .line 70548
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;Lcom/facebook/ads/AdSize;I)V
    .locals 2
    .param p4    # Lcom/facebook/ads/AdSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70550
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70551
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0D:Ljava/lang/String;

    .line 70552
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0A:Lcom/facebook/ads/redexgen/X/JF;

    .line 70553
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A06:Lcom/facebook/ads/AdSize;

    .line 70554
    iput p5, p0, Lcom/facebook/ads/redexgen/X/ZU;->A04:I

    .line 70555
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jd;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0B:Lcom/facebook/ads/redexgen/X/Jd;

    .line 70556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0B:Lcom/facebook/ads/redexgen/X/Jd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jd;->A0P(Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 70557
    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A07:Lcom/facebook/ads/redexgen/X/0s;

    .line 70558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A03:Z

    .line 70559
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Landroid/os/Handler;

    .line 70560
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ei;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ei;-><init>(Lcom/facebook/ads/redexgen/X/ZU;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0C:Ljava/lang/Runnable;

    .line 70561
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A09:Lcom/facebook/ads/redexgen/X/Ia;

    .line 70562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 70563
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ZU;)Landroid/os/Handler;
    .locals 0

    .line 70564
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ZU;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 70565
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ZU;)Ljava/lang/Runnable;
    .locals 0

    .line 70566
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZU;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZU;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A0F:[Ljava/lang/String;

    const-string v1, "uoxYJqIRleds8fPMMv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/a7;",
            ">;"
        }
    .end annotation

    .line 70567
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Lcom/facebook/ads/redexgen/X/8A;

    .line 70568
    .local v0, "currentPlacement":Lcom/facebook/ads/redexgen/X/8A;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8A;->A04()Lcom/facebook/ads/redexgen/X/88;

    move-result-object v5

    .line 70569
    .local v1, "placementAd":Lcom/facebook/ads/redexgen/X/88;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8A;->A02()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70570
    .local v2, "validAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :goto_0
    if-eqz v5, :cond_1

    .line 70571
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A07:Lcom/facebook/ads/redexgen/X/0s;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0s;->A00(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object v4

    .line 70572
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/0n;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/0n;->A7L()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, v0, :cond_0

    .line 70573
    new-instance v8, Lcom/facebook/ads/redexgen/X/1q;

    .line 70574
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/88;->A04()Lorg/json/JSONObject;

    move-result-object v9

    .line 70575
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0D:Ljava/lang/String;

    .line 70576
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8B;->A0C()J

    move-result-wide v12

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/1q;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8B;Ljava/lang/String;J)V

    .line 70577
    .local v10, "loadConfig":Lcom/facebook/ads/redexgen/X/1q;
    check-cast v4, Lcom/facebook/ads/redexgen/X/a7;

    .line 70578
    .local v4, "nativeAdapter":Lcom/facebook/ads/redexgen/X/a7;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Ej;

    invoke-direct {v6, p0, v1, v4}, Lcom/facebook/ads/redexgen/X/Ej;-><init>(Lcom/facebook/ads/redexgen/X/ZU;Ljava/util/List;Lcom/facebook/ads/redexgen/X/a7;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/ZU;->A09:Lcom/facebook/ads/redexgen/X/Ia;

    .line 70579
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tp;->A0K()Lcom/facebook/ads/redexgen/X/Ix;

    move-result-object v9

    .line 70580
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/a7;->A0L(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/1q;Lcom/facebook/ads/redexgen/X/Ix;)V

    .line 70581
    .end local v4    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/a7;
    .end local v10    # "loadConfig":Lcom/facebook/ads/redexgen/X/1q;
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8A;->A04()Lcom/facebook/ads/redexgen/X/88;

    move-result-object v5

    .line 70582
    .end local v3    # "adapter":Lcom/facebook/ads/redexgen/X/0n;
    goto :goto_0

    .line 70583
    :cond_1
    return-object v1
.end method

.method public static A05()V
    .locals 4

    const/16 v0, 0x18

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZU;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A0F:[Ljava/lang/String;

    const-string v1, "dKV76OJFyRmVPWeRzZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/ZU;->A0E:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x41t
        -0xet
        0x42t
        0x3et
        0x33t
        0x35t
        0x37t
        0x3ft
        0x37t
        0x40t
        0x46t
        -0xet
        0x3bt
        0x40t
        -0xet
        0x44t
        0x37t
        0x45t
        0x42t
        0x41t
        0x40t
        0x45t
        0x37t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 70584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A03:Z

    .line 70585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70586
    return-void
.end method

.method public final A07()V
    .locals 15

    .line 70587
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v5, 0x0

    new-instance v11, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v11, v0, v5, v5, v5}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/JB; {:try_start_0 .. :try_end_0} :catch_0

    .line 70588
    .local v9, "bidPayload":Lcom/facebook/ads/redexgen/X/JK;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ja;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0D:Ljava/lang/String;

    .line 70589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A06:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Kx;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Kx;-><init>(II)V

    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0A:Lcom/facebook/ads/redexgen/X/JF;

    const/4 v7, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/ZU;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70590
    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v9

    .line 70591
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70592
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0I(Landroid/content/Context;)I

    move-result v0

    .line 70593
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L3;->A01(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/facebook/ads/redexgen/X/Ja;-><init>(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kx;Lcom/facebook/ads/redexgen/X/JF;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/JK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70594
    .local v0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/Ja;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0B:Lcom/facebook/ads/redexgen/X/Jd;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Jd;->A0O(Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 70595
    return-void

    .line 70596
    .end local v0    # "adEnvironmentData":Lcom/facebook/ads/redexgen/X/Ja;
    .end local v9    # "bidPayload":Lcom/facebook/ads/redexgen/X/JK;
    :catch_0
    move-exception v0

    .line 70597
    .local v0, "e":Lcom/facebook/ads/redexgen/X/JB;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JA;->A02(Lcom/facebook/ads/redexgen/X/JB;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZU;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70598
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/1s;)V
    .locals 0

    .line 70599
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Lcom/facebook/ads/redexgen/X/1s;

    .line 70600
    return-void
.end method

.method public final A09(Ljava/lang/String;)V
    .locals 0

    .line 70601
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Ljava/lang/String;

    .line 70602
    return-void
.end method

.method public final A0A()Z
    .locals 1

    .line 70603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Lcom/facebook/ads/redexgen/X/8A;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8A;->A0C()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAv(Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 4

    .line 70604
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A03:Z

    if-eqz v0, :cond_0

    .line 70605
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0C:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70606
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Lcom/facebook/ads/redexgen/X/1s;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZU;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A0F:[Ljava/lang/String;

    const-string v1, "yGn7NPCZVX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 70607
    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/1s;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70608
    :cond_2
    return-void
.end method

.method public final ACh(Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 7

    .line 70609
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tc;->A00()Lcom/facebook/ads/redexgen/X/8A;

    move-result-object v6

    .line 70610
    .local v0, "placement":Lcom/facebook/ads/redexgen/X/8A;
    if-eqz v6, :cond_4

    .line 70611
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A03:Z

    if-eqz v0, :cond_1

    .line 70612
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8B;->A0A()J

    move-result-wide v2

    .line 70613
    .local v1, "refreshInterval":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 70614
    const-wide/32 v2, 0x1b7740

    .line 70615
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70616
    .end local v1    # "refreshInterval":J
    :cond_1
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Lcom/facebook/ads/redexgen/X/8A;

    .line 70617
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZU;->A04()Ljava/util/List;

    move-result-object v1

    .line 70618
    .local v1, "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Lcom/facebook/ads/redexgen/X/1s;

    if-eqz v0, :cond_3

    .line 70619
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70620
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Lcom/facebook/ads/redexgen/X/1s;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/1s;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70621
    return-void

    .line 70622
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1s;->ABq(Ljava/util/List;)V

    .line 70623
    :cond_3
    return-void

    .line 70624
    .end local v1    # "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZU;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
