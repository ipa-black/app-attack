.class public final Lcom/facebook/ads/redexgen/X/8v;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/OB;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QA;

.field public final A01:I
    .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController$AdFormatType;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A05:Lcom/facebook/ads/redexgen/X/LD;

.field public final A06:Lcom/facebook/ads/redexgen/X/OB;

.field public final A07:Lcom/facebook/ads/redexgen/X/OM;

.field public final A08:Ljava/lang/String;

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 19462
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gR8VXB3ia"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OJTiurBFiCqcREvzh7o4PkhSqDGudpIq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iaBHwIBC1utH6CwOSIC2yyAu4ZYXfJ61"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YdU4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YcTfP9iPeB3iMp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vsmHP1kkKyGC9kag"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2EZKw0n31g6TC4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KAWIkc2sX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8v;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/OB;Lcom/facebook/ads/redexgen/X/Zs;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/LD;)V
    .locals 7
    .param p6    # I
        .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController$AdFormatType;
        .end annotation
    .end param

    .line 19463
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19464
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 19465
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8v;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    .line 19466
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/8v;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    .line 19467
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/8v;->A08:Ljava/lang/String;

    .line 19468
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8v;->A06:Lcom/facebook/ads/redexgen/X/OB;

    .line 19469
    iput p6, p0, Lcom/facebook/ads/redexgen/X/8v;->A01:I

    .line 19470
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8v;->A01:I

    const/4 v2, 0x0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    .line 19471
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/OM;

    invoke-direct {v0, v1, p4, p2, p6}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    .line 19472
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/8v;->A09:Z

    .line 19473
    .end local v0
    :goto_0
    if-eqz p7, :cond_1

    .line 19474
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/8v;->A05:Lcom/facebook/ads/redexgen/X/LD;

    .line 19475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0, p7}, Lcom/facebook/ads/redexgen/X/OM;->A0Z(Lcom/facebook/ads/redexgen/X/LD;)V

    .line 19476
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/S7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S7;-><init>(Lcom/facebook/ads/redexgen/X/8v;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0c(Lcom/facebook/ads/redexgen/X/OL;)V

    .line 19477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/OM;->A0a(Lcom/facebook/ads/redexgen/X/OB;)V

    .line 19478
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 19479
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19480
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    .line 19481
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v2

    .line 19482
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 19483
    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Im;->AFr(Landroid/view/View;Ljava/lang/String;ZZZ)V

    .line 19484
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8v;->A04()V

    .line 19485
    return-void

    .line 19486
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0L()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A05:Lcom/facebook/ads/redexgen/X/LD;

    goto :goto_1

    .line 19487
    :cond_2
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    .line 19488
    .local v0, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/OM;
    if-eqz v0, :cond_3

    .line 19489
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    .line 19490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A09:Z

    goto :goto_0

    .line 19491
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/OM;

    invoke-direct {v0, v1, p4, p2, p6}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    .line 19492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/ON;->A03(Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/OM;)V

    .line 19493
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/8v;->A09:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Zs;Ljava/lang/String;I)V
    .locals 8
    .param p5    # I
        .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController$AdFormatType;
        .end annotation
    .end param

    .line 19494
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/8v;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/OB;Lcom/facebook/ads/redexgen/X/Zs;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/LD;)V

    .line 19495
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8v;)Lcom/facebook/ads/redexgen/X/OB;
    .locals 0

    .line 19496
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8v;->A06:Lcom/facebook/ads/redexgen/X/OB;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xa5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        0x54t
        0x5bt
        0x12t
        0x41t
        0x15t
        0x46t
        0x41t
        0x54t
        0x47t
        0x41t
        0x15t
        0x74t
        0x40t
        0x51t
        0x5ct
        0x50t
        0x5bt
        0x56t
        0x50t
        0x7bt
        0x50t
        0x41t
        0x42t
        0x5at
        0x47t
        0x5et
        0x74t
        0x56t
        0x41t
        0x5ct
        0x43t
        0x5ct
        0x41t
        0x4ct
        0x1bt
        0x15t
        0x78t
        0x54t
        0x5et
        0x50t
        0x15t
        0x46t
        0x40t
        0x47t
        0x50t
        0x15t
        0x41t
        0x5dt
        0x54t
        0x41t
        0x15t
        0x5ct
        0x41t
        0x12t
        0x46t
        0x15t
        0x5ct
        0x5bt
        0x15t
        0x4ct
        0x5at
        0x40t
        0x47t
        0x15t
        0x74t
        0x5bt
        0x51t
        0x47t
        0x5at
        0x5ct
        0x51t
        0x78t
        0x54t
        0x5bt
        0x5ct
        0x53t
        0x50t
        0x46t
        0x41t
        0x1bt
        0x4dt
        0x58t
        0x59t
        0x15t
        0x53t
        0x5ct
        0x59t
        0x50t
        0x1bt
        0x1et
        0x1at
        0x19t
        0x2dt
        0x3ct
        0x31t
        0x3dt
        0x36t
        0x3bt
        0x3dt
        0x16t
        0x3dt
        0x2ct
        0x2ft
        0x37t
        0x2at
        0x33t
        0x36t
        0x39t
        0x8t
        0x36t
        0x34t
        0x23t
        0x3et
        0x21t
        0x3et
        0x23t
        0x2et
        0x4dt
        0x42t
        0x47t
        0x4dt
        0x45t
        0x71t
        0x5dt
        0x41t
        0x5bt
        0x5ct
        0x4dt
        0x4bt
        0x37t
        0x38t
        0x2dt
        0x30t
        0x2ft
        0x3ct
        0x18t
        0x3dt
        0x1dt
        0x38t
        0x2dt
        0x38t
        0x1bt
        0x2ct
        0x37t
        0x3dt
        0x35t
        0x3ct
        0x21t
        0x27t
        0x31t
        0x26t
        0x37t
        0x38t
        0x3dt
        0x37t
        0x3ft
        0x16t
        0x9t
        0x5t
        0x17t
        0x34t
        0x19t
        0x10t
        0x5t
    .end array-data
.end method

.method private final A03()V
    .locals 3

    .line 19497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/OM;->A0d(Lcom/facebook/ads/redexgen/X/S0;)V

    .line 19498
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A09:Z

    if-nez v0, :cond_1

    .line 19499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4z()V

    .line 19500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0X()V

    .line 19501
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8v;->A08()V

    .line 19502
    return-void

    .line 19503
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A50()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/8v;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19504
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/8v;->A0B:[Ljava/lang/String;

    const-string v1, "EW3rEVX7vA8fzU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ztAtYR2DvpL08d"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19505
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8v;->A01:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    .line 19506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A06:Lcom/facebook/ads/redexgen/X/OB;

    if-eqz v0, :cond_3

    .line 19507
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/OB;->AAs(Lcom/facebook/ads/redexgen/X/8v;)V

    .line 19508
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Im;->AAg()V

    goto :goto_0

    .line 19510
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8v;->AFS()V

    goto :goto_0
.end method

.method private final A04()V
    .locals 1

    .line 19511
    invoke-static {}, Lcom/facebook/ads/redexgen/X/OM;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19512
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8v;->A03()V

    .line 19513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0W()V

    .line 19514
    return-void
.end method

.method private A05(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/Zs;)V
    .locals 4

    .line 19515
    sget-object v3, Lcom/facebook/ads/redexgen/X/Jj;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    const/16 v2, 0x9d

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19516
    const/16 v2, 0x82

    const/16 v1, 0x12

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19517
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19518
    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/Zs;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 19519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A04(Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v1

    .line 19520
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/8v;->A05(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/Zs;)V

    .line 19521
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KG;->A09(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19522
    :catch_0
    move-exception v5

    .line 19523
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 19524
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 19525
    const/16 v2, 0x6b

    const/16 v1, 0xb

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 19526
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19527
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .locals 11

    .line 19528
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19529
    return-void

    .line 19530
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/NI;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/8v;->A08:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/8v;->A00:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/8v;->A05:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/8v;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/NI;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 19531
    .local v0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/NI;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 19532
    .local v1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x76

    const/16 v1, 0xc

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x94

    const/16 v1, 0x9

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/NI;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19534
    return-void
.end method


# virtual methods
.method public final A08()V
    .locals 3

    .line 19535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 19536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    .line 19537
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19538
    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/8v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19539
    return-void
.end method

.method public final A89()V
    .locals 1

    .line 19540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1M;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8v;->A07(Ljava/lang/String;)V

    .line 19541
    return-void
.end method

.method public final A8A(Ljava/lang/String;)V
    .locals 0

    .line 19542
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8v;->A07(Ljava/lang/String;)V

    .line 19543
    return-void
.end method

.method public final A8E()V
    .locals 0

    .line 19544
    return-void
.end method

.method public final A8w()V
    .locals 2

    .line 19545
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/S6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S6;-><init>(Lcom/facebook/ads/redexgen/X/8v;)V

    .line 19546
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19547
    return-void
.end method

.method public final AB4()V
    .locals 1

    .line 19548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8v;->A06(Lcom/facebook/ads/redexgen/X/Zs;)V

    .line 19549
    return-void
.end method

.method public final AB8()V
    .locals 0

    .line 19550
    return-void
.end method

.method public final ABm(Z)V
    .locals 0

    .line 19551
    return-void
.end method

.method public final ACZ()V
    .locals 0

    .line 19552
    return-void
.end method

.method public final AD5(Z)V
    .locals 0

    .line 19553
    return-void
.end method

.method public final AD7(Z)V
    .locals 0

    .line 19554
    return-void
.end method

.method public final ADL(Ljava/lang/String;)V
    .locals 0

    .line 19555
    return-void
.end method

.method public final AFS()V
    .locals 1

    .line 19556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A06:Lcom/facebook/ads/redexgen/X/OB;

    if-eqz v0, :cond_0

    .line 19557
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/OB;->AAs(Lcom/facebook/ads/redexgen/X/8v;)V

    .line 19558
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .line 19559
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;
    .locals 1

    .line 19560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A04:Lcom/facebook/ads/redexgen/X/Ia;

    return-object v0
.end method

.method public getDynamicWebViewController()Lcom/facebook/ads/redexgen/X/OM;
    .locals 1

    .line 19561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 19562
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8v;->requestDisallowInterceptTouchEvent(Z)V

    .line 19563
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/QA;)V
    .locals 1

    .line 19564
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8v;->A00:Lcom/facebook/ads/redexgen/X/QA;

    .line 19565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A07:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OM;->A0e(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 19566
    return-void
.end method
