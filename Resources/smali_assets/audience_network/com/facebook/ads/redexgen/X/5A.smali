.class public final Lcom/facebook/ads/redexgen/X/5A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdViewApi;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/AdListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Et;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/N8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Landroid/util/DisplayMetrics;

.field public final A08:Lcom/facebook/ads/AdView;

.field public final A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Dv;

.field public final A0B:Lcom/facebook/ads/redexgen/X/JD;

.field public final A0C:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 13502
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "of0bzA7MwNGTia9F31tAkieNA09H6OOQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TyTQj7xFBxvma6AaZ1TUwVS6lItsexiQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kN9yyhhGlFuDqh5wulKzoOOSsFZblOVu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DXKKP4SSVuW5x9unPZpKCS00jdGSX4q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ceBkREnsnDPWKQGMERGG6oDocc2kf8dJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ULZujO58Hn4sCnlurEwExiI5FfKtYml"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oBzM86F4GMvLYp6iWCqbmyfPVfF4ncm8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8s2Qgj6JQYkd4IbFNTxV1lfTN5yJUxqm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5A;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5A;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .line 13503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13504
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A00:J

    .line 13505
    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    if-eq p3, v0, :cond_0

    .line 13506
    invoke-virtual {p5}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A07:Landroid/util/DisplayMetrics;

    .line 13507
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/KY;->A04(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/JD;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0B:Lcom/facebook/ads/redexgen/X/JD;

    .line 13508
    move-object v3, p2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5A;->A0C:Ljava/lang/String;

    .line 13509
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/5A;->A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

    .line 13510
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/5A;->A08:Lcom/facebook/ads/AdView;

    .line 13511
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5M;->A06(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    .line 13512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A2h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0B:Lcom/facebook/ads/redexgen/X/JD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KY;->A05(Lcom/facebook/ads/redexgen/X/JD;)Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v4

    .line 13514
    .local v0, "adTemplate":Lcom/facebook/ads/redexgen/X/JF;
    new-instance v2, Lcom/facebook/ads/redexgen/X/1p;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 13515
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/KY;->A04(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/JD;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/1p;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JD;I)V

    .line 13516
    .local v1, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1p;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A05:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1p;->A06(Ljava/lang/String;)V

    .line 13517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A06:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1p;->A07(Ljava/lang/String;)V

    .line 13518
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Et;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Et;-><init>(Lcom/facebook/ads/redexgen/X/Dv;Lcom/facebook/ads/redexgen/X/1p;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    .line 13519
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    new-instance v0, Lcom/facebook/ads/redexgen/X/YF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YF;-><init>(Lcom/facebook/ads/redexgen/X/5A;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 13520
    return-void

    .line 13521
    .end local v0    # "adTemplate":Lcom/facebook/ads/redexgen/X/JF;
    .end local v1    # "adControllerConfig":Lcom/facebook/ads/redexgen/X/1p;
    :cond_0
    const/16 v2, 0x6c

    const/4 v1, 0x6

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/JB;
        }
    .end annotation

    .line 13522
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/5A;->A00(Ljava/lang/String;)Lcom/facebook/ads/AdSize;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5A;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V

    .line 13523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3d()V

    .line 13524
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/AdSize;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/JB;
        }
    .end annotation

    .line 13525
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JK;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    .line 13526
    .local v0, "template":Lcom/facebook/ads/redexgen/X/JF;
    if-eqz v0, :cond_0

    .line 13527
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JK;->A03(Lcom/facebook/ads/redexgen/X/JF;)V

    .line 13528
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KY;->A01(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0

    .line 13529
    :cond_0
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    .line 13530
    const/16 v2, 0x43

    const/16 v1, 0x29

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JB;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/JB;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5A;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

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
    .locals 4

    const/16 v0, 0x7f

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/5A;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5A;->A0E:[Ljava/lang/String;

    const-string v1, "i0zr3oWhaZ1ZQYjulO9yltnfKtDweGPM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "f16HnFk6V4WfoRTY4RGQrwGHYb77b2mz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/5A;->A0D:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x4et
        -0x4ft
        -0x4dt
        -0x1at
        -0x4ft
        -0x4at
        -0x1et
        -0x1dt
        0x79t
        0x77t
        -0x58t
        0x7bt
        0x7et
        0x78t
        -0x55t
        0x77t
        -0xdt
        0x20t
        0x21t
        -0xet
        -0xbt
        -0x8t
        -0xbt
        0x24t
        -0x11t
        0xet
        0x1bt
        0x1bt
        0x12t
        0x1ft
        -0x33t
        0xet
        0x11t
        -0x33t
        0x11t
        0x12t
        0x20t
        0x21t
        0x1ft
        0x1ct
        0x26t
        0x12t
        0x11t
        -0xet
        0x11t
        0x1et
        0x1et
        0x15t
        0x22t
        -0x30t
        0x11t
        0x14t
        -0x30t
        0x1ct
        0x1ft
        0x11t
        0x14t
        -0x30t
        0x22t
        0x15t
        0x21t
        0x25t
        0x15t
        0x23t
        0x24t
        0x15t
        0x14t
        -0x76t
        -0x58t
        -0x4bt
        -0x4bt
        -0x4at
        -0x45t
        0x67t
        -0x53t
        -0x50t
        -0x4bt
        -0x55t
        0x67t
        -0x58t
        0x67t
        -0x45t
        -0x54t
        -0x4ct
        -0x49t
        -0x4dt
        -0x58t
        -0x45t
        -0x54t
        0x67t
        -0x45t
        -0x51t
        -0x58t
        -0x45t
        0x67t
        -0x4dt
        -0x4at
        -0x58t
        -0x55t
        0x67t
        -0x57t
        -0x50t
        -0x55t
        0x67t
        0x6et
        0x6ct
        -0x46t
        0x6et
        -0x4dt
        -0x4at
        -0x5bt
        -0x45t
        -0x34t
        -0x49t
        -0x14t
        -0x13t
        -0x5t
        -0x4t
        -0x6t
        -0x9t
        0x1t
        -0x28t
        -0x25t
        -0x33t
        -0x30t
        -0x53t
        -0x30t
    .end array-data
.end method

.method private A03(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A00:J

    .line 13532
    if-nez p1, :cond_0

    .line 13533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2e()V

    .line 13534
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5A;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13535
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5A;->A0E:[Ljava/lang/String;

    const-string v1, "8EJDtH9EjlwutgZO3WtzB3nx702AY4O"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "dTiKD7UwUCw1SvcKYJrEphBgoR9CLtC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 13536
    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/Za;->A0R(Ljava/lang/String;)V

    .line 13537
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c()V

    .line 13538
    return-void
.end method


# virtual methods
.method public final A04()J
    .locals 2

    .line 13539
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A00:J

    return-wide v0
.end method

.method public final A05()Landroid/util/DisplayMetrics;
    .locals 1

    .line 13540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A07:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/AdListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A02:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/AdView;
    .locals 1

    .line 13542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A08:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Et;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/Dv;
    .locals 1

    .line 13544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/JD;
    .locals 1

    .line 13545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0B:Lcom/facebook/ads/redexgen/X/JD;

    return-object v0
.end method

.method public final A0B(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 4

    .line 13546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A06:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aT;->A3q(Z)V

    .line 13547
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5A;->A06:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    .line 13549
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ou;->A01(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ov;

    move-result-object v3

    .line 13550
    .local v0, "overlayView":Lcom/facebook/ads/redexgen/X/Ov;
    if-eqz v3, :cond_0

    .line 13551
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 13552
    .local v1, "visibleAdViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13553
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13554
    .end local v0    # "overlayView":Lcom/facebook/ads/redexgen/X/Ov;
    .end local v1    # "visibleAdViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 13555
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C(Lcom/facebook/ads/AdListener;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/AdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(Z)V

    .line 13557
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5A;->A02:Lcom/facebook/ads/AdListener;

    .line 13558
    return-void

    .line 13559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/N8;)V
    .locals 0

    .line 13560
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5A;->A04:Lcom/facebook/ads/redexgen/X/N8;

    .line 13561
    return-void
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 1

    .line 13562
    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/In;-><init>(Lcom/facebook/ads/redexgen/X/5A;)V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x72

    const/4 v1, 0x7

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x18

    const/16 v1, 0x13

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2i()V

    .line 13564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 13565
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Et;->A0T(Z)V

    .line 13566
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    .line 13567
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A04:Lcom/facebook/ads/redexgen/X/N8;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A08:Lcom/facebook/ads/AdView;

    .line 13568
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A10(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13569
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5A;->A04:Lcom/facebook/ads/redexgen/X/N8;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5A;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5A;->A0E:[Ljava/lang/String;

    const-string v1, "fmi4ltQko56R0Ot1hIU3uMuoiOam3SD1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "7H1g3sSDF1cZj7eOXlokIXc1uirRZwhG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/N8;->A07()V

    .line 13570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A01:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 13571
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A04:Lcom/facebook/ads/redexgen/X/N8;

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 13572
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A08:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 13573
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5A;->A01:Landroid/view/View;

    .line 13574
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5A;->A02:Lcom/facebook/ads/AdListener;

    .line 13575
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 13576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 13577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 13578
    .local v0, "isInvalidated":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4b(Z)V

    .line 13579
    return v1

    .line 13580
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x79

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2b

    const/16 v1, 0x18

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13581
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5A;->A03(Ljava/lang/String;)V

    .line 13582
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V
    .locals 5

    const/16 v2, 0x79

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2b

    const/16 v1, 0x18

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5A;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/JO;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13583
    check-cast p1, Lcom/facebook/ads/redexgen/X/In;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/In;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5A;->A03(Ljava/lang/String;)V

    .line 13584
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 13585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdViewParentApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 13586
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5A;->A01:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 13587
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5A;->A07:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0B:Lcom/facebook/ads/redexgen/X/JD;

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JH;->A01(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/JD;)V

    .line 13588
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13589
    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A05:Ljava/lang/String;

    .line 13590
    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A06:Ljava/lang/String;

    .line 13591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A0A:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    if-eqz v0, :cond_0

    .line 13592
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1p;->A06(Ljava/lang/String;)V

    .line 13593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A03:Lcom/facebook/ads/redexgen/X/Et;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5A;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1p;->A07(Ljava/lang/String;)V

    .line 13594
    :cond_0
    return-void
.end method
