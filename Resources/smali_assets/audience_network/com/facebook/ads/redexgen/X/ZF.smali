.class public final Lcom/facebook/ads/redexgen/X/ZF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1x;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/RewardedVideoAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/1B;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/Eb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/YN;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/LD;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

.field public final A0B:Lcom/facebook/ads/redexgen/X/24;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 70046
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gd6Snq8TqC5qGLc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5Vo8FrFWo5Fl4YG5W1yHT6ZfMsOXSACT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HYpFHiAeuVvng5d4eXQK0awgijL0SEef"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zgL9OdntC9Jt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c4pha1QVXZPHNWU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oPtBq8V8zceab2K03f0YSkruz1vfGvQp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tGZii7gSURWSZ1CI0FSKqsks"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YmWpveYB3lCv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZF;->A0B()V

    const-class v0, Lcom/facebook/ads/redexgen/X/ZF;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZF;->A0E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/24;Lcom/facebook/ads/redexgen/X/27;Ljava/lang/String;)V
    .locals 2

    .line 70047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70048
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A00:I

    .line 70049
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    .line 70050
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A01:J

    .line 70051
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    .line 70052
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/24;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70053
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z8;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/facebook/ads/redexgen/X/Z8;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/27;Lcom/facebook/ads/redexgen/X/ZF;Lcom/facebook/ads/redexgen/X/24;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    .line 70054
    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A07:Lcom/facebook/ads/redexgen/X/LD;

    .line 70055
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ZF;)J
    .locals 1

    .line 70056
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ZF;)J
    .locals 1

    .line 70057
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A02:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 0

    .line 70058
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A03:Lcom/facebook/ads/RewardedVideoAd;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/ZF;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 0

    .line 70059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A03:Lcom/facebook/ads/RewardedVideoAd;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;
    .locals 0

    .line 70060
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/1B;
    .locals 0

    .line 70061
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A04:Lcom/facebook/ads/redexgen/X/1B;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/ZF;Lcom/facebook/ads/redexgen/X/1B;)Lcom/facebook/ads/redexgen/X/1B;
    .locals 0

    .line 70062
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A04:Lcom/facebook/ads/redexgen/X/1B;

    return-object p1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/Eb;
    .locals 0

    .line 70063
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;
    .locals 0

    .line 70064
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/LD;
    .locals 0

    .line 70065
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A07:Lcom/facebook/ads/redexgen/X/LD;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZF;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZF;->A0C:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZF;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A0D:[Ljava/lang/String;

    const-string v1, "OGOVhUIoezz1oHK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "xl2MkcRK0CWEWUY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        0x57t
        0x19t
        0x58t
        0x5dt
        0x19t
        0x55t
        0x56t
        0x58t
        0x5dt
        0x19t
        0x50t
        0x4at
        0x19t
        0x58t
        0x55t
        0x4bt
        0x5ct
        0x58t
        0x5dt
        0x40t
        0x19t
        0x50t
        0x57t
        0x19t
        0x49t
        0x4bt
        0x56t
        0x5et
        0x4bt
        0x5ct
        0x4at
        0x4at
        0x17t
        0x19t
        0x60t
        0x56t
        0x4ct
        0x19t
        0x4at
        0x51t
        0x56t
        0x4ct
        0x55t
        0x5dt
        0x19t
        0x4et
        0x58t
        0x50t
        0x4dt
        0x19t
        0x5ft
        0x56t
        0x4bt
        0x19t
        0x58t
        0x5dt
        0x75t
        0x56t
        0x58t
        0x5dt
        0x5ct
        0x5dt
        0x11t
        0x10t
        0x19t
        0x4dt
        0x56t
        0x19t
        0x5bt
        0x5ct
        0x19t
        0x5at
        0x58t
        0x55t
        0x55t
        0x5ct
        0x5dt
        0x2ft
        0x18t
        0x18t
        0x5t
        0x18t
        0x4at
        0x6t
        0x5t
        0xbt
        0xet
        0x3t
        0x4t
        0xdt
        0x4at
        0x18t
        0xft
        0x1dt
        0xbt
        0x18t
        0xet
        0xft
        0xet
        0x4at
        0x1ct
        0x3t
        0xet
        0xft
        0x5t
        0x4at
        0xbt
        0xet
        0x5ct
        0x4dt
        0x54t
    .end array-data
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/ZF;Z)V
    .locals 0

    .line 70066
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZF;->A0E(Z)V

    return-void
.end method

.method private A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70067
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    if-eqz v0, :cond_0

    .line 70068
    sget-object v3, Lcom/facebook/ads/redexgen/X/ZF;->A0E:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70069
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0E(Z)V

    .line 70070
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    .line 70071
    new-instance v5, Lcom/facebook/ads/redexgen/X/1p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/24;->A0C:Ljava/lang/String;

    sget-object v7, Lcom/facebook/ads/redexgen/X/JF;->A06:Lcom/facebook/ads/redexgen/X/JF;

    sget-object v8, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v9, Lcom/facebook/ads/redexgen/X/JD;->A07:Lcom/facebook/ads/redexgen/X/JD;

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/1p;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JD;I)V

    .line 70072
    .local v0, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1p;
    invoke-virtual {v5, p3}, Lcom/facebook/ads/redexgen/X/1p;->A08(Z)V

    .line 70073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70074
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A06:Ljava/lang/String;

    .line 70075
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KU;->A02(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70076
    .local v1, "extraHints":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 70077
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZF;->A0D:[Ljava/lang/String;

    const-string v1, "NRWBzlFLQPOGySbiiYXSLDN6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/24;->A06:Ljava/lang/String;

    .line 70078
    .end local v1    # "extraHints":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A06:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1p;->A06(Ljava/lang/String;)V

    .line 70079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A07:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1p;->A07(Ljava/lang/String;)V

    .line 70080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/24;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Eb;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/Eb;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1p;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    .line 70081
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZH;-><init>(Lcom/facebook/ads/redexgen/X/ZF;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 70082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Za;->A0S(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 70083
    return-void
.end method

.method private A0E(Z)V
    .locals 2

    .line 70084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    if-eqz v1, :cond_0

    .line 70085
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZG;-><init>(Lcom/facebook/ads/redexgen/X/ZF;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 70086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Za;->A0T(Z)V

    .line 70087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    .line 70088
    :cond_0
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/ZF;Z)Z
    .locals 0

    .line 70089
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    return p1
.end method


# virtual methods
.method public final A0G()J
    .locals 2

    .line 70090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    if-eqz v0, :cond_0

    .line 70091
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0D()J

    move-result-wide v0

    return-wide v0

    .line 70092
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0H()V
    .locals 1

    .line 70093
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0E(Z)V

    .line 70094
    return-void
.end method

.method public final A0I()V
    .locals 1

    .line 70095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A06:Lcom/facebook/ads/redexgen/X/YN;

    if-eqz v0, :cond_0

    .line 70096
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YN;->A02()V

    .line 70097
    :cond_0
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 70098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/24;->A03:Lcom/facebook/ads/RewardData;

    .line 70099
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    if-eqz v0, :cond_0

    .line 70100
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eb;->A0V(Lcom/facebook/ads/RewardData;)V

    .line 70101
    :cond_0
    return-void
.end method

.method public final A0K(Lcom/facebook/ads/internal/api/AdCompanionView;)V
    .locals 3

    .line 70102
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdCompanionView;->getAdCompanionViewApi()Lcom/facebook/ads/internal/api/AdCompanionViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A06:Lcom/facebook/ads/redexgen/X/YN;

    .line 70103
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A04:Lcom/facebook/ads/redexgen/X/1B;

    if-eqz v1, :cond_0

    .line 70104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A06:Lcom/facebook/ads/redexgen/X/YN;

    check-cast v1, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/YN;->A03(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;)V

    .line 70105
    :cond_0
    return-void
.end method

.method public final A0L(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A01:J

    .line 70107
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ZF;->A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70108
    :catch_0
    move-exception v6

    .line 70109
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/ZF;->A0E:Ljava/lang/String;

    const/16 v2, 0x4e

    const/16 v1, 0x1f

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70111
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0b:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 70112
    const/16 v2, 0x6d

    const/4 v1, 0x3

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70113
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v5

    .line 70114
    .local v1, "error":Lcom/facebook/ads/AdError;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70115
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A01:J

    .line 70116
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 70117
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 70118
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/24;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 70119
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error":Lcom/facebook/ads/AdError;
    :goto_0
    return-void
.end method

.method public final A0M()Z
    .locals 1

    .line 70120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0U()Z

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

.method public final A0N()Z
    .locals 1

    .line 70121
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    return v0
.end method

.method public final A0O(IJ)Z
    .locals 4

    .line 70122
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 70123
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A0B:Lcom/facebook/ads/redexgen/X/24;

    .line 70124
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/24;->A00()Lcom/facebook/ads/Ad;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 70125
    invoke-interface {v3, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 70126
    return v2

    .line 70127
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    if-eqz v0, :cond_1

    .line 70128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A02:J

    .line 70129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1p;->A02(I)V

    .line 70130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/1p;->A03(J)V

    .line 70131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZF;->A05:Lcom/facebook/ads/redexgen/X/Eb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0I()V

    .line 70132
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    .line 70133
    const/4 v0, 0x1

    return v0

    .line 70134
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/ZF;->A08:Z

    .line 70135
    return v2
.end method
