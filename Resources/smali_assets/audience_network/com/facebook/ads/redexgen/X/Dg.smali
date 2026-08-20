.class public final Lcom/facebook/ads/redexgen/X/Dg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9J;
    }
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/9F;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/9Z;

.field public A07:Lcom/facebook/ads/redexgen/X/9a;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/os/Handler;

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Df;

.field public final A0F:Lcom/facebook/ads/redexgen/X/9s;

.field public final A0G:Lcom/facebook/ads/redexgen/X/9t;

.field public final A0H:Lcom/facebook/ads/redexgen/X/GM;

.field public final A0I:Lcom/facebook/ads/redexgen/X/GN;

.field public final A0J:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/9J;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/9d;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:[Lcom/facebook/ads/redexgen/X/Wu;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 28620
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "m3Tqgcaf5Zwh2KVI4lshI8Y9OWjAyKiW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "grdEJ2UvF2rVdGgR2IFX1R9SZI3Oow9U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "adSXB2DteQqbyu8FZt3lmhGSn0N0giaq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NRdDTd6ed3Jg0yXdfuAl28VADrUF9IBW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O75rLRuL5gqpexSF7Nk4cqg8fxEEp65Y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "atjqzip57QIi0KmRPtssGorCsXfOnHh4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4ftStqMBHRnBf64I9Tdbb6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "F7xqVaNkoKYb3tQw5W1HE7EtQtFRVx9Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dg;->A03()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/HG;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 28621
    move-object/from16 v1, p0

    move-object v2, v1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x21

    const/4 v3, 0x5

    const/16 v0, 0x34

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28623
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/16 v0, 0x53

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    const/16 v3, 0x12

    const/16 v0, 0x29

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    const/4 v3, 0x3

    const/16 v0, 0x38

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hs;->A04:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    const/4 v3, 0x1

    const/16 v0, 0x3c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28624
    const/4 v4, 0x2

    const/16 v3, 0xd

    const/16 v0, 0x58

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28625
    move-object/from16 v6, p1

    array-length v0, v6

    const/4 v3, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 28626
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Wu;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0L:[Lcom/facebook/ads/redexgen/X/Wu;

    .line 28627
    move-object/from16 v7, p2

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GM;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0H:Lcom/facebook/ads/redexgen/X/GM;

    .line 28628
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0A:Z

    .line 28629
    iput v3, v2, Lcom/facebook/ads/redexgen/X/Dg;->A03:I

    .line 28630
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0B:Z

    .line 28631
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28632
    array-length v0, v6

    new-array v5, v0, [Lcom/facebook/ads/redexgen/X/9o;

    array-length v0, v6

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/GJ;

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/GN;-><init>([Lcom/facebook/ads/redexgen/X/9o;[Lcom/facebook/ads/redexgen/X/GJ;Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0I:Lcom/facebook/ads/redexgen/X/GN;

    .line 28633
    new-instance v0, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9t;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0G:Lcom/facebook/ads/redexgen/X/9t;

    .line 28634
    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9s;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    .line 28635
    sget-object v0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A07:Lcom/facebook/ads/redexgen/X/9a;

    .line 28636
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 28637
    .local v13, "eventLooper":Landroid/os/Looper;
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/9I;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9I;-><init>(Lcom/facebook/ads/redexgen/X/Dg;Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0C:Landroid/os/Handler;

    .line 28638
    new-instance v8, Lcom/facebook/ads/redexgen/X/9Z;

    sget-object v9, Lcom/facebook/ads/redexgen/X/9u;->A01:Lcom/facebook/ads/redexgen/X/9u;

    const-wide/16 v10, 0x0

    sget-object v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0I:Lcom/facebook/ads/redexgen/X/GN;

    move-object v13, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;JLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28639
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0J:Ljava/util/ArrayDeque;

    .line 28640
    new-instance v5, Lcom/facebook/ads/redexgen/X/Df;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0I:Lcom/facebook/ads/redexgen/X/GN;

    iget-boolean v10, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0A:Z

    iget v11, v2, Lcom/facebook/ads/redexgen/X/Dg;->A03:I

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0B:Z

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0C:Landroid/os/Handler;

    move-object v14, v1

    move-object/from16 v9, p3

    move-object/from16 v15, p4

    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/Df;-><init>([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/GN;Lcom/facebook/ads/redexgen/X/9U;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/HG;)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0E:Lcom/facebook/ads/redexgen/X/Df;

    .line 28641
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0E:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Df;->A0w()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0D:Landroid/os/Handler;

    .line 28642
    return-void

    .line 28643
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_1

    .line 28644
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private A00(J)J
    .locals 5

    .line 28645
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/99;->A01(J)J

    move-result-wide v3

    .line 28646
    .local v0, "positionMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 28648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9s;->A08()J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 28649
    :cond_0
    return-wide v3
.end method

.method private A01(ZZI)Lcom/facebook/ads/redexgen/X/9Z;
    .locals 16

    .line 28650
    move-object/from16 v2, p0

    if-eqz p1, :cond_4

    .line 28651
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A01:I

    .line 28652
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A00:I

    .line 28653
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A04:J

    .line 28654
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/9Z;

    .line 28655
    if-eqz p2, :cond_3

    sget-object v5, Lcom/facebook/ads/redexgen/X/9u;->A01:Lcom/facebook/ads/redexgen/X/9u;

    :goto_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_5

    .line 28656
    sget-object v3, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "HCeOoliCNtIhqJVVEoV7ODJTUFyfMCgc"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "jOBrxCepwz9IOjYxDZZOtd2HpuVunHZu"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    if-eqz p2, :cond_2

    const/4 v6, 0x0

    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    const/4 v13, 0x0

    .line 28657
    if-eqz p2, :cond_1

    sget-object v14, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    .line 28658
    :goto_3
    if-eqz p2, :cond_0

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0I:Lcom/facebook/ads/redexgen/X/GN;

    :goto_4
    move/from16 v12, p3

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 28659
    return-object v4

    .line 28660
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/GN;

    goto :goto_4

    .line 28661
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    goto :goto_3

    .line 28662
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Ljava/lang/Object;

    goto :goto_2

    .line 28663
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    goto :goto_1

    .line 28664
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dg;->A6O()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A01:I

    .line 28665
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dg;->A07()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A00:I

    .line 28666
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dg;->A6L()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A04:J

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "Q2Fud838jOFv6puDYoQ5JAWfmkdvAH2h"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Px66e0ytNEnQno4fNGUkfPLcZSToOlLf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dg;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        -0x4ct
        -0x5dt
        -0x2at
        -0x33t
        -0x52t
        -0x36t
        -0x41t
        -0x29t
        -0x3dt
        -0x30t
        -0x59t
        -0x35t
        -0x32t
        -0x36t
        0x74t
        -0x59t
        -0x62t
        0x7ft
        -0x65t
        -0x70t
        -0x58t
        -0x6ct
        -0x5ft
        0x7bt
        -0x68t
        -0x6ft
        0x5et
        0x61t
        0x5dt
        0x67t
        0x5dt
        0x63t
        -0x7dt
        -0x58t
        -0x5dt
        -0x52t
        0x5at
        -0x6bt
        -0x58t
        -0x51t
        -0x58t
        -0x5ct
        -0x4at
        -0x58t
        0x63t
        -0x61t
        -0x65t
        0x5et
        -0x67t
        -0xet
        -0x1ct
        -0x1ct
        -0x16t
        -0x2dt
        -0x12t
        -0x61t
        -0x18t
        -0x1at
        -0x13t
        -0x12t
        -0xft
        -0x1ct
        -0x1dt
        -0x61t
        -0x1ft
        -0x1ct
        -0x1et
        -0x20t
        -0xct
        -0xet
        -0x1ct
        -0x61t
        -0x20t
        -0x13t
        -0x61t
        -0x20t
        -0x1dt
        -0x61t
        -0x18t
        -0xet
        -0x61t
        -0x11t
        -0x15t
        -0x20t
        -0x8t
        -0x18t
        -0x13t
        -0x1at
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/9Z;IZI)V
    .locals 13

    .line 28667
    move-object v2, p0

    move-object v7, p1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    sub-int/2addr v0, p2

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    .line 28668
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    if-nez v0, :cond_3

    .line 28669
    iget-wide v5, v7, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 28670
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    const-wide/16 v9, 0x0

    iget-wide v11, v7, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    .line 28671
    move-object v7, v7

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v7

    .line 28672
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A08:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    .line 28673
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28674
    iput v3, v2, Lcom/facebook/ads/redexgen/X/Dg;->A00:I

    .line 28675
    iput v3, v2, Lcom/facebook/ads/redexgen/X/Dg;->A01:I

    .line 28676
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A04:J

    .line 28677
    :cond_2
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A08:Z

    if-eqz v0, :cond_4

    .line 28678
    const/4 v10, 0x0

    .line 28679
    .local v4, "timelineChangeReason":I
    :goto_0
    iget-boolean v11, v2, Lcom/facebook/ads/redexgen/X/Dg;->A09:Z

    .line 28680
    .local v7, "seekProcessed":Z
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Dg;->A08:Z

    .line 28681
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Dg;->A09:Z

    .line 28682
    const/4 v12, 0x0

    move-object v6, v2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Dg;->A05(Lcom/facebook/ads/redexgen/X/9Z;ZIIZZ)V

    .line 28683
    .end local v4    # "timelineChangeReason":I
    .end local v7    # "seekProcessed":Z
    :cond_3
    return-void

    .line 28684
    :cond_4
    const/4 v10, 0x2

    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/9Z;ZIIZZ)V
    .locals 14

    .line 28685
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 28686
    .local v1, "isRunningRecursiveListenerNotification":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0J:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/facebook/ads/redexgen/X/9J;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0H:Lcom/facebook/ads/redexgen/X/GM;

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0A:Z

    move-object v4, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Lcom/facebook/ads/redexgen/X/9Z;Lcom/facebook/ads/redexgen/X/9Z;Ljava/util/Set;Lcom/facebook/ads/redexgen/X/GM;ZIIZZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 28687
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28688
    if-eqz v1, :cond_0

    .line 28689
    return-void

    .line 28690
    :cond_0
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28691
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9J;->A00()V

    .line 28692
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dg;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 28693
    :cond_1
    return-void
.end method

.method private A06()Z
    .locals 1

    .line 28694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A07()I
    .locals 1

    .line 28695
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28696
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:I

    return v0

    .line 28697
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    return v0
.end method

.method public final A08(I)V
    .locals 2

    .line 28698
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Dg;->A09(IJ)V

    .line 28699
    return-void
.end method

.method public final A09(IJ)V
    .locals 12

    .line 28700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    .line 28701
    .local v0, "timeline":Lcom/facebook/ads/redexgen/X/9u;
    move v9, p1

    if-ltz v9, :cond_9

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9u;->A01()I

    move-result v0

    if-ge v9, v0, :cond_9

    .line 28702
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Dg;->A09:Z

    .line 28703
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    .line 28704
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A0B()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "5JrPhprFhX8le0yHjhtYDABd6qn7MJv2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "AcgEDj7anvk4CRi6YuD76A9KphiljDlH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v4, 0x0

    if-eqz v5, :cond_3

    .line 28705
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x32

    const/16 v1, 0x27

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28706
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0C:Landroid/os/Handler;

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28707
    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28708
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28709
    return-void

    .line 28710
    :cond_3
    iput v9, p0, Lcom/facebook/ads/redexgen/X/Dg;->A01:I

    .line 28711
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_5

    .line 28712
    cmp-long v0, p2, v1

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A04:J

    .line 28713
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:I

    .line 28714
    .end local v1
    .end local v5
    :goto_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0E:Lcom/facebook/ads/redexgen/X/Df;

    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/99;->A00(J)J

    move-result-wide v0

    invoke-virtual {v2, v6, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0y(Lcom/facebook/ads/redexgen/X/9u;IJ)V

    .line 28715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9d;

    .line 28716
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9d;
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/9d;->AC7(I)V

    .line 28717
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9d;
    goto :goto_2

    .line 28718
    :cond_4
    move-wide v0, p2

    goto :goto_0

    .line 28719
    :cond_5
    cmp-long v0, p2, v1

    if-nez v0, :cond_6

    .line 28720
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0G:Lcom/facebook/ads/redexgen/X/9t;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "nEFnc7B5wfhj7ivnhhzsBLpbkebEETny"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v9, v4}, Lcom/facebook/ads/redexgen/X/9u;->A0B(ILcom/facebook/ads/redexgen/X/9t;)Lcom/facebook/ads/redexgen/X/9t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9t;->A01()J

    move-result-wide v10

    .line 28721
    .local v5, "windowPositionUs":J
    :goto_3
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0G:Lcom/facebook/ads/redexgen/X/9t;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    .line 28722
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9u;->A07(Lcom/facebook/ads/redexgen/X/9t;Lcom/facebook/ads/redexgen/X/9s;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 28723
    .local v1, "periodIndexAndPositon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/99;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A04:J

    .line 28724
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:I

    goto :goto_1

    .line 28725
    :cond_6
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/99;->A00(J)J

    move-result-wide v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "wxFThwrlUUeaJzWEA8zt6g3O6WvT4NEY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Cn8KVFPYAIX7JaaKfRlHGvTkFrF10J5Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto :goto_3

    .line 28726
    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28727
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/9T;

    invoke-direct {v0, v6, v9, p2, p3}, Lcom/facebook/ads/redexgen/X/9T;-><init>(Lcom/facebook/ads/redexgen/X/9u;IJ)V

    throw v0
.end method

.method public final A0A(Landroid/os/Message;)V
    .locals 6

    .line 28728
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v4, :cond_2

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "4yvjfA5Kw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_1

    .line 28729
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "M6bFWga7XOh4Nv4psw4qaL9KmcGoAikz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "g5TiVjLanBSgFn2xszzFJfFzrFRrWctq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/9F;

    .line 28730
    .local v0, "playbackError":Lcom/facebook/ads/redexgen/X/9F;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/9F;

    .line 28731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9d;

    .line 28732
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/9d;
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/9d;->AC3(Lcom/facebook/ads/redexgen/X/9F;)V

    .line 28733
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9d;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28734
    .end local v0    # "playbackError":Lcom/facebook/ads/redexgen/X/9F;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 28735
    :cond_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/redexgen/X/9a;

    .line 28736
    .local v0, "playbackParameters":Lcom/facebook/ads/redexgen/X/9a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A07:Lcom/facebook/ads/redexgen/X/9a;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 28737
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/Dg;->A07:Lcom/facebook/ads/redexgen/X/9a;

    .line 28738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "dJbHrg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/9d;

    .line 28739
    .restart local v2    # "listener":Lcom/facebook/ads/redexgen/X/9d;
    invoke-interface {v3, v5}, Lcom/facebook/ads/redexgen/X/9d;->AC1(Lcom/facebook/ads/redexgen/X/9a;)V

    .line 28740
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/9d;
    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28741
    .end local v0    # "playbackParameters":Lcom/facebook/ads/redexgen/X/9a;
    :cond_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/9Z;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    :goto_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v2, v4, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A04(Lcom/facebook/ads/redexgen/X/9Z;IZI)V

    .line 28742
    :cond_5
    return-void

    .line 28743
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public final A0B()Z
    .locals 1

    .line 28744
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A06()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A3F(Lcom/facebook/ads/redexgen/X/9d;)V
    .locals 1

    .line 28745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 28746
    return-void
.end method

.method public final A4O(Lcom/facebook/ads/redexgen/X/9k;)Lcom/facebook/ads/redexgen/X/9l;
    .locals 7

    .line 28747
    new-instance v1, Lcom/facebook/ads/redexgen/X/9l;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0E:Lcom/facebook/ads/redexgen/X/Df;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    .line 28748
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A6O()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0D:Landroid/os/Handler;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Lcom/facebook/ads/redexgen/X/9j;Lcom/facebook/ads/redexgen/X/9k;Lcom/facebook/ads/redexgen/X/9u;ILandroid/os/Handler;)V

    .line 28749
    return-object v1
.end method

.method public final A5u()I
    .locals 9

    .line 28750
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A5v()J

    move-result-wide v7

    .line 28751
    .local v0, "position":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A6X()J

    move-result-wide v5

    .line 28752
    .local v2, "duration":J
    const/16 v4, 0x64

    const/4 v3, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v1

    if-eqz v0, :cond_0

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    .line 28753
    :cond_0
    const/4 v4, 0x0

    .line 28754
    :goto_0
    return v4

    .line 28755
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v7

    div-long/2addr v1, v5

    long-to-int v0, v1

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v4

    goto :goto_0
.end method

.method public final A5v()J
    .locals 2

    .line 28756
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28757
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A04:J

    return-wide v0

    .line 28758
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A09:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Dg;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6G()J
    .locals 4

    .line 28759
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A0B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 28761
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "eLr0wKhVkEyrTiyBT4e5CdZ3SmFaaZ0Y"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9s;->A08()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/99;->A01(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28762
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A6L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6I()I
    .locals 1

    .line 28763
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final A6J()I
    .locals 1

    .line 28764
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final A6L()J
    .locals 2

    .line 28765
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28766
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A04:J

    return-wide v0

    .line 28767
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Dg;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6N()Lcom/facebook/ads/redexgen/X/9u;
    .locals 1

    .line 28768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    return-object v0
.end method

.method public final A6O()I
    .locals 4

    .line 28769
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28770
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Dg;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A0N:[Ljava/lang/String;

    const-string v1, "IPV6VHeKuNfhgMSHvhaXB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28771
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    return v0
.end method

.method public final A6X()J
    .locals 4

    .line 28772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    .line 28773
    .local v0, "timeline":Lcom/facebook/ads/redexgen/X/9u;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28774
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 28775
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A0B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 28777
    .local v1, "periodId":Lcom/facebook/ads/redexgen/X/ER;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 28778
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0F:Lcom/facebook/ads/redexgen/X/9s;

    iget v1, v3, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9s;->A0A(II)J

    move-result-wide v0

    .line 28779
    .local v2, "adDurationUs":J
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/99;->A01(J)J

    move-result-wide v0

    return-wide v0

    .line 28780
    .end local v1    # "periodId":Lcom/facebook/ads/redexgen/X/ER;
    .end local v2    # "adDurationUs":J
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A6O()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0G:Lcom/facebook/ads/redexgen/X/9t;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A0B(ILcom/facebook/ads/redexgen/X/9t;)Lcom/facebook/ads/redexgen/X/9t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9t;->A02()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7N()Z
    .locals 1

    .line 28781
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0A:Z

    return v0
.end method

.method public final ADZ(Lcom/facebook/ads/redexgen/X/ET;ZZ)V
    .locals 8

    .line 28782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/9F;

    .line 28783
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A01(ZZI)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v2

    .line 28784
    .local v0, "playbackInfo":Lcom/facebook/ads/redexgen/X/9Z;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Dg;->A08:Z

    .line 28785
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    .line 28786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0E:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Df;->A0z(Lcom/facebook/ads/redexgen/X/ET;ZZ)V

    .line 28787
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Dg;->A05(Lcom/facebook/ads/redexgen/X/9Z;ZIIZZ)V

    .line 28788
    return-void
.end method

.method public final AE4()V
    .locals 4

    .line 28789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x8

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28790
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    const/16 v1, 0x12

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/4 v1, 0x3

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hs;->A04:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28791
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9P;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    const/4 v1, 0x1

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28792
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0E:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Df;->A0x()V

    .line 28794
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0C:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28795
    return-void
.end method

.method public final AEe(J)V
    .locals 1

    .line 28796
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A6O()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dg;->A09(IJ)V

    .line 28797
    return-void
.end method

.method public final AEf()V
    .locals 1

    .line 28798
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dg;->A6O()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A08(I)V

    .line 28799
    return-void
.end method

.method public final AF3(Z)V
    .locals 7

    .line 28800
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0A:Z

    if-eq v0, p1, :cond_0

    .line 28801
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0A:Z

    .line 28802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0E:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Df;->A10(Z)V

    .line 28803
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dg;->A06:Lcom/facebook/ads/redexgen/X/9Z;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Dg;->A05(Lcom/facebook/ads/redexgen/X/9Z;ZIIZZ)V

    .line 28804
    :cond_0
    return-void
.end method

.method public final AFU(Z)V
    .locals 8

    .line 28805
    if-eqz p1, :cond_0

    .line 28806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A05:Lcom/facebook/ads/redexgen/X/9F;

    .line 28807
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p1, v1}, Lcom/facebook/ads/redexgen/X/Dg;->A01(ZZI)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v2

    .line 28808
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/9Z;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:I

    .line 28809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A0E:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Df;->A11(Z)V

    .line 28810
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Dg;->A05(Lcom/facebook/ads/redexgen/X/9Z;ZIIZZ)V

    .line 28811
    return-void
.end method
