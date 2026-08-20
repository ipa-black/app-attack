.class public final Lcom/facebook/ads/redexgen/X/F6;
.super Lcom/facebook/ads/redexgen/X/Zw;
.source ""


# static fields
.field public static A0D:Lcom/facebook/ads/redexgen/X/6M;

.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/14;

.field public A02:Lcom/facebook/ads/redexgen/X/15;

.field public A03:Lcom/facebook/ads/redexgen/X/1B;

.field public A04:Lcom/facebook/ads/redexgen/X/Xc;

.field public A05:Lcom/facebook/ads/redexgen/X/Jj;

.field public A06:Lcom/facebook/ads/redexgen/X/OM;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 32478
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YJVWhBFSVFKs7NrWmWULGh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0GvTyPfIpVaCupDTXIuhVv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vKmpQ0k2zgunQxdAFsx7Wlk6dmYtSCUc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dqRYVPDeGy45RCRFCWIUPRHRtp9NBigI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NSweCua6lZ8ChPFZ3cKnaOBscLcsrWLc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HenZyTRrHhMHTWT00jKprDJGPW9d4C4V"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lvvcgtkpn6JHhS0LrJ19j3FN0lJsZZOv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GmBDkEWrzwPugE8SLtTHysECIxUFQGpg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F6;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32479
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zw;-><init>()V

    .line 32480
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A0B:Ljava/lang/String;

    .line 32481
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/14;
    .locals 0

    .line 32482
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/14;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/1B;
    .locals 0

    .line 32483
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/F6;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 32484
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 32485
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F6;->A06:Lcom/facebook/ads/redexgen/X/OM;

    return-object p1
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/F6;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/F6;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 32486
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F6;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A06()V
    .locals 3

    .line 32487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2Z;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2Z;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A02:Lcom/facebook/ads/redexgen/X/15;

    .line 32488
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/15;->A00()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 32489
    return-void
.end method

.method private A07()V
    .locals 2

    .line 32490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A02:Lcom/facebook/ads/redexgen/X/15;

    if-eqz v0, :cond_0

    .line 32491
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2Z;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2Z;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A02:Lcom/facebook/ads/redexgen/X/15;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->A05(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32492
    :catch_0
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0xb6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/F6;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x34t
        0x36t
        0x36t
        0x30t
        0x39t
        0x30t
        0x27t
        0x3at
        0x38t
        0x30t
        0x21t
        0x30t
        0x27t
        0xat
        0x27t
        0x3at
        0x21t
        0x34t
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x6ct
        0x63t
        0x52t
        0x6ct
        0x6et
        0x79t
        0x64t
        0x7bt
        0x64t
        0x79t
        0x74t
        0x9t
        0x2t
        0xbt
        0x3t
        0x4t
        0xft
        0xet
        0x2bt
        0xet
        0x2et
        0xbt
        0x1et
        0xbt
        0x28t
        0x1ft
        0x4t
        0xet
        0x6t
        0xft
        0x44t
        0x4ct
        0x4dt
        0x40t
        0x48t
        0x5dt
        0x40t
        0x46t
        0x47t
        0x6dt
        0x48t
        0x5dt
        0x48t
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
        0x57t
        0x55t
        0x42t
        0x43t
        0x42t
        0x41t
        0x4et
        0x49t
        0x42t
        0x43t
        0x68t
        0x55t
        0x4et
        0x42t
        0x49t
        0x53t
        0x46t
        0x53t
        0x4et
        0x48t
        0x49t
        0x6ct
        0x42t
        0x5et
        0x4t
        0x13t
        0x7t
        0x3t
        0x13t
        0x5t
        0x2t
        0x22t
        0x1ft
        0x1bt
        0x13t
        0x68t
        0x7ft
        0x6dt
        0x7bt
        0x68t
        0x7et
        0x49t
        0x7ft
        0x68t
        0x6ct
        0x7ft
        0x68t
        0x4ft
        0x48t
        0x56t
        0x19t
        0xet
        0x1ct
        0xat
        0x19t
        0xft
        0xet
        0xft
        0x3dt
        0x2t
        0xft
        0xet
        0x4t
        0x2at
        0xft
        0x2ft
        0xat
        0x1ft
        0xat
        0x29t
        0x1et
        0x5t
        0xft
        0x7t
        0xet
        0x57t
        0x40t
        0x52t
        0x44t
        0x57t
        0x41t
        0x40t
        0x41t
        0x7at
        0x53t
        0x4ct
        0x41t
        0x40t
        0x4at
        0x7ct
        0x67t
        0x60t
        0x78t
        0x7ct
        0x6ct
        0x40t
        0x6dt
        0x53t
        0x4ct
        0x40t
        0x52t
        0x71t
        0x5ct
        0x55t
        0x40t
    .end array-data
.end method

.method private A09(Landroid/content/Intent;)V
    .locals 8

    .line 32493
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Zw;->A00:I

    const/16 v2, 0x4d

    const/16 v1, 0x18

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    if-eq v4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32494
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v5, 0x0

    .line 32495
    const/4 v7, 0x1

    const/16 v4, 0x16

    sget-object v1, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "ryaiaZaF8EzuUPZd67FeoIG9jUALGHZG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "XITZtpYy2wf6QHmOozCOnY6Xlkm3ca51"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x2b

    invoke-static {v7, v4, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    .line 32496
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Zw;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "mo2n49jFbf8CHvb7nubztA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "3h0LYrxRFByrgEG7Z48zJG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 32497
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32498
    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32499
    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zq;I)V
    .locals 0

    .line 32500
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/F6;->A0B(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zq;I)V

    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zq;I)V
    .locals 12

    .line 32501
    move-object v10, p2

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Zq;->A0c()I

    move-result v0

    move v11, p3

    if-lt v11, v0, :cond_0

    .line 32502
    return-void

    .line 32503
    :cond_0
    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/Zq;->A0e(I)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v9

    .line 32504
    .local v0, "currentAdDataBundle":Lcom/facebook/ads/redexgen/X/Eu;
    new-instance v0, Lcom/facebook/ads/redexgen/X/6M;

    move-object v8, p1

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/F6;->A0D:Lcom/facebook/ads/redexgen/X/6M;

    .line 32505
    sget-object v3, Lcom/facebook/ads/redexgen/X/F6;->A0D:Lcom/facebook/ads/redexgen/X/6M;

    .line 32506
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 32507
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0d(Lcom/facebook/ads/redexgen/X/Ii;)V

    .line 32508
    sget-object v0, Lcom/facebook/ads/redexgen/X/F6;->A0D:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v8, v0, v9}, Lcom/facebook/ads/redexgen/X/1o;->A02(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Eu;)V

    .line 32509
    if-nez v11, :cond_1

    const/4 v7, 0x1

    .line 32510
    .local v3, "failOnCacheFailure":Z
    :goto_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/F6;->A0D:Lcom/facebook/ads/redexgen/X/6M;

    new-instance v5, Lcom/facebook/ads/redexgen/X/F7;

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/F7;-><init>(Lcom/facebook/ads/redexgen/X/F6;ZLcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Eu;Lcom/facebook/ads/redexgen/X/Zq;I)V

    .line 32511
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32512
    invoke-virtual {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0W(Lcom/facebook/ads/redexgen/X/6E;Lcom/facebook/ads/redexgen/X/6F;)V

    .line 32513
    return-void

    .line 32514
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private A0C(Z)V
    .locals 4

    .line 32515
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0C:Lcom/facebook/ads/redexgen/X/Jj;

    if-ne v1, v0, :cond_0

    .line 32516
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/F6;->A0E(Z)V

    .line 32517
    :goto_0
    return-void

    .line 32518
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "1yOiFacRiwJanRzqDJ6A5hJ77lYfziAe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "McEelBumOV7dKb1zb6BdvUT5HG6VvrgI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0E:Lcom/facebook/ads/redexgen/X/Jj;

    if-ne v3, v0, :cond_2

    .line 32519
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/F6;->A0F(Z)V

    goto :goto_0

    .line 32520
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0D:Lcom/facebook/ads/redexgen/X/Jj;

    if-ne v1, v0, :cond_3

    .line 32521
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/F6;->A0D(Z)V

    goto :goto_0

    .line 32522
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/F6;->A0F(Z)V

    goto :goto_0
.end method

.method private A0D(Z)V
    .locals 10

    .line 32523
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/Zw;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v4, Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    .line 32524
    .local v1, "cacheManager":Lcom/facebook/ads/redexgen/X/6M;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32525
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32526
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0N()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5m;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 32527
    .local v2, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 32528
    new-instance v3, Lcom/facebook/ads/redexgen/X/5m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32529
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0N()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32530
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0K()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32531
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/a2;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/a2;-><init>(Lcom/facebook/ads/redexgen/X/F6;)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/5m;-><init>(Lcom/facebook/ads/redexgen/X/6M;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5l;)V

    .line 32532
    .local v3, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5m;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zs;

    .line 32533
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32534
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 32535
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0d(Lcom/facebook/ads/redexgen/X/Ii;)V

    .line 32536
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5m;->A0B()V

    .line 32537
    .end local v3    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5m;
    :goto_1
    return-void

    .line 32538
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v1, Lcom/facebook/ads/redexgen/X/Zs;

    new-instance v0, Lcom/facebook/ads/redexgen/X/a1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a1;-><init>(Lcom/facebook/ads/redexgen/X/F6;)V

    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/1n;->A02(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;ZLcom/facebook/ads/redexgen/X/1l;)V

    goto :goto_1

    .line 32539
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private A0E(Z)V
    .locals 6

    .line 32540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v5, Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    .line 32541
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/6M;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zs;

    .line 32542
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 32543
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0d(Lcom/facebook/ads/redexgen/X/Ii;)V

    .line 32544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eu;

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/1o;->A03(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Eu;)V

    .line 32545
    new-instance v4, Lcom/facebook/ads/redexgen/X/a6;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/a6;-><init>(Lcom/facebook/ads/redexgen/X/F6;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32546
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32547
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0W(Lcom/facebook/ads/redexgen/X/6E;Lcom/facebook/ads/redexgen/X/6F;)V

    .line 32548
    return-void
.end method

.method private A0F(Z)V
    .locals 13

    .line 32549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0Z()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 32550
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v3, Lcom/facebook/ads/redexgen/X/Zq;

    .line 32551
    .local v0, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/Zq;
    move-object v2, p0

    .line 32552
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/Zw;
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zq;->A0c()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 32553
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Zq;->A0e(I)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v0

    .line 32554
    .local v4, "adDataBundle":Lcom/facebook/ads/redexgen/X/Eu;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32555
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/14;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/14;->ACT(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/AdError;)V

    .line 32556
    return-void

    .line 32557
    .end local v4    # "adDataBundle":Lcom/facebook/ads/redexgen/X/Eu;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32558
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v4, Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/7N;)V

    .line 32559
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/6M;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zs;

    .line 32560
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32561
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 32562
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0d(Lcom/facebook/ads/redexgen/X/Ii;)V

    .line 32563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32564
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32565
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0N()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5m;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    .line 32566
    .local v1, "isUnifiedAssetsLoaderEnabled":Z
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0a()Z

    move-result v10

    .line 32567
    .local v2, "isDSL":Z
    if-eqz v8, :cond_3

    .line 32568
    new-instance v3, Lcom/facebook/ads/redexgen/X/5m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32569
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0N()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32570
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0K()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32571
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/a4;

    invoke-direct {v9, p0, v10}, Lcom/facebook/ads/redexgen/X/a4;-><init>(Lcom/facebook/ads/redexgen/X/F6;Z)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/5m;-><init>(Lcom/facebook/ads/redexgen/X/6M;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5l;)V

    .line 32572
    .local v3, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5m;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5m;->A0B()V

    .line 32573
    .end local v3    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/5m;
    goto :goto_1

    .line 32574
    :cond_3
    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v11, Lcom/facebook/ads/redexgen/X/Eu;

    .line 32575
    .local v9, "adDataBundle":Lcom/facebook/ads/redexgen/X/Eu;
    move-object v12, p0

    .line 32576
    .local v10, "adapter":Lcom/facebook/ads/redexgen/X/Zw;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32577
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/14;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v12, v0}, Lcom/facebook/ads/redexgen/X/14;->ACT(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/AdError;)V

    .line 32578
    return-void

    .line 32579
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0, v4, v11}, Lcom/facebook/ads/redexgen/X/1o;->A02(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Eu;)V

    .line 32580
    new-instance v7, Lcom/facebook/ads/redexgen/X/F8;

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/F8;-><init>(Lcom/facebook/ads/redexgen/X/F6;ZZLcom/facebook/ads/redexgen/X/Eu;Lcom/facebook/ads/redexgen/X/Zw;)V

    .line 32581
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32582
    invoke-virtual {v4, v7, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0W(Lcom/facebook/ads/redexgen/X/6E;Lcom/facebook/ads/redexgen/X/6F;)V

    goto :goto_1

    .line 32583
    .end local v3
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {p0, v0, v3, v8}, Lcom/facebook/ads/redexgen/X/F6;->A0B(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zq;I)V

    .line 32584
    .end local v0    # "cacheManager":Lcom/facebook/ads/redexgen/X/6M;
    .end local v2    # "isDSL":Z
    .end local v0
    .end local v1    # "isUnifiedAssetsLoaderEnabled":Z
    .end local v2
    .end local v9    # "adDataBundle":Lcom/facebook/ads/redexgen/X/Eu;
    .end local v10    # "adapter":Lcom/facebook/ads/redexgen/X/Zw;
    :goto_1
    return-void
.end method


# virtual methods
.method public final A0G()I
    .locals 4

    .line 32585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    if-nez v0, :cond_1

    .line 32586
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "zy8kAWNFspHhc9OUOOhBHMIK4AaCMilm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32587
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0D()I

    move-result v0

    return v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/1B;
    .locals 1

    .line 32588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    return-object v0
.end method

.method public final A0I()Z
    .locals 6

    .line 32589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32590
    const/4 v0, 0x0

    return v0

    .line 32591
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/1B;->A0P(J)V

    .line 32592
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zw;->A02:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A0B:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A07:Ljava/lang/String;

    .line 32593
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32594
    .local v0, "rewardUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zw;->A02:Lcom/facebook/ads/RewardData;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A0Q(Lcom/facebook/ads/RewardData;)V

    .line 32595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/1B;->A0T(Ljava/lang/String;)V

    .line 32596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A04(Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 32597
    .local v1, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    const/16 v2, 0xae

    const/16 v1, 0x8

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32598
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    const/16 v2, 0x7f

    const/16 v1, 0x19

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32599
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    const/16 v2, 0x22

    const/16 v1, 0x13

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32600
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F6;->A0B:Ljava/lang/String;

    const/16 v2, 0xa6

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32601
    if-eqz v5, :cond_1

    .line 32602
    const/16 v2, 0x70

    const/16 v1, 0xf

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32603
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F6;->A0A:Ljava/lang/String;

    const/16 v2, 0x42

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32604
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/F6;->A00:J

    const/16 v5, 0x65

    const/16 v1, 0xb

    const/16 v0, 0x8

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32605
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F6;->A09:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 32606
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32607
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/F6;->A09(Landroid/content/Intent;)V

    .line 32608
    invoke-virtual {v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->getFlags()I

    move-result v1

    const/high16 v0, 0x10000000

    or-int/2addr v1, v0

    invoke-virtual {v4, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->setFlags(I)Landroid/content/Intent;

    .line 32609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 32610
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KG;->A09(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/KE; {:try_start_0 .. :try_end_0} :catch_0

    .line 32611
    :catch_0
    move-exception v1

    .line 32612
    .local v2, "e":Lcom/facebook/ads/redexgen/X/KE;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/KE;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/KE;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 32613
    .local v3, "exceptionToLog":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32614
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A01:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 32615
    const/16 v2, 0x17

    const/16 v1, 0xb

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 32616
    .end local v2    # "e":Lcom/facebook/ads/redexgen/X/KE;
    .end local v3    # "exceptionToLog":Ljava/lang/Throwable;
    :goto_0
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32617
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "L0ou65zbaEHIK9W1EiRqjH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "MlzKsAmmQguOmiSj0COpPP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/14;Lcom/facebook/ads/redexgen/X/1q;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32619
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32620
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/14;

    .line 32621
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1q;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A0A:Ljava/lang/String;

    .line 32622
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1q;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A00:J

    .line 32623
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/F6;->A09:Ljava/lang/String;

    .line 32624
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F6;->A0A:Ljava/lang/String;

    if-eqz v4, :cond_a

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A07:Ljava/lang/String;

    .line 32625
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1q;->A03()Lorg/json/JSONObject;

    move-result-object v1

    .line 32626
    .local v0, "dataObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/1B;->A0R(Ljava/lang/String;)V

    .line 32628
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    .line 32629
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1q;->A01()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8B;->A06()I

    move-result v0

    .line 32630
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A0O(I)V

    .line 32631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zq;

    .line 32633
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Zq;->A0e(I)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A08:Ljava/lang/String;

    .line 32634
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0a()Z

    move-result v4

    const/4 v2, 0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v3, v0

    const/4 v0, 0x6

    aget-object v3, v3, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_e

    sget-object v3, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "T6UzDEu82kzY1KsvV3iHB7OkWnIxnMBs"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const-string v1, "PWXGgNcAlDXPEXP1mMx0dPQCA8p68UI5"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-eqz v4, :cond_2

    .line 32635
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A06:Lcom/facebook/ads/redexgen/X/Jj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    .line 32636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A04:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 32638
    .end local v1
    :goto_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A0q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32640
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v4, Lcom/facebook/ads/redexgen/X/Zq;

    .line 32641
    .local v1, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/Zq;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Zq;->A0c()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_b

    .line 32642
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Zq;->A0e(I)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v0

    .line 32643
    .local v2, "adDataBundle":Lcom/facebook/ads/redexgen/X/Zs;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32644
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0N()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    .line 32645
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0i;

    move-result-object v1

    .line 32646
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    .line 32647
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A06(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/Ia;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A44()V

    .line 32649
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Zq;->A0g(I)V

    .line 32650
    return-void

    .line 32651
    .end local v2    # "adDataBundle":Lcom/facebook/ads/redexgen/X/Zs;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 32652
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_2

    .line 32653
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0C()I

    move-result v1

    .line 32654
    .local v1, "experienceType":I
    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_7

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    goto :goto_2

    .line 32655
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0C:Lcom/facebook/ads/redexgen/X/Jj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    .line 32656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    sget-object v3, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "i1vVIMuEE2CogviWDEosGc55NgD83ibP"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 32657
    goto/16 :goto_2

    :cond_4
    sget-object v3, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "e7mQJdX4ST7JevLzoIctPRomcGPYY6Su"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_2

    .line 32658
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A03:Lcom/facebook/ads/redexgen/X/Jj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    .line 32659
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v3, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v3, v0

    const/4 v0, 0x6

    aget-object v3, v3, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v3, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "FFkeuuVk1meHqgTyMiNT7tgr8739x7mc"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const-string v1, "JwuXN3bqyC9CcnquHiHDyzq7R0rb3kLZ"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_2

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/F6;->A0F:[Ljava/lang/String;

    const-string v1, "QuYSy7nqZhyT9avsyztjWhd8F7hW1wjU"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const-string v1, "5b6UXiMlNaCol2aZqv4zpvCfEMtgCuxD"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_2

    .line 32660
    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0D:Lcom/facebook/ads/redexgen/X/Jj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    .line 32661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A08:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 32662
    goto/16 :goto_2

    .line 32663
    :cond_8
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0E:Lcom/facebook/ads/redexgen/X/Jj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A05:Lcom/facebook/ads/redexgen/X/Jj;

    .line 32664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AFA(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 32665
    goto/16 :goto_2

    .line 32666
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A08:Ljava/lang/String;

    goto/16 :goto_1

    .line 32667
    :cond_a
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F6;->A04(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 32668
    .end local v3    # "i":I
    :cond_b
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Zq;->A0c()I

    move-result v0

    if-nez v0, :cond_d

    .line 32669
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/14;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/14;->ACT(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/AdError;)V

    .line 32670
    return-void

    .line 32671
    :cond_c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32672
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1q;->A03()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A03:Lcom/facebook/ads/redexgen/X/1B;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zs;

    .line 32673
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    .line 32674
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0i;

    move-result-object v1

    .line 32675
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    .line 32676
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0j;->A06(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/0i;Lcom/facebook/ads/redexgen/X/Ia;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A44()V

    .line 32678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A01:Lcom/facebook/ads/redexgen/X/14;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/14;->ACT(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/AdError;)V

    .line 32679
    return-void

    .line 32680
    :cond_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F6;->A0B:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/15;

    invoke-direct {v0, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/15;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/redexgen/X/14;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A02:Lcom/facebook/ads/redexgen/X/15;

    .line 32681
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/F6;->A06()V

    .line 32682
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/F6;->A0C(Z)V

    .line 32683
    return-void

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A6B()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 32684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F6;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final AFX()Z
    .locals 1

    .line 32685
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 32686
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/F6;->A07()V

    .line 32687
    return-void
.end method
