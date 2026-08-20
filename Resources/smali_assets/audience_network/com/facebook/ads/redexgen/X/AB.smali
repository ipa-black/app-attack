.class public final Lcom/facebook/ads/redexgen/X/AB;
.super Lcom/facebook/ads/redexgen/X/RA;
.source ""


# static fields
.field public static A0F:[B

.field public static final A0G:Ljava/lang/String;


# instance fields
.field public A00:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Ia;

.field public A03:Lcom/facebook/ads/redexgen/X/Ls;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/PB;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/75;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/16;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0B:Lcom/facebook/ads/redexgen/X/PO;

.field public final A0C:Lcom/facebook/ads/redexgen/X/NY;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A0E:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 21504
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AB;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AB;->A0G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 1

    .line 21505
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 21506
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0E:Ljava/lang/String;

    .line 21507
    new-instance v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0D:Lcom/facebook/ads/redexgen/X/Mt;

    .line 21508
    new-instance v0, Lcom/facebook/ads/redexgen/X/AT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0C:Lcom/facebook/ads/redexgen/X/NY;

    .line 21509
    new-instance v0, Lcom/facebook/ads/redexgen/X/AC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AC;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 21510
    new-instance v0, Lcom/facebook/ads/redexgen/X/16;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/16;-><init>(Lcom/facebook/ads/redexgen/X/AB;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 21511
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 21512
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AB;->A02()V

    .line 21513
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21514
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RA;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V

    .line 21515
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0E:Ljava/lang/String;

    .line 21516
    new-instance v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0D:Lcom/facebook/ads/redexgen/X/Mt;

    .line 21517
    new-instance v0, Lcom/facebook/ads/redexgen/X/AT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0C:Lcom/facebook/ads/redexgen/X/NY;

    .line 21518
    new-instance v0, Lcom/facebook/ads/redexgen/X/AC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AC;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 21519
    new-instance v0, Lcom/facebook/ads/redexgen/X/16;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/16;-><init>(Lcom/facebook/ads/redexgen/X/AB;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 21520
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 21521
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AB;->A02()V

    .line 21522
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21523
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/RA;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    .line 21524
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0E:Ljava/lang/String;

    .line 21525
    new-instance v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0D:Lcom/facebook/ads/redexgen/X/Mt;

    .line 21526
    new-instance v0, Lcom/facebook/ads/redexgen/X/AT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0C:Lcom/facebook/ads/redexgen/X/NY;

    .line 21527
    new-instance v0, Lcom/facebook/ads/redexgen/X/AC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AC;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 21528
    new-instance v0, Lcom/facebook/ads/redexgen/X/16;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/16;-><init>(Lcom/facebook/ads/redexgen/X/AB;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A09:Lcom/facebook/ads/redexgen/X/16;

    .line 21529
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 21530
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AB;->A02()V

    .line 21531
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/AB;)Lcom/facebook/ads/redexgen/X/Ls;
    .locals 0

    .line 21532
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AB;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AB;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 4

    .line 21533
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AB;->A0D:Lcom/facebook/ads/redexgen/X/Mt;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AB;->A0C:Lcom/facebook/ads/redexgen/X/NY;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AB;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 21534
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x14a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AB;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        -0x68t
        -0x5bt
        0x5et
        -0x55t
        0x57t
        -0x56t
        -0x55t
        -0x68t
        -0x57t
        -0x55t
        0x57t
        0x78t
        -0x54t
        -0x65t
        -0x60t
        -0x64t
        -0x5bt
        -0x66t
        -0x64t
        -0x7bt
        -0x64t
        -0x55t
        -0x52t
        -0x5at
        -0x57t
        -0x5et
        0x78t
        -0x66t
        -0x55t
        -0x60t
        -0x53t
        -0x60t
        -0x55t
        -0x50t
        0x65t
        0x57t
        -0x7ct
        -0x68t
        -0x5et
        -0x64t
        0x57t
        -0x56t
        -0x54t
        -0x57t
        -0x64t
        0x57t
        -0x55t
        -0x61t
        -0x68t
        -0x55t
        0x57t
        -0x60t
        -0x55t
        0x5et
        -0x56t
        0x57t
        -0x60t
        -0x5bt
        0x57t
        -0x50t
        -0x5at
        -0x54t
        -0x57t
        0x57t
        0x78t
        -0x5bt
        -0x65t
        -0x57t
        -0x5at
        -0x60t
        -0x65t
        -0x7ct
        -0x68t
        -0x5bt
        -0x60t
        -0x63t
        -0x64t
        -0x56t
        -0x55t
        0x65t
        -0x51t
        -0x5ct
        -0x5dt
        0x57t
        -0x63t
        -0x60t
        -0x5dt
        -0x64t
        0x65t
        -0x4dt
        -0x20t
        -0x20t
        -0x23t
        -0x20t
        -0x58t
        -0x72t
        0x6dt
        0x69t
        0x68t
        -0x64t
        -0x75t
        -0x70t
        -0x74t
        -0x6bt
        -0x76t
        -0x74t
        0x75t
        -0x74t
        -0x65t
        -0x62t
        -0x6at
        -0x67t
        -0x6et
        0x71t
        -0x67t
        -0x69t
        -0x68t
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x67t
        -0x70t
        -0x73t
        -0x77t
        -0x6et
        -0x68t
        0x78t
        -0x6dt
        -0x71t
        -0x77t
        -0x6et
        0x44t
        -0x76t
        -0x73t
        -0x6at
        -0x69t
        -0x68t
        0x71t
        -0x67t
        -0x69t
        -0x68t
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x7at
        -0x73t
        -0x78t
        -0x77t
        -0x6dt
        0x79t
        0x76t
        0x6dt
        0x44t
        -0x6dt
        -0x6at
        0x44t
        -0x69t
        -0x77t
        -0x68t
        0x7at
        -0x73t
        -0x78t
        -0x77t
        -0x6dt
        0x71t
        0x74t
        0x68t
        0x44t
        -0x76t
        -0x73t
        -0x6at
        -0x69t
        -0x68t
        -0x10t
        -0x3t
        -0x12t
        -0x10t
        -0xet
        0x3t
        -0x8t
        0x5t
        -0x8t
        0x3t
        0x8t
        -0x50t
        -0x47t
        -0x4at
        -0x4et
        -0x45t
        -0x3ft
        -0x5ft
        -0x44t
        -0x48t
        -0x4et
        -0x45t
        -0x7t
        -0x16t
        -0x5t
        -0x4t
        -0xet
        -0x9t
        -0x10t
        -0x6bt
        -0x69t
        -0x76t
        -0x77t
        -0x76t
        -0x75t
        -0x72t
        -0x6dt
        -0x76t
        -0x77t
        0x74t
        -0x69t
        -0x72t
        -0x76t
        -0x6dt
        -0x67t
        -0x7at
        -0x67t
        -0x72t
        -0x6ct
        -0x6dt
        0x70t
        -0x76t
        -0x62t
        -0x30t
        -0x37t
        -0x3ct
        -0x34t
        -0x30t
        -0x40t
        -0x5ct
        -0x41t
        -0x27t
        -0x29t
        -0x37t
        -0x4et
        -0x3bt
        -0x28t
        -0x33t
        -0x26t
        -0x37t
        -0x59t
        -0x28t
        -0x3bt
        -0x5at
        -0x27t
        -0x28t
        -0x28t
        -0x2dt
        -0x2et
        -0x29t
        -0x36t
        -0x3bt
        -0x3at
        -0x30t
        -0x53t
        -0x30t
        -0x38t
        -0x38t
        -0x3at
        -0x2dt
        -0x16t
        -0x23t
        -0x28t
        -0x27t
        -0x1dt
        -0x3ft
        -0x3ct
        -0x48t
        -0x78t
        0x7bt
        0x76t
        0x77t
        -0x7ft
        0x65t
        0x77t
        0x77t
        0x7dt
        0x66t
        0x7bt
        0x7ft
        0x77t
        -0x28t
        -0x35t
        -0x3at
        -0x39t
        -0x2ft
        -0x49t
        -0x4ct
        -0x52t
        -0x3t
        -0x10t
        -0x15t
        -0x14t
        -0xat
        -0x1at
        -0x5t
        -0x10t
        -0xct
        -0x14t
        -0x1at
        -0x9t
        -0xat
        -0xdt
        -0xdt
        -0x10t
        -0xbt
        -0x12t
        -0x1at
        -0x10t
        -0xbt
        -0x5t
        -0x14t
        -0x7t
        -0x3t
        -0x18t
        -0xdt
        -0x57t
        -0x64t
        -0x68t
        -0x56t
        -0x79t
        -0x54t
        -0x5dt
        -0x68t
    .end array-data
.end method

.method private A04(Landroid/content/Intent;)V
    .locals 4

    .line 21535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A05:Lcom/facebook/ads/redexgen/X/75;

    if-nez v0, :cond_0

    .line 21536
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AB;->A05(Ljava/lang/String;)V

    .line 21537
    return-void

    .line 21538
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A00:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A08:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 21539
    const/16 v2, 0x8b

    const/16 v1, 0x25

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AB;->A05(Ljava/lang/String;)V

    .line 21540
    return-void

    .line 21541
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AB;->A07:Ljava/lang/String;

    const/16 v2, 0xed

    const/16 v1, 0x12

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21542
    sget-object v3, Lcom/facebook/ads/redexgen/X/Jj;->A07:Lcom/facebook/ads/redexgen/X/Jj;

    const/16 v2, 0x142

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11f

    const/16 v1, 0x8

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21544
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AB;->A06:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21545
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AB;->A08:Ljava/lang/String;

    const/16 v2, 0x10a

    const/16 v1, 0x8

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 21547
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kk;->A00(Landroid/content/Context;)I

    move-result v3

    .line 21548
    const/16 v2, 0xcd

    const/16 v1, 0x18

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21549
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getCurrentPositionInMillis()I

    move-result v3

    const/16 v2, 0x112

    const/16 v1, 0xd

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21550
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AB;->A0E:Ljava/lang/String;

    const/16 v2, 0xe5

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A05:Lcom/facebook/ads/redexgen/X/75;

    .line 21552
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PT;->A0W()Landroid/os/Bundle;

    move-result-object v3

    .line 21553
    const/16 v2, 0xff

    const/16 v1, 0xb

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21554
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getVideoProgressReportIntervalMs()I

    move-result v3

    .line 21555
    const/16 v2, 0x127

    const/16 v1, 0x1b

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21556
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21557
    return-void
.end method

.method private A05(Ljava/lang/String;)V
    .locals 7

    .line 21558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 21559
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/7s;->A27:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 21560
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5a

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21561
    const/16 v2, 0xc6

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 21562
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21563
    sget-object v0, Lcom/facebook/ads/redexgen/X/AB;->A0G:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21564
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0m()V
    .locals 1

    .line 21565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A01:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 21566
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->onCtaBroadcast()V

    .line 21567
    :cond_0
    return-void
.end method

.method public final A0n()V
    .locals 7

    .line 21568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A04(Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v2

    .line 21569
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/AB;->A04(Landroid/content/Intent;)V

    .line 21570
    const/4 v1, 0x0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0e(ZI)V

    .line 21571
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/AB;->setVisibility(I)V

    .line 21572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KG;->A09(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21573
    :catch_0
    move-exception v5

    .line 21574
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 21575
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 21576
    const/16 v2, 0xb0

    const/16 v1, 0xb

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 21577
    const/16 v2, 0x61

    const/16 v1, 0x11

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21578
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getListener()Lcom/facebook/ads/redexgen/X/Ls;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 21580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0E:Ljava/lang/String;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 21581
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/RA;->onAttachedToWindow()V

    .line 21582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A02()V

    .line 21583
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 21584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A09:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A03()V

    .line 21585
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/RA;->onDetachedFromWindow()V

    .line 21586
    return-void
.end method

.method public setAdEventManager(Lcom/facebook/ads/redexgen/X/Ia;)V
    .locals 0

    .line 21587
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A02:Lcom/facebook/ads/redexgen/X/Ia;

    .line 21588
    return-void
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A04:Lcom/facebook/ads/redexgen/X/PB;

    if-eqz v0, :cond_0

    .line 21590
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PB;->A0A()V

    .line 21591
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A05:Lcom/facebook/ads/redexgen/X/75;

    if-eqz v0, :cond_1

    .line 21592
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/75;->A0g()V

    .line 21593
    :cond_1
    move-object v7, p1

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/AB;->A06:Ljava/lang/String;

    .line 21594
    const/4 v3, 0x0

    if-eqz v7, :cond_4

    .line 21595
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AB;->A02:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v0, Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {v0, v2, v1, p0, v7}, Lcom/facebook/ads/redexgen/X/75;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;)V

    .line 21596
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A05:Lcom/facebook/ads/redexgen/X/75;

    .line 21597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21598
    if-eqz v7, :cond_2

    .line 21599
    new-instance v3, Lcom/facebook/ads/redexgen/X/PB;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/AB;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AB;->A02:Lcom/facebook/ads/redexgen/X/Ia;

    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;Ljava/util/Map;)V

    .line 21600
    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/AB;->A04:Lcom/facebook/ads/redexgen/X/PB;

    .line 21601
    :goto_1
    return-void

    .line 21602
    :cond_3
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/AB;->A04:Lcom/facebook/ads/redexgen/X/PB;

    goto :goto_1

    .line 21603
    :cond_4
    move-object v0, v3

    goto :goto_0
.end method

.method public setEnableBackgroundVideo(Z)V
    .locals 1

    .line 21604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q5;->setBackgroundPlaybackEnabled(Z)V

    .line 21605
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Ls;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Ls;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21606
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    .line 21607
    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/NativeAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21608
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A01:Lcom/facebook/ads/NativeAd;

    .line 21609
    return-void
.end method

.method public setVideoCTA(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21610
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A07:Ljava/lang/String;

    .line 21611
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21612
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A05:Lcom/facebook/ads/redexgen/X/75;

    if-nez v0, :cond_0

    .line 21613
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AB;->A05(Ljava/lang/String;)V

    .line 21614
    return-void

    .line 21615
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A08:Ljava/lang/String;

    .line 21616
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->setVideoMPD(Ljava/lang/String;)V

    .line 21617
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21618
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AB;->A05:Lcom/facebook/ads/redexgen/X/75;

    if-nez v0, :cond_0

    .line 21619
    const/16 v2, 0x72

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AB;->A05(Ljava/lang/String;)V

    .line 21620
    return-void

    .line 21621
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AB;->A00:Landroid/net/Uri;

    .line 21622
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->setVideoURI(Landroid/net/Uri;)V

    .line 21623
    return-void
.end method
