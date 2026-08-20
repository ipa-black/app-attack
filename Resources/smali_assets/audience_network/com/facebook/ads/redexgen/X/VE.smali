.class public final Lcom/facebook/ads/redexgen/X/VE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Gb;

.field public A04:Z

.field public final A05:Landroid/net/Uri;

.field public final A06:Lcom/facebook/ads/redexgen/X/Bc;

.field public final A07:Lcom/facebook/ads/redexgen/X/EN;

.field public final A08:Lcom/facebook/ads/redexgen/X/GX;

.field public final A09:Lcom/facebook/ads/redexgen/X/HJ;

.field public volatile A0A:Z

.field public final synthetic A0B:Lcom/facebook/ads/redexgen/X/BR;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58511
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "G7jWD6ulf4YNSZyKFTHtDKYEexnehBFD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eAcypqsPfTTSG9tYkNPVa4Ur1OSgM6nM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tNQG44GENbPBCr6MlCIr3t4n4NF0MmxZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OwErIGDXAeY1H11Nt9UmuNZTMubue4sT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "f"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eBkibdjxFKT4WmP6H51EPZ9055c0bCkp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0Ce9TygyYiJS1KV85oyrWWiGz76nCu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VE;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BR;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/EN;Lcom/facebook/ads/redexgen/X/HJ;)V
    .locals 2

    .line 58512
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VE;->A0B:Lcom/facebook/ads/redexgen/X/BR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58513
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A05:Landroid/net/Uri;

    .line 58514
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A08:Lcom/facebook/ads/redexgen/X/GX;

    .line 58515
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A07:Lcom/facebook/ads/redexgen/X/EN;

    .line 58516
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/VE;->A09:Lcom/facebook/ads/redexgen/X/HJ;

    .line 58517
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A06:Lcom/facebook/ads/redexgen/X/Bc;

    .line 58518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A04:Z

    .line 58519
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:J

    .line 58520
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/VE;)J
    .locals 1

    .line 58521
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/VE;)J
    .locals 1

    .line 58522
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/VE;)J
    .locals 1

    .line 58523
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/VE;)Lcom/facebook/ads/redexgen/X/Gb;
    .locals 0

    .line 58524
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/VE;->A03:Lcom/facebook/ads/redexgen/X/Gb;

    return-object p0
.end method


# virtual methods
.method public final A04(JJ)V
    .locals 1

    .line 58525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A06:Lcom/facebook/ads/redexgen/X/Bc;

    iput-wide p1, v0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 58526
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:J

    .line 58527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A04:Z

    .line 58528
    return-void
.end method

.method public final A3z()V
    .locals 1

    .line 58529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A0A:Z

    .line 58530
    return-void
.end method

.method public final A91()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58531
    const/4 v0, 0x0

    .line 58532
    .local v0, "result":I
    :goto_0
    if-nez v0, :cond_7

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A0A:Z

    if-nez v1, :cond_7

    .line 58533
    const/4 v3, 0x0

    .line 58534
    .local v1, "input":Lcom/facebook/ads/redexgen/X/BW;
    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A06:Lcom/facebook/ads/redexgen/X/Bc;

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 58535
    .local v3, "position":J
    new-instance v8, Lcom/facebook/ads/redexgen/X/Gb;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/VE;->A05:Landroid/net/Uri;

    const-wide/16 v12, -0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A0B:Lcom/facebook/ads/redexgen/X/BR;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BR;->A08(Lcom/facebook/ads/redexgen/X/BR;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/Gb;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/VE;->A03:Lcom/facebook/ads/redexgen/X/Gb;

    .line 58536
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VE;->A08:Lcom/facebook/ads/redexgen/X/GX;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A03:Lcom/facebook/ads/redexgen/X/Gb;

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/GX;->ADF(Lcom/facebook/ads/redexgen/X/Gb;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:J

    .line 58537
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, -0x1

    cmp-long v6, v1, v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/VE;->A0C:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v5, v1

    const/4 v1, 0x6

    aget-object v5, v5, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_0

    .line 58538
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58539
    :cond_0
    sget-object v5, Lcom/facebook/ads/redexgen/X/VE;->A0C:[Ljava/lang/String;

    const-string v2, "h"

    const/4 v1, 0x5

    aput-object v2, v5, v1

    const-string v2, "J"

    const/4 v1, 0x2

    aput-object v2, v5, v1

    if-eqz v6, :cond_1

    .line 58540
    :try_start_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:J

    .line 58541
    :cond_1
    new-instance v8, Lcom/facebook/ads/redexgen/X/WY;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/VE;->A08:Lcom/facebook/ads/redexgen/X/GX;

    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:J

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/WY;-><init>(Lcom/facebook/ads/redexgen/X/GX;JJ)V

    move-object v3, v8

    .line 58542
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VE;->A07:Lcom/facebook/ads/redexgen/X/EN;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A08:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/GX;->A7w()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/facebook/ads/redexgen/X/EN;->A02(Lcom/facebook/ads/redexgen/X/BW;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/BV;

    move-result-object v5

    .line 58543
    .local v5, "extractor":Lcom/facebook/ads/redexgen/X/BV;
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A04:Z

    if-eqz v1, :cond_2

    .line 58544
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:J

    invoke-interface {v5, v10, v11, v1, v2}, Lcom/facebook/ads/redexgen/X/BV;->AEc(JJ)V

    .line 58545
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A04:Z

    .line 58546
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A0A:Z

    if-nez v1, :cond_3

    .line 58547
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A09:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HJ;->A00()V

    .line 58548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A06:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-interface {v5, v3, v1}, Lcom/facebook/ads/redexgen/X/BV;->ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I

    move-result v0

    .line 58549
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WY;->A7P()J

    move-result-wide v8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A0B:Lcom/facebook/ads/redexgen/X/BR;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BR;->A03(Lcom/facebook/ads/redexgen/X/BR;)J

    move-result-wide v6

    add-long/2addr v6, v10

    cmp-long v1, v8, v6

    if-lez v1, :cond_2

    .line 58550
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WY;->A7P()J

    move-result-wide v10

    .line 58551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A09:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HJ;->A01()Z

    .line 58552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A0B:Lcom/facebook/ads/redexgen/X/BR;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BR;->A04(Lcom/facebook/ads/redexgen/X/BR;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A0B:Lcom/facebook/ads/redexgen/X/BR;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BR;->A06(Lcom/facebook/ads/redexgen/X/BR;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 58553
    .end local v3    # "position":J
    .end local v5    # "extractor":Lcom/facebook/ads/redexgen/X/BV;
    :cond_3
    if-ne v0, v4, :cond_4

    .line 58554
    const/4 v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58555
    :goto_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VE;->A08:Lcom/facebook/ads/redexgen/X/GX;

    sget-object v3, Lcom/facebook/ads/redexgen/X/VE;->A0C:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v3, v3, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58556
    :cond_4
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VE;->A06:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WY;->A7P()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 58557
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A06:Lcom/facebook/ads/redexgen/X/Bc;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A03:Lcom/facebook/ads/redexgen/X/Gb;

    iget-wide v1, v1, Lcom/facebook/ads/redexgen/X/Gb;->A01:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:J

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/VE;->A0C:[Ljava/lang/String;

    const-string v2, "dpmYGlMxTR21UmyqYUd4zG3B6RCRzQ7P"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hs;->A0W(Lcom/facebook/ads/redexgen/X/GX;)V

    .line 58558
    .end local v1    # "input":Lcom/facebook/ads/redexgen/X/BW;
    goto/16 :goto_0

    .line 58559
    .restart local v1    # "input":Lcom/facebook/ads/redexgen/X/BW;
    :catchall_0
    move-exception v5

    if-eq v0, v4, :cond_6

    .line 58560
    if-eqz v3, :cond_6

    .line 58561
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VE;->A06:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WY;->A7P()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 58562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A06:Lcom/facebook/ads/redexgen/X/Bc;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A03:Lcom/facebook/ads/redexgen/X/Gb;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Gb;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:J

    .line 58563
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A08:Lcom/facebook/ads/redexgen/X/GX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0W(Lcom/facebook/ads/redexgen/X/GX;)V

    .line 58564
    throw v5

    .line 58565
    .end local v1    # "input":Lcom/facebook/ads/redexgen/X/BW;
    :cond_7
    return-void
.end method
