.class public final Lcom/facebook/ads/redexgen/X/Jd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jc;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static final A08:Lcom/facebook/ads/redexgen/X/LO;

.field public static final A09:Ljava/util/concurrent/Executor;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Jc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/2D;

.field public final A04:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A05:Lcom/facebook/ads/redexgen/X/Je;

.field public final A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 40510
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jd;->A0A()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/LO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LO;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A08:Lcom/facebook/ads/redexgen/X/LO;

    .line 40511
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A08:Lcom/facebook/ads/redexgen/X/LO;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A09:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 1

    .line 40512
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2E;->A00(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/2D;)V

    .line 40513
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/2D;)V
    .locals 2

    .line 40514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40515
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:J

    .line 40516
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40517
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Je;->A00()Lcom/facebook/ads/redexgen/X/Je;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A05:Lcom/facebook/ads/redexgen/X/Je;

    .line 40518
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jh;->A01(Lcom/facebook/ads/redexgen/X/7N;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A06:Ljava/lang/String;

    .line 40519
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jd;->A03:Lcom/facebook/ads/redexgen/X/2D;

    .line 40520
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jd;)J
    .locals 1

    .line 40521
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jd;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 40522
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jd;)Lcom/facebook/ads/redexgen/X/Je;
    .locals 0

    .line 40523
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A05:Lcom/facebook/ads/redexgen/X/Je;

    return-object p0
.end method

.method private A03(JLcom/facebook/ads/redexgen/X/Ja;)Lcom/facebook/ads/redexgen/X/QH;
    .locals 1

    .line 40524
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tf;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/facebook/ads/redexgen/X/Tf;-><init>(Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/Ja;J)V

    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Jd;JLcom/facebook/ads/redexgen/X/Ja;)Lcom/facebook/ads/redexgen/X/QH;
    .locals 0

    .line 40525
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Jd;->A03(JLcom/facebook/ads/redexgen/X/Ja;)Lcom/facebook/ads/redexgen/X/QH;

    move-result-object p0

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jd;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Jd;)Ljava/lang/String;
    .locals 0

    .line 40526
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Jd;)Ljava/util/Map;
    .locals 0

    .line 40527
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A02:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Jd;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 40528
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jd;->A02:Ljava/util/Map;

    return-object p1
.end method

.method private A09()V
    .locals 6

    .line 40529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QY;->A0A(Lcom/facebook/ads/redexgen/X/7N;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40530
    .end local v0
    :cond_0
    return-void

    .line 40531
    :cond_1
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 40532
    .local v0, "ex":Lcom/facebook/ads/redexgen/X/7t;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7t;->A03(I)V

    .line 40533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40534
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/7s;->A1w:I

    .line 40535
    const/16 v2, 0x56

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 40536
    return-void
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x67

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x3dt
        0x3et
        0x68t
        0x3ft
        0x69t
        0x68t
        0x69t
        0x7at
        0x69t
        0x6bt
        0x77t
        0x75t
        0x4et
        0x41t
        0x44t
        0x48t
        0x43t
        0x59t
        0x52t
        0x5ft
        0x48t
        0x5ct
        0x58t
        0x48t
        0x5et
        0x59t
        0x52t
        0x44t
        0x49t
        0x62t
        0x58t
        0xbt
        0x79t
        0x65t
        0x11t
        0xbt
        0x64t
        0x65t
        0xat
        0x6ct
        0x63t
        0x66t
        0x66t
        0xat
        0x58t
        0x4ft
        0x49t
        0x4ft
        0x43t
        0x5ct
        0x4ft
        0x4et
        0x14t
        0x35t
        0x7at
        0x1ct
        0x33t
        0x36t
        0x36t
        0x7at
        0x3ft
        0x28t
        0x28t
        0x35t
        0x28t
        0x7at
        0x39t
        0x35t
        0x3et
        0x3ft
        0x7at
        0x1t
        0x7ft
        0x29t
        0x7t
        0x7at
        0x7ft
        0x29t
        0xft
        0xdt
        0x6t
        0xdt
        0x1at
        0x1t
        0xbt
        0x51t
        0x5at
        0x4bt
        0x48t
        0x50t
        0x4dt
        0x54t
        0x28t
        0x29t
        0x0t
        0x2ft
        0x2at
        0x2at
        0xet
        0x29t
        0x29t
        0x2dt
    .end array-data
.end method

.method private A0B(ILjava/lang/String;)V
    .locals 6

    const/16 v2, 0x5d

    const/16 v1, 0xa

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x25

    const/16 v1, 0x10

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40537
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 40538
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/16 v2, 0x35

    const/16 v1, 0x1a

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40539
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/JO;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 40540
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 1

    .line 40541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A01:Lcom/facebook/ads/redexgen/X/Jc;

    if-eqz v0, :cond_0

    .line 40542
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Jc;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 40543
    :cond_0
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 1

    .line 40544
    new-instance v0, Lcom/facebook/ads/redexgen/X/Td;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Td;-><init>(Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/JA;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(Ljava/lang/Runnable;)V

    .line 40545
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Jd;)V
    .locals 0

    .line 40546
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jd;->A09()V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 0

    .line 40547
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jd;->A0C(Lcom/facebook/ads/redexgen/X/JA;)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 0

    .line 40548
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jd;->A0D(Lcom/facebook/ads/redexgen/X/JA;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 0

    .line 40549
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jd;->A0K(Lcom/facebook/ads/redexgen/X/Tc;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Jd;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V
    .locals 0

    .line 40550
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Jd;->A0M(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/Jd;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V
    .locals 0

    .line 40551
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Jd;->A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V

    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 1

    .line 40552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A01:Lcom/facebook/ads/redexgen/X/Jc;

    if-eqz v0, :cond_0

    .line 40553
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Jc;->ACh(Lcom/facebook/ads/redexgen/X/Tc;)V

    .line 40554
    :cond_0
    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 1

    .line 40555
    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/Tc;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(Ljava/lang/Runnable;)V

    .line 40556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A05()Lcom/facebook/ads/redexgen/X/7T;

    move-result-object v0

    .line 40558
    .local v0, "syncModule":Lcom/facebook/ads/redexgen/X/7T;
    if-eqz v0, :cond_0

    .line 40559
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7T;->A5W()V

    .line 40560
    .end local v0    # "syncModule":Lcom/facebook/ads/redexgen/X/7T;
    :cond_0
    return-void
.end method

.method private A0M(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V
    .locals 10

    move-object v0, p0

    .line 40561
    :try_start_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jd;->A05:Lcom/facebook/ads/redexgen/X/Je;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Je;->A06(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Jg;

    move-result-object v6

    .line 40562
    .local v0, "serverResponse":Lcom/facebook/ads/redexgen/X/Jg;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jg;->A00()Lcom/facebook/ads/redexgen/X/8A;

    move-result-object v5

    .line 40563
    .local p2, "placement":Lcom/facebook/ads/redexgen/X/8A;
    const/4 v4, 0x1

    if-eqz v5, :cond_0

    .line 40564
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IK;->A0P(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/IK;

    move-result-object v2

    .line 40565
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8A;->A08()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/IK;->A2L(Ljava/lang/String;)V

    .line 40566
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/7r;->A9i()V

    .line 40567
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jd;->A03:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8A;->A06()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/2D;->A0N(Ljava/lang/String;)V

    .line 40568
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v1

    .line 40569
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8B;->A0B()J

    move-result-wide v1

    .line 40570
    invoke-static {v1, v2, p4}, Lcom/facebook/ads/redexgen/X/JZ;->A05(JLcom/facebook/ads/redexgen/X/Ja;)V

    .line 40571
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jd;->A09:Ljava/util/concurrent/Executor;

    invoke-static {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/LZ;->A01(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8A;)V

    .line 40572
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    const/4 v2, 0x7

    const/16 v1, 0x7b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40573
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kl;->A02()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v8, v1}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 40574
    .local v4, "reactNativeException":Lcom/facebook/ads/redexgen/X/7t;
    invoke-virtual {v8, v4}, Lcom/facebook/ads/redexgen/X/7t;->A04(I)V

    .line 40575
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/7t;->A08(Z)V

    .line 40576
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40577
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v7

    const/16 v3, 0x4f

    const/4 v2, 0x7

    const/16 v1, 0x38

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7s;->A1W:I

    .line 40578
    invoke-interface {v7, v2, v1, v8}, Lcom/facebook/ads/redexgen/X/7r;->A9c(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 40579
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    .end local v4    # "reactNativeException":Lcom/facebook/ads/redexgen/X/7t;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jb;->A00:[I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jg;->A01()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Jf;->ordinal()I

    move-result v1

    aget v2, v2, v1

    if-eq v2, v4, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    .line 40580
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40581
    .local p3, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40582
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A00:J

    .line 40583
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v5

    .line 40584
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 40585
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 40586
    move-object v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40587
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jd;->A0D(Lcom/facebook/ads/redexgen/X/JA;)V

    goto/16 :goto_3

    .line 40588
    .end local p3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    check-cast v6, Lcom/facebook/ads/redexgen/X/Tb;

    .line 40589
    .local v2, "serverResponseError":Lcom/facebook/ads/redexgen/X/Tb;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tb;->A04()Ljava/lang/String;

    move-result-object v8

    .line 40590
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tb;->A03()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40591
    invoke-static {v2, v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v3

    .line 40592
    .local v4, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tb;->A03()I

    move-result v1

    invoke-direct {v0, v1, v8}, Lcom/facebook/ads/redexgen/X/Jd;->A0B(ILjava/lang/String;)V

    .line 40593
    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    move-object v8, p1

    .line 40594
    .local v5, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40595
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A00:J

    .line 40596
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v5

    .line 40597
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 40598
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 40599
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40600
    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jd;->A0D(Lcom/facebook/ads/redexgen/X/JA;)V

    goto/16 :goto_3

    .line 40601
    .end local v2    # "serverResponseError":Lcom/facebook/ads/redexgen/X/Tb;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local v4    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v5    # "finalErrMessage":Ljava/lang/String;
    :cond_3
    move-object v4, v6

    check-cast v4, Lcom/facebook/ads/redexgen/X/Tc;

    .line 40602
    .local v2, "ads":Lcom/facebook/ads/redexgen/X/Tc;
    if-eqz v5, :cond_5

    .line 40603
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v1

    .line 40604
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8B;->A0E()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40605
    invoke-static {p1, p4}, Lcom/facebook/ads/redexgen/X/JZ;->A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 40606
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A02:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 40607
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Jd;->A02:Ljava/util/Map;

    const/16 v3, 0xd

    const/16 v2, 0x11

    const/16 v1, 0x5d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jd;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 40608
    .local v4, "clientChallenge":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jg;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 40609
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 40610
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40611
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7N;->A02()Lcom/facebook/ads/redexgen/X/7O;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40612
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jg;->A02()Ljava/lang/String;

    move-result-object v1

    .line 40613
    invoke-interface {v3, v2, v5, v1}, Lcom/facebook/ads/redexgen/X/7O;->AER(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Ljava/lang/String;)V

    .line 40614
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    .end local v4    # "clientChallenge":Ljava/lang/String;
    :cond_5
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A00:J

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v1

    invoke-interface {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/0R;->A2l(J)V

    .line 40615
    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Jd;->A0L(Lcom/facebook/ads/redexgen/X/Tc;)V

    goto :goto_3

    .line 40616
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40617
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 40618
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 40619
    .local p2, "errorMessage":Ljava/lang/String;
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40620
    .restart local p3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40621
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Jd;->A00:J

    .line 40622
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v5

    .line 40623
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 40624
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 40625
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40626
    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jd;->A0D(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 40627
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p2    # "errorMessage":Ljava/lang/String;
    .end local p3    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :goto_3
    return-void
.end method

.method private A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V
    .locals 7

    .line 40628
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A09:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Tg;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Tg;-><init>(Lcom/facebook/ads/redexgen/X/Jd;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40629
    return-void
.end method


# virtual methods
.method public final A0O(Lcom/facebook/ads/redexgen/X/Ja;)V
    .locals 9

    .line 40630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:J

    .line 40631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A0B(Lcom/facebook/ads/redexgen/X/7N;)V

    .line 40632
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JZ;->A08(Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40633
    sget-object v1, Lcom/facebook/ads/redexgen/X/LQ;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ti;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ti;-><init>(Lcom/facebook/ads/redexgen/X/Jd;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40634
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JZ;->A02(Lcom/facebook/ads/redexgen/X/Ja;)Ljava/lang/String;

    move-result-object v2

    .line 40635
    .local v0, "lastResponse":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 40636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->AFn()V

    .line 40637
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Jd;->A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Ja;)V

    .line 40638
    return-void

    .line 40639
    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40640
    .local v1, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40641
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jd;->A00:J

    .line 40642
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v4

    .line 40643
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 40644
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v7

    .line 40645
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 40646
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 40647
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0D(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 40648
    return-void

    .line 40649
    .end local v0    # "lastResponse":Ljava/lang/String;
    .end local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jd;->A09:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Th;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Th;-><init>(Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/Ja;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40650
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/Jc;)V
    .locals 0

    .line 40651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jd;->A01:Lcom/facebook/ads/redexgen/X/Jc;

    .line 40652
    return-void
.end method
