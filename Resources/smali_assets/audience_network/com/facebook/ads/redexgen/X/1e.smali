.class public final Lcom/facebook/ads/redexgen/X/1e;
.super Lcom/facebook/ads/redexgen/X/3M;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HT;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wl;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:Landroid/media/MediaFormat;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/AL;

.field public final A0D:Lcom/facebook/ads/redexgen/X/AR;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 4430
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2QlMa6qwn7PgdSN4l85jvs7nWajl1MES"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7IDLWOxlh1sFSIB31zRzFYQ7PMnWp72Y"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sIqK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BoflpFUQeBwwM6pd17Qd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rQg4TubfQMsXj8fsx3Kc9qFAo71Wl6cI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0mBM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Xb0wUTlMwSXhcbJOEuklFsawZUYnk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6gVYRFlBQUgMJoz7eJC1LBuasB8Ybt5d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1e;->A06()V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/redexgen/X/BF;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/A7;[Lcom/facebook/ads/redexgen/X/AE;)V
    .locals 8
    .param p3    # Lcom/facebook/ads/redexgen/X/BF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/AM;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/redexgen/X/A7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Cz;",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/AM;",
            "Lcom/facebook/ads/redexgen/X/A7;",
            "[",
            "Lcom/facebook/ads/redexgen/X/AE;",
            ")V"
        }
    .end annotation

    .line 4431
    .local p5, "drmSessionManager":Lcom/facebook/ads/redexgen/X/BF;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/FrameworkMediaCrypto;>;"
    new-instance v7, Lcom/facebook/ads/redexgen/X/Wn;

    move-object/from16 v0, p8

    invoke-direct {v7, p7, v0}, Lcom/facebook/ads/redexgen/X/Wn;-><init>(Lcom/facebook/ads/redexgen/X/A7;[Lcom/facebook/ads/redexgen/X/AE;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/1e;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/redexgen/X/BF;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/AR;)V

    .line 4432
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/redexgen/X/BF;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/AR;)V
    .locals 2
    .param p3    # Lcom/facebook/ads/redexgen/X/BF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/AM;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Cz;",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/AM;",
            "Lcom/facebook/ads/redexgen/X/AR;",
            ")V"
        }
    .end annotation

    .line 4433
    .local p3, "drmSessionManager":Lcom/facebook/ads/redexgen/X/BF;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3M;-><init>(ILcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/redexgen/X/BF;Z)V

    .line 4434
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0B:Landroid/content/Context;

    .line 4435
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    .line 4436
    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, p5, p6}, Lcom/facebook/ads/redexgen/X/AL;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/AM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    .line 4437
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wl;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Wl;-><init>(Lcom/facebook/ads/redexgen/X/1e;Lcom/facebook/ads/redexgen/X/Af;)V

    invoke-interface {p7, v0}, Lcom/facebook/ads/redexgen/X/AR;->AEy(Lcom/facebook/ads/redexgen/X/AP;)V

    .line 4438
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Ct;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .locals 5

    .line 4439
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Ct;->A02:Ljava/lang/String;

    const/16 v2, 0xf

    const/16 v1, 0x16

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4440
    const/4 v4, 0x1

    .line 4441
    .local v0, "needsRawDecoderWorkaround":Z
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x17

    if-ne v1, v0, :cond_0

    .line 4442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4443
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 4444
    const/16 v2, 0x25

    const/16 v1, 0x19

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4445
    const/4 v4, 0x0

    .line 4446
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz v4, :cond_1

    .line 4447
    const/4 v0, -0x1

    return v0

    .line 4448
    .end local v0    # "needsRawDecoderWorkaround":Z
    :cond_1
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A09:I

    return v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Ct;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .locals 1

    .line 4449
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1e;->A00(Lcom/facebook/ads/redexgen/X/Ct;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    .line 4450
    .local v0, "maxInputSize":I
    return v0
.end method

.method private final A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;I)Landroid/media/MediaFormat;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 4451
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 4452
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4453
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    const/16 v2, 0x47

    const/16 v1, 0xd

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4454
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4455
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/D5;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 4456
    const/16 v2, 0x63

    const/16 v1, 0xe

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p3}, Lcom/facebook/ads/redexgen/X/D5;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 4457
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    .line 4458
    const/4 v3, 0x0

    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4459
    :cond_0
    return-object v4
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1e;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 0

    .line 4460
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1e;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 6

    .line 4461
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1e;->A8h()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AR;->A6M(Z)J

    move-result-wide v2

    .line 4462
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 4463
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A08:Z

    if-eqz v0, :cond_1

    .line 4464
    :goto_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1e;->A05:J

    .line 4465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A08:Z

    .line 4466
    :cond_0
    return-void

    .line 4467
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A05:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x97

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1e;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x25t
        0x27t
        0x32t
        0x44t
        0x39t
        0x2ft
        0x29t
        0x44t
        0xbt
        0xbt
        0x9t
        0x44t
        0xet
        0xft
        0x9t
        0x6t
        0x4t
        0x11t
        0x67t
        0x2et
        0x26t
        0x26t
        0x2et
        0x25t
        0x2ct
        0x67t
        0x3bt
        0x28t
        0x3et
        0x67t
        0x2dt
        0x2ct
        0x2at
        0x26t
        0x2dt
        0x2ct
        0x3bt
        0x6ft
        0x60t
        0x6at
        0x7ct
        0x61t
        0x67t
        0x6at
        0x20t
        0x7dt
        0x61t
        0x68t
        0x7at
        0x79t
        0x6ft
        0x7ct
        0x6bt
        0x20t
        0x62t
        0x6bt
        0x6ft
        0x60t
        0x6ct
        0x6ft
        0x6dt
        0x65t
        0x6ct
        0x78t
        0x69t
        0x64t
        0x62t
        0x22t
        0x7ft
        0x6ct
        0x7at
        0x3dt
        0x36t
        0x3ft
        0x30t
        0x30t
        0x3bt
        0x32t
        0x73t
        0x3dt
        0x31t
        0x2bt
        0x30t
        0x2at
        0x3bt
        0x36t
        0x21t
        0x3ct
        0x3ft
        0x27t
        0x36t
        0xdt
        0x0t
        0x17t
        0xat
        0x14t
        0x9t
        0x11t
        0x0t
        0x52t
        0x5et
        0x47t
        0x12t
        0x56t
        0x51t
        0x4ft
        0x4at
        0x4bt
        0x12t
        0x4ct
        0x56t
        0x45t
        0x5at
        0x3t
        0x7t
        0x3t
        0xbt
        0x2ft
        0x2dt
        0x36t
        0x30t
        0x2dt
        0x36t
        0x2bt
        0x26t
        0x7dt
        0x6ft
        0x63t
        0x7et
        0x62t
        0x6bt
        0x23t
        0x7ct
        0x6ft
        0x7at
        0x6bt
        0x1dt
        0xft
        0x3t
        0x1dt
        0x1bt
        0x0t
        0x9t
        0x48t
        0x57t
        0x40t
        0x5dt
        0x54t
        0x5et
        0x46t
        0x57t
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/1e;Z)Z
    .locals 0

    .line 4468
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1e;->A08:Z

    return p1
.end method

.method public static A08(Ljava/lang/String;)Z
    .locals 3

    .line 4469
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 4470
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/lang/String;

    .line 4471
    const/16 v2, 0x88

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:Ljava/lang/String;

    .line 4472
    const/16 v2, 0x8f

    const/16 v1, 0x8

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:Ljava/lang/String;

    .line 4473
    const/16 v2, 0x54

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:Ljava/lang/String;

    .line 4474
    const/16 v2, 0x5b

    const/16 v1, 0x8

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const-string v1, "opGrTNmI0QvRBzLgsKXfoISibxDPDheH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4475
    :goto_0
    return v0

    .line 4476
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A09(Ljava/lang/String;)Z
    .locals 2

    .line 4477
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HV;->A00(Ljava/lang/String;)I

    move-result v1

    .line 4478
    .local v0, "encoding":I
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A8g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A12()V
    .locals 3

    .line 4479
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->AE4()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4480
    :try_start_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3M;->A12()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00()V

    .line 4482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AL;->A04(Lcom/facebook/ads/redexgen/X/Ap;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4483
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const-string v1, "oD9vMZ2y7vvHJ8P8Vn8jWHJMMQFHYWzQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 4484
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00()V

    .line 4485
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AL;->A04(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 4486
    throw v2

    .line 4487
    :catchall_1
    move-exception v2

    .line 4488
    :try_start_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3M;->A12()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00()V

    .line 4490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AL;->A04(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 4491
    throw v2

    .line 4492
    :catchall_2
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00()V

    .line 4493
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AL;->A04(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 4494
    throw v2
.end method

.method public final A13()V
    .locals 1

    .line 4495
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3M;->A13()V

    .line 4496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->ADW()V

    .line 4497
    return-void
.end method

.method public final A14()V
    .locals 1

    .line 4498
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1e;->A05()V

    .line 4499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->pause()V

    .line 4500
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3M;->A14()V

    .line 4501
    return-void
.end method

.method public final A15(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 4502
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3M;->A15(JZ)V

    .line 4503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->reset()V

    .line 4504
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1e;->A05:J

    .line 4505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A07:Z

    .line 4506
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A08:Z

    .line 4507
    return-void
.end method

.method public final A16(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 4508
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3M;->A16(Z)V

    .line 4509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AL;->A05(Lcom/facebook/ads/redexgen/X/Ap;)V

    .line 4510
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()Lcom/facebook/ads/redexgen/X/9o;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9o;->A00:I

    .line 4511
    .local v0, "tunnelingAudioSessionId":I
    if-eqz v1, :cond_0

    .line 4512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/AR;->A5E(I)V

    .line 4513
    :goto_0
    return-void

    .line 4514
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->A4r()V

    goto :goto_0
.end method

.method public final A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Ct;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .locals 1

    .line 4515
    const/4 v0, 0x0

    return v0
.end method

.method public final A1B(Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Cz;",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D2;
        }
    .end annotation

    .line 4516
    .local p0, "drmSessionManager":Lcom/facebook/ads/redexgen/X/BF;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/FrameworkMediaCrypto;>;"
    move-object/from16 v5, p3

    iget-object v9, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    .line 4517
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/HV;->A09(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4518
    return v3

    .line 4519
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v8, 0x15

    if-lt v0, v8, :cond_1

    const/16 v13, 0x20

    .line 4520
    .local v1, "tunnelingSupport":I
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A0x(Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z

    move-result v12

    .line 4521
    .local v4, "supportsFormatDrm":Z
    const/4 v11, 0x4

    if-eqz v12, :cond_3

    .line 4522
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/1e;->A09(Ljava/lang/String;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const-string v1, "6sleKLNQpbvHoKVWyK7EUP7qImvC8hiJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 4523
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Cz;->A7J()Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4524
    or-int/lit8 v0, v13, 0x8

    or-int/2addr v0, v11

    return v0

    .line 4525
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4526
    :cond_3
    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0A:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AR;->A8g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    .line 4527
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/AR;->A8g(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4528
    :cond_5
    return v10

    .line 4529
    :cond_6
    const/4 v6, 0x0

    .line 4530
    .local v6, "requiresSecureDecryption":Z
    iget-object v2, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    .line 4531
    .local v9, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;
    if-eqz v2, :cond_7

    .line 4532
    const/4 v1, 0x0

    .local v10, "i":I
    :goto_1
    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    if-ge v1, v0, :cond_7

    .line 4533
    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A03:Z

    or-int/2addr v6, v0

    .line 4534
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4535
    .end local v10    # "i":I
    :cond_7
    invoke-interface {p1, v9, v6}, Lcom/facebook/ads/redexgen/X/Cz;->A6T(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v4

    .line 4536
    .local v10, "decoderInfo":Lcom/facebook/ads/redexgen/X/Ct;
    if-nez v4, :cond_9

    .line 4537
    if-eqz v6, :cond_8

    invoke-interface {p1, v9, v3}, Lcom/facebook/ads/redexgen/X/Cz;->A6T(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4538
    const/4 v10, 0x2

    .line 4539
    :cond_8
    return v10

    .line 4540
    :cond_9
    if-nez v12, :cond_a

    .line 4541
    return v7

    .line 4542
    :cond_a
    sget v0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    if-lt v0, v8, :cond_c

    iget v6, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_f

    sget-object v2, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const-string v1, "YbsTws3ypMFNM7ai4KKw1OCVUgQ1r"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Svs1q3oiD8cOh72XtRNv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, -0x1

    if-eq v6, v1, :cond_b

    :goto_2
    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    .line 4543
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Ct;->A0G(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    if-eq v0, v1, :cond_c

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    .line 4544
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Ct;->A0F(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const/4 v3, 0x1

    .line 4545
    .local v2, "decoderCapable":Z
    :cond_d
    if-eqz v3, :cond_e

    .line 4546
    .local v3, "formatSupport":I
    :goto_3
    or-int/lit8 v0, v13, 0x8

    or-int/2addr v0, v11

    return v0

    .line 4547
    :cond_e
    const/4 v11, 0x3

    goto :goto_3

    :cond_f
    const/4 v1, -0x1

    if-eq v6, v1, :cond_b

    goto :goto_2
.end method

.method public final A1E(Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Ct;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D2;
        }
    .end annotation

    .line 4548
    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1e;->A09(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4549
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Cz;->A7J()Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    .line 4550
    .local v0, "passthroughDecoderInfo":Lcom/facebook/ads/redexgen/X/Ct;
    if-eqz v0, :cond_0

    .line 4551
    return-object v0

    .line 4552
    .end local v0    # "passthroughDecoderInfo":Lcom/facebook/ads/redexgen/X/Ct;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3M;->A1E(Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    return-object v0
.end method

.method public final A1H()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 4553
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->ADX()V

    .line 4554
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/AQ; {:try_start_0 .. :try_end_0} :catch_0

    .line 4555
    :catch_0
    move-exception v1

    .line 4556
    .local v0, "e":Lcom/facebook/ads/redexgen/X/AQ;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0
.end method

.method public final A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 4557
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1e;->A06:Landroid/media/MediaFormat;

    if-eqz v3, :cond_1

    .line 4558
    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1e;->A0F:[Ljava/lang/String;

    const-string v1, "rkxX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "9ODr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/HV;->A00(Ljava/lang/String;)I

    move-result v3

    .line 4559
    .local v0, "encoding":I
    iget-object p2, p0, Lcom/facebook/ads/redexgen/X/1e;->A06:Landroid/media/MediaFormat;

    .local v1, "format":Landroid/media/MediaFormat;
    goto :goto_0

    .line 4560
    .end local v0    # "encoding":I
    .end local v1    # "format":Landroid/media/MediaFormat;
    :cond_1
    iget v3, p0, Lcom/facebook/ads/redexgen/X/1e;->A04:I

    .line 4561
    .restart local v0    # "encoding":I
    .restart local v1    # "format":Landroid/media/MediaFormat;
    :goto_0
    const/16 v2, 0x47

    const/16 v1, 0xd

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 4562
    .local p0, "channelCount":I
    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 4563
    .local p1, "sampleRate":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A09:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    if-ne v4, v1, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A00:I

    if-ge v0, v1, :cond_2

    .line 4564
    new-array v7, v0, [I

    .line 4565
    .local v2, "channelMap":[I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A00:I

    if-ge v1, v0, :cond_3

    .line 4566
    aput v1, v7, v1

    .line 4567
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4568
    .end local v2    # "channelMap":[I
    :cond_2
    const/4 v7, 0x0

    .line 4569
    .local p2, "channelMap":[I
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    const/4 v6, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/1e;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/1e;->A03:I

    invoke-interface/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/AR;->A49(IIII[III)V

    .line 4570
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/AN; {:try_start_0 .. :try_end_0} :catch_0

    .line 4571
    :catch_0
    move-exception v1

    .line 4572
    .local v2, "e":Lcom/facebook/ads/redexgen/X/AN;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0
.end method

.method public final A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 4573
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3M;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 4574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AL;->A03(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 4575
    iget-object v3, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4576
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0A:I

    .line 4577
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A04:I

    .line 4578
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A00:I

    .line 4579
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A02:I

    .line 4580
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A03:I

    .line 4581
    return-void

    .line 4582
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final A1M(Lcom/facebook/ads/redexgen/X/Wg;)V
    .locals 5

    .line 4583
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A07:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ak;->A03()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4584
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A05:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 4585
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A05:J

    .line 4586
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A07:Z

    .line 4587
    :cond_1
    return-void
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/Ct;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Landroid/media/MediaCrypto;)V
    .locals 5

    .line 4588
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A19()[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/1e;->A01(Lcom/facebook/ads/redexgen/X/Ct;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A01:I

    .line 4589
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ct;->A02:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1e;->A08(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A09:Z

    .line 4590
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Ct;->A04:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0A:Z

    .line 4591
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ct;->A01:Ljava/lang/String;

    if-nez v0, :cond_1

    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v1

    .line 4592
    .local v0, "codecMimeType":Ljava/lang/String;
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A01:I

    invoke-direct {p0, p3, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 4593
    .local v1, "mediaFormat":Landroid/media/MediaFormat;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v2, v1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4594
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0A:Z

    if-eqz v0, :cond_0

    .line 4595
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1e;->A06:Landroid/media/MediaFormat;

    .line 4596
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1e;->A06:Landroid/media/MediaFormat;

    iget-object v3, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1e;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4597
    :goto_1
    return-void

    .line 4598
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A06:Landroid/media/MediaFormat;

    goto :goto_1

    .line 4599
    :cond_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Ct;->A01:Ljava/lang/String;

    goto :goto_0
.end method

.method public final A1O(Ljava/lang/String;JJ)V
    .locals 6

    .line 4600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0C:Lcom/facebook/ads/redexgen/X/AL;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AL;->A06(Ljava/lang/String;JJ)V

    .line 4601
    return-void
.end method

.method public final A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 4602
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0A:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 4603
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4604
    return v2

    .line 4605
    :cond_0
    if-eqz p11, :cond_1

    .line 4606
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ap;->A08:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ap;->A08:I

    .line 4608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->A8B()V

    .line 4609
    return v2

    .line 4610
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0, p6, p9, p10}, Lcom/facebook/ads/redexgen/X/AR;->A88(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4611
    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ap;->A06:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ap;->A06:I

    .line 4613
    return v2

    .line 4614
    :cond_2
    return v1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/AO; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/ads/redexgen/X/AQ; {:try_start_0 .. :try_end_0} :catch_1

    .line 4615
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4616
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0
.end method

.method public final A74()Lcom/facebook/ads/redexgen/X/HT;
    .locals 0

    .line 4617
    return-object p0
.end method

.method public final A7O()Lcom/facebook/ads/redexgen/X/9a;
    .locals 1

    .line 4618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    return-object v0
.end method

.method public final A7R()J
    .locals 2

    .line 4619
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A7i()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 4620
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1e;->A05()V

    .line 4621
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A05:J

    return-wide v0
.end method

.method public final A8C(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 4622
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 4623
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dh;->A8C(ILjava/lang/Object;)V

    .line 4624
    :goto_0
    return-void

    .line 4625
    :cond_0
    check-cast p2, Lcom/facebook/ads/redexgen/X/A6;

    .line 4626
    .local v0, "audioAttributes":Lcom/facebook/ads/redexgen/X/A6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/AR;->AEo(Lcom/facebook/ads/redexgen/X/A6;)V

    .line 4627
    goto :goto_0

    .line 4628
    .end local v0    # "audioAttributes":Lcom/facebook/ads/redexgen/X/A6;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AR;->setVolume(F)V

    .line 4629
    goto :goto_0
.end method

.method public final A8h()Z
    .locals 1

    .line 4630
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3M;->A8h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->A8h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A8r()Z
    .locals 1

    .line 4631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AR;->A8G()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3M;->A8r()Z

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

.method public final AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;
    .locals 1

    .line 4632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1e;->A0D:Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/AR;->AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    return-object v0
.end method
