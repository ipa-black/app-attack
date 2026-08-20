.class public final Lcom/facebook/ads/redexgen/X/a9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;
.implements Lcom/facebook/ads/redexgen/X/1c;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/RewardData;

.field public A02:Lcom/facebook/ads/redexgen/X/0x;

.field public A03:Lcom/facebook/ads/redexgen/X/0y;

.field public A04:Lcom/facebook/ads/redexgen/X/1d;

.field public A05:Lcom/facebook/ads/redexgen/X/Xc;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Ljava/lang/String;

.field public A09:Z

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 71702
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PgLDGrk3t3a26fQCrT3IpIrRB5PMNBKm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uls9HIPpriPjzjIXJVTR7HWmS4IMGzWu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "f2YRmtND2fanruA3kJYGXgN9aGwgjawI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EZdssni07U2TMPMup9RmA63S0tAhTBNo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xilKUxawUAlWzUTJOedtCKHAHwNBDRxA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SxIuirRfQS0L7ik0LzQXw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dF8CYh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NQmOIXzIEfwTEqDrM9Z7TuMEUTKSiMNX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/a9;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71704
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0A:Ljava/lang/String;

    return-void
.end method

.method private A00()I
    .locals 4

    .line 71705
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 71706
    const/16 v2, 0xc2

    const/4 v1, 0x6

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Xc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 71707
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 71708
    .local v1, "rotation":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/a9;->A02()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v2

    .line 71709
    .local v2, "adOrientation":Lcom/facebook/ads/redexgen/X/NB;
    sget-object v0, Lcom/facebook/ads/redexgen/X/NB;->A06:Lcom/facebook/ads/redexgen/X/NB;

    if-ne v2, v0, :cond_0

    .line 71710
    const/4 v0, -0x1

    return v0

    .line 71711
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/NB;->A04:Lcom/facebook/ads/redexgen/X/NB;

    const/4 v0, 0x2

    if-ne v2, v1, :cond_3

    .line 71712
    if-eq v3, v0, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    .line 71713
    const/4 v0, 0x0

    return v0

    .line 71714
    :cond_1
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const-string v1, "WCZdwi0h9oyTFk4ywD5LtkOxTOpQ29Yc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "4yy96Y2PoNFTEE84mLwUlYETryPZgGhE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71715
    :cond_3
    if-eq v3, v0, :cond_4

    .line 71716
    const/4 v0, 0x1

    return v0

    .line 71717
    :cond_4
    const/16 v0, 0x9

    return v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/Jj;
    .locals 1

    .line 71718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A0C()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/NB;
    .locals 1

    .line 71719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A0D()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/a9;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 71720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A09:Z

    .line 71721
    return-void
.end method

.method public static A05()V
    .locals 4

    const/16 v0, 0xc8

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const-string v1, "6qgGoSyjmuhDFT94hunOHzgd3UUS7LMQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "q1PjRK7gg6WFD8n4pAFO870HLaNMi7ir"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/a9;->A0B:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x4et
        0x6ct
        0x63t
        0x2at
        0x79t
        0x2dt
        0x7et
        0x79t
        0x6ct
        0x7ft
        0x79t
        0x2dt
        0x4ct
        0x78t
        0x69t
        0x64t
        0x68t
        0x63t
        0x6et
        0x68t
        0x43t
        0x68t
        0x79t
        0x7at
        0x62t
        0x7ft
        0x66t
        0x4ct
        0x6et
        0x79t
        0x64t
        0x7bt
        0x64t
        0x79t
        0x74t
        0x23t
        0x2dt
        0x40t
        0x6ct
        0x66t
        0x68t
        0x2dt
        0x7et
        0x78t
        0x7ft
        0x68t
        0x2dt
        0x79t
        0x65t
        0x6ct
        0x79t
        0x2dt
        0x64t
        0x79t
        0x2at
        0x7et
        0x2dt
        0x64t
        0x63t
        0x2dt
        0x74t
        0x62t
        0x78t
        0x7ft
        0x2dt
        0x4ct
        0x63t
        0x69t
        0x7ft
        0x62t
        0x64t
        0x69t
        0x40t
        0x6ct
        0x63t
        0x64t
        0x6bt
        0x68t
        0x7et
        0x79t
        0x23t
        0x75t
        0x60t
        0x61t
        0x2dt
        0x6bt
        0x64t
        0x61t
        0x68t
        0x23t
        0x49t
        0x4dt
        0x4et
        0x7at
        0x6bt
        0x66t
        0x6at
        0x61t
        0x6ct
        0x6at
        0x41t
        0x6at
        0x7bt
        0x78t
        0x60t
        0x7dt
        0x64t
        0x44t
        0x25t
        0x2at
        0x1bt
        0x25t
        0x27t
        0x30t
        0x2dt
        0x32t
        0x2dt
        0x30t
        0x3dt
        0x53t
        0x5bt
        0x5at
        0x57t
        0x5ft
        0x4at
        0x57t
        0x51t
        0x50t
        0x7at
        0x5ft
        0x4at
        0x5ft
        0xct
        0x10t
        0x1dt
        0x1ft
        0x19t
        0x11t
        0x19t
        0x12t
        0x8t
        0x35t
        0x18t
        0x34t
        0x36t
        0x21t
        0x20t
        0x21t
        0x22t
        0x2dt
        0x2at
        0x21t
        0x20t
        0xbt
        0x36t
        0x2dt
        0x21t
        0x2at
        0x30t
        0x25t
        0x30t
        0x2dt
        0x2bt
        0x2at
        0xft
        0x21t
        0x3dt
        0x6t
        0x11t
        0x5t
        0x1t
        0x11t
        0x7t
        0x0t
        0x20t
        0x1dt
        0x19t
        0x11t
        0x72t
        0x69t
        0x6et
        0x76t
        0x72t
        0x62t
        0x4et
        0x63t
        0x1et
        0x1t
        0xdt
        0x1ft
        0x3ct
        0x11t
        0x18t
        0xdt
        0x27t
        0x39t
        0x3et
        0x34t
        0x3ft
        0x27t
    .end array-data
.end method

.method private A06(Landroid/content/Intent;)V
    .locals 4

    .line 71722
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Ljava/lang/String;

    .line 71723
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71724
    invoke-virtual {v3, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/1d;->A0G(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V

    .line 71725
    return-void
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1q;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 7
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Lcom/facebook/ads/redexgen/X/1q;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71726
    .local p1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/1d;

    invoke-direct {v3, p1, p3, p0, p5}, Lcom/facebook/ads/redexgen/X/1d;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1q;Lcom/facebook/ads/redexgen/X/1c;Ljava/lang/String;)V

    .line 71727
    .local v0, "delegate":Lcom/facebook/ads/redexgen/X/1d;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A0q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71728
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 71729
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1q;->A03()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1d;->A0E()Ljava/lang/String;

    move-result-object v0

    .line 71730
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0i;

    move-result-object v6

    .line 71731
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71732
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const-string v1, "TkuXboGIr4gI6uBXxoSPLVsF8oObr4N9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v5, v6, v4}, Lcom/facebook/ads/redexgen/X/0j;->A06(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/Ia;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A44()V

    .line 71734
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Lcom/facebook/ads/redexgen/X/0x;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0x;->ABI(Lcom/facebook/ads/redexgen/X/a9;Lcom/facebook/ads/AdError;)V

    .line 71735
    return-void

    .line 71736
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    .line 71737
    invoke-virtual {v3, p1, p4}, Lcom/facebook/ads/redexgen/X/1d;->A0H(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/EnumSet;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 71738
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const-string v1, "78EqxHXjdVB4uq4fqkQnSqdXUgUnX7wU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Jj;)V
    .locals 4

    .line 71739
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A08:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 71741
    :cond_0
    :goto_0
    return-void

    .line 71742
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A09:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71744
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0B:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71746
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0A:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A08:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71748
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A0J()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0C:[Ljava/lang/String;

    const-string v1, "SZ1DhKHJxqFOmux8c4F7iNiG5ZFRRvjL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A04:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71751
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A0I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_0

    .line 71753
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A05:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A09()Lcom/facebook/ads/redexgen/X/Zs;
    .locals 1

    .line 71754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A0B()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1q;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V
    .locals 4
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/RewardData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Lcom/facebook/ads/redexgen/X/1q;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/RewardData;",
            ")V"
        }
    .end annotation

    .line 71755
    .local p2, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 71756
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Lcom/facebook/ads/redexgen/X/0x;

    .line 71757
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1q;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A08:Ljava/lang/String;

    .line 71758
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A08:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/16 v2, 0x6b

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Ljava/lang/String;

    .line 71759
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1q;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A00:J

    .line 71760
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Ljava/lang/String;

    .line 71761
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/RewardData;

    .line 71762
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/a9;->A07(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1q;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 71763
    return-void

    .line 71764
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 8

    .line 71765
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A09:Z

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 71766
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Lcom/facebook/ads/redexgen/X/0x;

    if-eqz v1, :cond_0

    .line 71767
    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0x;->ABI(Lcom/facebook/ads/redexgen/X/a9;Lcom/facebook/ads/AdError;)V

    .line 71768
    :cond_0
    return v7

    .line 71769
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A04(Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 71770
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/a9;->A00()I

    move-result v3

    .line 71771
    const/16 v2, 0x8f

    const/16 v1, 0x18

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71772
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A0A:Ljava/lang/String;

    const/16 v2, 0xb2

    const/16 v1, 0x8

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71773
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A08:Ljava/lang/String;

    const/16 v2, 0x84

    const/16 v1, 0xb

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71774
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A00:J

    const/16 v5, 0xa7

    const/16 v3, 0xb

    const/16 v0, 0x7c

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 71775
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/a9;->A01()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v3

    .line 71776
    .local v2, "viewType":Lcom/facebook/ads/redexgen/X/Jj;
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/a9;->A08(Lcom/facebook/ads/redexgen/X/Jj;)V

    .line 71777
    const/16 v2, 0xba

    const/16 v1, 0x8

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71778
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 71779
    const/16 v2, 0x77

    const/16 v1, 0xd

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71780
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/a9;->A06(Landroid/content/Intent;)V

    .line 71781
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->addFlags(I)Landroid/content/Intent;

    .line 71782
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 71783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KG;->A09(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 71784
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/KE; {:try_start_0 .. :try_end_0} :catch_0

    .line 71785
    :catch_0
    move-exception v5

    .line 71786
    .local v3, "anfe":Lcom/facebook/ads/redexgen/X/KE;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KE;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KE;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 71787
    .local v4, "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 71788
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 71789
    const/16 v2, 0x6c

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 71790
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71791
    return v7
.end method

.method public final A6B()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A0E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7L()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 71793
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final AA6(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 71794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Lcom/facebook/ads/redexgen/X/0x;

    if-eqz v0, :cond_0

    .line 71795
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/0x;->ABI(Lcom/facebook/ads/redexgen/X/a9;Lcom/facebook/ads/AdError;)V

    .line 71796
    :cond_0
    return-void
.end method

.method public final AA7()V
    .locals 1

    .line 71797
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/a9;->A04()V

    .line 71798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Lcom/facebook/ads/redexgen/X/0x;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/0x;->ABH(Lcom/facebook/ads/redexgen/X/a9;)V

    .line 71799
    return-void
.end method

.method public final AE1()V
    .locals 4

    .line 71800
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a9;->A0A:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Lcom/facebook/ads/redexgen/X/0x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0y;

    invoke-direct {v0, v3, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/0y;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/a9;Lcom/facebook/ads/redexgen/X/0x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A03:Lcom/facebook/ads/redexgen/X/0y;

    .line 71801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A03:Lcom/facebook/ads/redexgen/X/0y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0y;->A02()V

    .line 71802
    return-void
.end method

.method public final AFX()Z
    .locals 1

    .line 71803
    const/4 v0, 0x0

    return v0
.end method

.method public final AFg()V
    .locals 1

    .line 71804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A03:Lcom/facebook/ads/redexgen/X/0y;

    if-eqz v0, :cond_0

    .line 71805
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0y;->A03()V

    .line 71806
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 71807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/1d;

    if-eqz v0, :cond_0

    .line 71808
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A0F()V

    .line 71809
    :cond_0
    return-void
.end method
