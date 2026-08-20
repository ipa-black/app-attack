.class public final Lcom/facebook/ads/redexgen/X/9X;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/9V;

.field public A05:Lcom/facebook/ads/redexgen/X/9V;

.field public A06:Lcom/facebook/ads/redexgen/X/9V;

.field public A07:Lcom/facebook/ads/redexgen/X/9u;

.field public A08:Ljava/lang/Object;

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/9s;

.field public final A0B:Lcom/facebook/ads/redexgen/X/9t;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 20535
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Lb1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HAO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yCHPPE9w0w81YCKuxFE6L9DmrxkJ2tU0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DWgdxvM8Y7BV8jWWEqdgbbwmU3UKZQmt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Bgm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OOw1FrSehBTCipzYy8xUBx5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Tcr4i3yvYCwS9F"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vvoyvovICPFY35FJOKkJE7b"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20537
    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    .line 20538
    new-instance v0, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9t;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0B:Lcom/facebook/ads/redexgen/X/9t;

    .line 20539
    return-void
.end method

.method private A00(I)J
    .locals 6

    .line 20540
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    .line 20541
    .local v0, "periodUid":Ljava/lang/Object;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    .line 20542
    .local v1, "windowIndex":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A08:Ljava/lang/Object;

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 20543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A04(Ljava/lang/Object;)I

    move-result v2

    .line 20544
    .local v2, "oldFrontPeriodIndex":I
    if-eq v2, v4, :cond_0

    .line 20545
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    .line 20546
    .local v4, "oldFrontWindowIndex":I
    if-ne v0, v5, :cond_0

    .line 20547
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A03:J

    return-wide v0

    .line 20548
    .end local v2    # "oldFrontPeriodIndex":I
    .end local v4    # "oldFrontWindowIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9X;->A0E()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v1

    .line 20549
    .local v2, "mediaPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    :goto_0
    if-eqz v1, :cond_2

    .line 20550
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A09:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20551
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    return-wide v0

    .line 20552
    :cond_1
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    goto :goto_0

    .line 20553
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9X;->A0E()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v3

    .line 20554
    :goto_1
    if-eqz v3, :cond_4

    .line 20555
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A04(Ljava/lang/Object;)I

    move-result v2

    .line 20556
    .local v4, "indexOfHolderInTimeline":I
    if-eq v2, v4, :cond_3

    .line 20557
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    .line 20558
    .local v5, "holderWindowIndex":I
    if-ne v0, v5, :cond_3

    .line 20559
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    return-wide v0

    .line 20560
    .end local v5    # "holderWindowIndex":I
    :cond_3
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    .line 20561
    .end local v4    # "indexOfHolderInTimeline":I
    goto :goto_1

    .line 20562
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A02:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A02:J

    return-wide v2
.end method

.method private A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9W;
    .locals 17

    .line 20563
    move-object/from16 v3, p0

    new-instance v6, Lcom/facebook/ads/redexgen/X/ER;

    move/from16 v7, p1

    move/from16 v5, p2

    move/from16 v4, p3

    move-wide/from16 v10, p6

    move-object v6, v6

    move v8, v5

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/ER;-><init>(IIIJ)V

    .line 20564
    .local v1, "id":Lcom/facebook/ads/redexgen/X/ER;
    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {v3, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/9X;->A0A(Lcom/facebook/ads/redexgen/X/ER;J)Z

    move-result v15

    .line 20565
    .local v2, "isLastInPeriod":Z
    invoke-direct {v3, v6, v15}, Lcom/facebook/ads/redexgen/X/9X;->A0B(Lcom/facebook/ads/redexgen/X/ER;Z)Z

    move-result v16

    .line 20566
    .local v3, "isLastInTimeline":Z
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    .line 20567
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    .line 20568
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9s;->A0A(II)J

    move-result-wide v13

    .line 20569
    .local v4, "durationUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9s;->A02(I)I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 20570
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9s;->A06()J

    move-result-wide v7

    .line 20571
    .local v10, "startPositionUs":J
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/9W;

    const-wide/high16 v9, -0x8000000000000000L

    move-wide/from16 v11, p4

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/9W;-><init>(Lcom/facebook/ads/redexgen/X/ER;JJJJZZ)V

    return-object v5

    .line 20572
    :cond_0
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method private A02(IJJ)Lcom/facebook/ads/redexgen/X/9W;
    .locals 16

    .line 20573
    move-object/from16 v4, p0

    new-instance v5, Lcom/facebook/ads/redexgen/X/ER;

    move/from16 v2, p1

    move-wide/from16 v0, p4

    invoke-direct {v5, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ER;-><init>(IJ)V

    .line 20574
    .local v1, "id":Lcom/facebook/ads/redexgen/X/ER;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 20575
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    move-wide/from16 v6, p2

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/9s;->A04(J)I

    move-result v3

    .line 20576
    .local v15, "nextAdGroupIndex":I
    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 20577
    move-wide v8, v1

    .line 20578
    .local v9, "endUs":J
    :goto_0
    invoke-direct {v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/9X;->A0A(Lcom/facebook/ads/redexgen/X/ER;J)Z

    move-result v14

    .line 20579
    .local v7, "isLastInPeriod":Z
    invoke-direct {v4, v5, v14}, Lcom/facebook/ads/redexgen/X/9X;->A0B(Lcom/facebook/ads/redexgen/X/ER;Z)Z

    move-result v15

    .line 20580
    .local p1, "isLastInTimeline":Z
    cmp-long v0, v8, v1

    if-nez v0, :cond_0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9s;->A07()J

    move-result-wide v12

    .line 20581
    .local v13, "durationUs":J
    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/9W;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .end local v7    # "isLastInPeriod":Z
    .local p5, "isLastInPeriod":Z
    .end local v9    # "endUs":J
    .local p6, "endUs":J
    .end local v15    # "nextAdGroupIndex":I
    .local p3, "nextAdGroupIndex":I
    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/9W;-><init>(Lcom/facebook/ads/redexgen/X/ER;JJJJZZ)V

    return-object v4

    .line 20582
    :cond_0
    move-wide v12, v8

    goto :goto_1

    .line 20583
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9s;->A09(I)J

    move-result-wide v8

    goto :goto_0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/9V;J)Lcom/facebook/ads/redexgen/X/9W;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20584
    move-object v0, p0

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    .line 20585
    .local v10, "mediaPeriodInfo":Lcom/facebook/ads/redexgen/X/9W;
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/9W;->A06:Z

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 20586
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v6, v1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/9X;->A0B:Lcom/facebook/ads/redexgen/X/9t;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    iget-boolean v10, v0, Lcom/facebook/ads/redexgen/X/9X;->A09:Z

    .line 20587
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/9u;->A03(ILcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/redexgen/X/9t;IZ)I

    move-result v7

    .line 20588
    .local v0, "nextPeriodIndex":I
    if-ne v7, v2, :cond_0

    .line 20589
    return-object v4

    .line 20590
    :cond_0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    .line 20591
    const/4 v1, 0x1

    invoke-virtual {v4, v7, v2, v1}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v1

    iget v9, v1, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    .line 20592
    .local v6, "nextWindowIndex":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    .line 20593
    .local v7, "nextPeriodUid":Ljava/lang/Object;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    .line 20594
    .local v3, "windowSequenceNumber":J
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9X;->A0B:Lcom/facebook/ads/redexgen/X/9t;

    invoke-virtual {v2, v9, v1}, Lcom/facebook/ads/redexgen/X/9u;->A0B(ILcom/facebook/ads/redexgen/X/9t;)Lcom/facebook/ads/redexgen/X/9t;

    move-result-object v1

    iget v1, v1, Lcom/facebook/ads/redexgen/X/9t;->A00:I

    if-ne v1, v7, :cond_d

    .line 20595
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9V;->A07()J

    move-result-wide v1

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/9W;->A01:J

    add-long/2addr v1, v3

    sub-long v1, v1, p2

    .line 20596
    .local p0, "defaultPositionProjectionUs":J
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9X;->A0B:Lcom/facebook/ads/redexgen/X/9t;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .end local v3    # "windowSequenceNumber":J
    .local p5, "windowSequenceNumber":J
    const-wide/16 v3, 0x0

    .line 20597
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 20598
    .end local p0    # "defaultPositionProjectionUs":J
    .local v3, "defaultPositionProjectionUs":J
    invoke-virtual/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/9u;->A08(Lcom/facebook/ads/redexgen/X/9t;Lcom/facebook/ads/redexgen/X/9s;IJJ)Landroid/util/Pair;

    move-result-object v2

    .line 20599
    .local v1, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v2, :cond_a

    .line 20600
    const/4 v0, 0x0

    return-object v0

    .line 20601
    .end local v6    # "nextWindowIndex":I
    .end local v7    # "nextPeriodUid":Ljava/lang/Object;
    .end local v11
    .end local v12
    .end local p0
    .end local p5
    :cond_1
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 20602
    .local v11, "currentPeriodId":Lcom/facebook/ads/redexgen/X/ER;
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget v5, v1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 20603
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20604
    iget v6, v1, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    .line 20605
    .local v12, "adGroupIndex":I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/9s;->A01(I)I

    move-result v5

    .line 20606
    .local v13, "adCountInCurrentAdGroup":I
    if-ne v5, v2, :cond_2

    .line 20607
    const/4 v0, 0x0

    return-object v0

    .line 20608
    :cond_2
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    .line 20609
    invoke-virtual {v4, v6, v2}, Lcom/facebook/ads/redexgen/X/9s;->A03(II)I

    move-result v7

    .line 20610
    .local p0, "nextAdIndexInAdGroup":I
    if-ge v7, v5, :cond_4

    .line 20611
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/9s;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 20612
    const/4 v0, 0x0

    .line 20613
    :goto_0
    return-object v0

    .line 20614
    :cond_3
    iget v5, v1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/9W;->A00:J

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/9X;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    goto :goto_0

    .line 20615
    :cond_4
    iget v2, v1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/9W;->A00:J

    iget-wide v5, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/9X;->A02(IJJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    return-object v0

    .line 20616
    .end local v12    # "adGroupIndex":I
    .end local v13    # "adCountInCurrentAdGroup":I
    .end local p0    # "nextAdIndexInAdGroup":I
    :cond_5
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/9W;->A02:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v7, v4, v8

    sget-object v6, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v5, v6, v4

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_15

    sget-object v6, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v5, "Mkh"

    const/4 v4, 0x4

    aput-object v5, v6, v4

    const-string v5, "LRN"

    const/4 v4, 0x1

    aput-object v5, v6, v4

    if-eqz v7, :cond_8

    .line 20617
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/9W;->A02:J

    invoke-virtual {v6, v4, v5}, Lcom/facebook/ads/redexgen/X/9s;->A05(J)I

    move-result v5

    .line 20618
    .local v12, "nextAdGroupIndex":I
    if-ne v5, v2, :cond_6

    .line 20619
    iget v2, v1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/9W;->A02:J

    iget-wide v5, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/9X;->A02(IJJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    return-object v0

    .line 20620
    :cond_6
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/9s;->A02(I)I

    move-result v6

    .line 20621
    .local v13, "adIndexInAdGroup":I
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/9s;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 20622
    const/4 v0, 0x0

    .line 20623
    :goto_1
    return-object v0

    .line 20624
    :cond_7
    iget v4, v1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-wide v7, v3, Lcom/facebook/ads/redexgen/X/9W;->A02:J

    iget-wide v9, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/9X;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    goto :goto_1

    .line 20625
    .end local v12    # "nextAdGroupIndex":I
    .end local v13    # "adIndexInAdGroup":I
    :cond_8
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9s;->A00()I

    move-result v2

    .line 20626
    .local v12, "adGroupCount":I
    if-nez v2, :cond_9

    .line 20627
    const/4 v0, 0x0

    return-object v0

    .line 20628
    :cond_9
    add-int/lit8 v6, v2, -0x1

    .line 20629
    .local v13, "adGroupIndex":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/9s;->A09(I)J

    move-result-wide v3

    cmp-long v2, v3, v8

    if-nez v2, :cond_f

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    sget-object v3, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x71

    if-eq v3, v2, :cond_e

    goto :goto_2

    .line 20630
    :cond_a
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 20631
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 20632
    .local v11, "startPositionUs":J
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/9V;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v2, v3, v1

    const/4 v1, 0x7

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_b

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v3, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v2, "1Mi"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    const-string v2, "4wM"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    if-eqz v4, :cond_c

    .line 20633
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    .end local p5
    .local v13, "windowSequenceNumber":J
    goto :goto_3

    .line 20634
    .end local v13    # "windowSequenceNumber":J
    .restart local p5
    :cond_c
    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/9X;->A02:J

    const-wide/16 v3, 0x1

    .end local v0    # "nextPeriodIndex":I
    .end local v1    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local v2, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local v5, "nextPeriodIndex":I
    add-long v1, v10, v3

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/9X;->A02:J

    goto :goto_3

    .line 20635
    .end local v5    # "nextPeriodIndex":I
    .end local v11    # "startPositionUs":J
    .end local v13
    .restart local v0    # "nextPeriodIndex":I
    .local v3, "windowSequenceNumber":J
    .end local v3    # "windowSequenceNumber":J
    .restart local p5
    :cond_d
    const-wide/16 v8, 0x0

    .line 20636
    .end local v0    # "nextPeriodIndex":I
    .local v11, "nextPeriodIndex":I
    .local v12, "startPositionUs":J
    :goto_3
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9X;->A07(IJJ)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v7

    .line 20637
    .local p0, "periodId":Lcom/facebook/ads/redexgen/X/ER;
    move-wide v10, v8

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9X;->A06(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    return-object v0

    .line 20638
    :cond_e
    sget-object v4, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v3, "v4RqMCCMyohjhj"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    const-string v3, "VaJ"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/9s;->A0D(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 20639
    .end local p0    # "periodId":Lcom/facebook/ads/redexgen/X/ER;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/9V;
    :cond_f
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_10

    return-object v3

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v1, "OaXxy4ZAPPYV9k"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "tU4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    .line 20640
    :cond_11
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/9s;->A02(I)I

    move-result v7

    .line 20641
    .local p0, "adIndexInAdGroup":I
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v6, v7}, Lcom/facebook/ads/redexgen/X/9s;->A0E(II)Z

    move-result v2

    if-nez v2, :cond_13

    .line 20642
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v1, "nHRVyYi6CwR1mKhXGjDN4SEBRB6Sc1lP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_12
    return-object v3

    .line 20643
    :cond_13
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9s;->A07()J

    move-result-wide v8

    .line 20644
    .local p1, "contentDurationUs":J
    iget v5, v1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v3, v0

    const/4 v0, 0x7

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_14
    sget-object v3, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v2, "rKR9SUNE0wWlvttO7fw3rD4zdQIUaCm2"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/9X;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    return-object v0

    .line 20645
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/9W;Lcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9W;
    .locals 16

    .line 20646
    move-object/from16 v4, p0

    move-object/from16 v3, p1

    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/9W;->A03:J

    .line 20647
    .local v12, "startPositionUs":J
    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/9W;->A02:J

    .line 20648
    .local v8, "endPositionUs":J
    move-object/from16 v5, p2

    invoke-direct {v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/9X;->A0A(Lcom/facebook/ads/redexgen/X/ER;J)Z

    move-result v14

    .line 20649
    .local v15, "isLastInPeriod":Z
    invoke-direct {v4, v5, v14}, Lcom/facebook/ads/redexgen/X/9X;->A0B(Lcom/facebook/ads/redexgen/X/ER;Z)Z

    move-result v15

    .line 20650
    .local p0, "isLastInTimeline":Z
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 20651
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20652
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9s;->A0A(II)J

    move-result-wide v12

    .line 20653
    .local v10, "durationUs":J
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v10, v3, Lcom/facebook/ads/redexgen/X/9W;->A00:J

    .end local v8    # "endPositionUs":J
    .local p4, "endPositionUs":J
    .end local v12    # "startPositionUs":J
    .local p2, "startPositionUs":J
    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/9W;-><init>(Lcom/facebook/ads/redexgen/X/ER;JJJJZZ)V

    return-object v4

    .line 20654
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v8, v1

    if-nez v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9s;->A07()J

    move-result-wide v12

    goto :goto_0

    :cond_1
    move-wide v12, v8

    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/9Z;)Lcom/facebook/ads/redexgen/X/9W;
    .locals 6

    .line 20655
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9X;->A06(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    return-object v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9W;
    .locals 8

    .line 20656
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 20657
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20658
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9s;->A0E(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20659
    const/4 v0, 0x0

    return-object v0

    .line 20660
    :cond_0
    iget v1, p1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    iget-wide v6, p1, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/9X;->A01(IIIJJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    return-object v0

    .line 20661
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9X;->A02(IJJ)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    return-object v0
.end method

.method private A07(IJJ)Lcom/facebook/ads/redexgen/X/ER;
    .locals 7

    .line 20662
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    move v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 20663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/9s;->A05(J)I

    move-result v3

    .line 20664
    .local v0, "adGroupIndex":I
    const/4 v0, -0x1

    move-wide v5, p4

    if-ne v3, v0, :cond_0

    .line 20665
    new-instance v0, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {v0, v2, v5, v6}, Lcom/facebook/ads/redexgen/X/ER;-><init>(IJ)V

    return-object v0

    .line 20666
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9s;->A02(I)I

    move-result v4

    .line 20667
    .local p0, "adIndexInAdGroup":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/ER;-><init>(IIIJ)V

    return-object v1
.end method

.method private A08()Z
    .locals 13

    .line 20668
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9X;->A0E()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v3

    .line 20669
    .local v0, "lastValidPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 20670
    return v6

    .line 20671
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9X;->A0B:Lcom/facebook/ads/redexgen/X/9t;

    iget v11, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    iget-boolean v12, p0, Lcom/facebook/ads/redexgen/X/9X;->A09:Z

    .line 20672
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9u;->A03(ILcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/redexgen/X/9t;IZ)I

    move-result v5

    .line 20673
    .local v2, "nextPeriodIndex":I
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A06:Z

    if-nez v0, :cond_1

    .line 20674
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    goto :goto_1

    .line 20675
    :cond_1
    const/4 v0, -0x1

    if-eq v5, v0, :cond_3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v1, "04e"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fTm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v4, v5, :cond_6

    .line 20676
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/9X;->A0S(Lcom/facebook/ads/redexgen/X/9V;)Z

    move-result v2

    .line 20677
    .local v2, "readingPeriodRemoved":Z
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 20678
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9X;->A04(Lcom/facebook/ads/redexgen/X/9W;Lcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    .line 20679
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_2
    return v6

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 20680
    :cond_6
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    .line 20681
    .end local v2    # "readingPeriodRemoved":Z
    goto :goto_0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/9W;)Z
    .locals 6

    .line 20682
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    .line 20683
    .local v0, "periodHolderInfo":Lcom/facebook/ads/redexgen/X/9W;
    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/9W;->A03:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/9W;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/9W;->A02:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/9W;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 20684
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ER;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 20685
    :goto_0
    return v0

    .line 20686
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/ER;J)Z
    .locals 9

    .line 20687
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9s;->A00()I

    move-result v0

    .line 20688
    .local v0, "adGroupCount":I
    const/4 v8, 0x1

    if-nez v0, :cond_0

    .line 20689
    return v8

    .line 20690
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 20691
    .local v2, "lastAdGroupIndex":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v7

    .line 20692
    .local v3, "isAd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9s;->A09(I)J

    move-result-wide v4

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v6, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_2

    .line 20693
    if-nez v7, :cond_1

    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 20694
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9s;->A01(I)I

    move-result v4

    .line 20695
    .local v4, "postrollAdCount":I
    const/4 v5, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v1, "dZB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bbK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v5, :cond_4

    .line 20696
    return v6

    .line 20697
    :cond_4
    if-eqz v7, :cond_7

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    if-ne v0, v3, :cond_7

    iget v1, p1, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    add-int/lit8 v0, v4, -0x1

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    .line 20698
    .local v5, "isLastAd":Z
    :goto_1
    if-nez v0, :cond_5

    if-nez v7, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9s;->A02(I)I

    move-result v0

    if-ne v0, v4, :cond_6

    :cond_5
    :goto_2
    return v8

    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 20699
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/ER;Z)Z
    .locals 6

    .line 20700
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    .line 20701
    .local v0, "windowIndex":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0B:Lcom/facebook/ads/redexgen/X/9t;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9u;->A0B(ILcom/facebook/ads/redexgen/X/9t;)Lcom/facebook/ads/redexgen/X/9t;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9t;->A08:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9X;->A0B:Lcom/facebook/ads/redexgen/X/9t;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/9X;->A09:Z

    .line 20702
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9u;->A0F(ILcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/redexgen/X/9t;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 20703
    :goto_0
    return v0

    .line 20704
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0C()Lcom/facebook/ads/redexgen/X/9V;
    .locals 4

    .line 20705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v1, :cond_3

    .line 20706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    if-ne v1, v0, :cond_0

    .line 20707
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    .line 20708
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0D()V

    .line 20709
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    .line 20710
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    if-nez v0, :cond_1

    .line 20711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    .line 20712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A09:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A08:Ljava/lang/Object;

    .line 20713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A03:J

    .line 20714
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v1, "umGBE5C5CuHWhY73AVgogVf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "vM8t2ZsrAby17UFg4572Zd2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    goto :goto_0

    .line 20715
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    .line 20716
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    .line 20717
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    return-object v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/9V;
    .locals 1

    .line 20718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 20719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    .line 20720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    return-object v0

    .line 20721
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/9V;
    .locals 1

    .line 20722
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    goto :goto_0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/9V;
    .locals 1

    .line 20723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/9V;
    .locals 1

    .line 20724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/9V;
    .locals 1

    .line 20725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    return-object v0
.end method

.method public final A0I(JLcom/facebook/ads/redexgen/X/9Z;)Lcom/facebook/ads/redexgen/X/9W;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    if-nez v0, :cond_0

    .line 20727
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/9X;->A05(Lcom/facebook/ads/redexgen/X/9Z;)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    .line 20728
    :goto_0
    return-object v0

    .line 20729
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9X;->A03(Lcom/facebook/ads/redexgen/X/9V;J)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/9W;I)Lcom/facebook/ads/redexgen/X/9W;
    .locals 1

    .line 20730
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 20731
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/ER;->A00(I)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v0

    .line 20732
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/9X;->A04(Lcom/facebook/ads/redexgen/X/9W;Lcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    return-object v0
.end method

.method public final A0K([Lcom/facebook/ads/redexgen/X/9n;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/ET;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/9W;)Lcom/facebook/ads/redexgen/X/VA;
    .locals 13

    .line 20733
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    move-object/from16 v12, p6

    if-nez v0, :cond_1

    .line 20734
    iget-wide v6, v12, Lcom/facebook/ads/redexgen/X/9W;->A03:J

    .line 20735
    .local v4, "rendererPositionOffsetUs":J
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/9V;

    move-object v5, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/9V;-><init>([Lcom/facebook/ads/redexgen/X/9n;JLcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/ET;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/9W;)V

    .line 20736
    .local v1, "newPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_0

    .line 20737
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 20738
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    iput-object v4, v0, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    .line 20739
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A08:Ljava/lang/Object;

    .line 20740
    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    .line 20741
    iget v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    .line 20742
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    return-object v0

    .line 20743
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A07()J

    move-result-wide v6

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A01:J

    add-long/2addr v6, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v1, "XFCrwzIN7SxWEMf0fznSlHt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zDOSpelqL3O1zvPqWZMR4dG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L(IJ)Lcom/facebook/ads/redexgen/X/ER;
    .locals 6

    .line 20744
    move v1, p1

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/9X;->A00(I)J

    move-result-wide v4

    .line 20745
    .local p0, "windowSequenceNumber":J
    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9X;->A07(IJJ)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v0

    return-object v0
.end method

.method public final A0M(J)V
    .locals 1

    .line 20746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_0

    .line 20747
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9V;->A0G(J)V

    .line 20748
    :cond_0
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/9u;)V
    .locals 0

    .line 20749
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    .line 20750
    return-void
.end method

.method public final A0O(Z)V
    .locals 4

    .line 20751
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9X;->A0E()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v3

    .line 20752
    .local v0, "front":Lcom/facebook/ads/redexgen/X/9V;
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    .line 20753
    if-eqz p1, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A09:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A08:Ljava/lang/Object;

    .line 20754
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A03:J

    .line 20755
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9V;->A0D()V

    .line 20756
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/9X;->A0S(Lcom/facebook/ads/redexgen/X/9V;)Z

    .line 20757
    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    .line 20758
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    .line 20759
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    .line 20760
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    .line 20761
    return-void

    .line 20762
    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 20763
    :cond_2
    if-nez p1, :cond_0

    .line 20764
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A08:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final A0P()Z
    .locals 1

    .line 20765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Q()Z
    .locals 5

    .line 20766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A05:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    .line 20767
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/9W;->A01:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 20768
    :goto_0
    return v0

    .line 20769
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0R(I)Z
    .locals 1

    .line 20770
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    .line 20771
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9X;->A08()Z

    move-result v0

    return v0
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/9V;)Z
    .locals 5

    .line 20772
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 20773
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20774
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 20775
    .local v1, "removedReading":Z
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v1, "VEc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "0t0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    .line 20776
    :goto_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_3

    .line 20777
    iget-object p1, p1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    .line 20778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    if-ne p1, v0, :cond_2

    .line 20779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A05:Lcom/facebook/ads/redexgen/X/9V;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A06:Lcom/facebook/ads/redexgen/X/9V;

    .line 20780
    const/4 v3, 0x1

    .line 20781
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9V;->A0D()V

    .line 20782
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A00:I

    goto :goto_1

    .line 20783
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    .line 20784
    return v3
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/VA;)Z
    .locals 1

    .line 20785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/ER;J)Z
    .locals 11

    .line 20786
    iget v6, p1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    .line 20787
    .local v0, "periodIndex":I
    const/4 v4, 0x0

    .line 20788
    .local v1, "previousPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9X;->A0E()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v1

    .line 20789
    .local v2, "periodHolder":Lcom/facebook/ads/redexgen/X/9V;
    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 20790
    if-nez v4, :cond_0

    .line 20791
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x71

    if-eq v2, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20792
    :cond_0
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/9V;->A09:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    .line 20793
    invoke-virtual {v2, v6, v0, v3}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20794
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9X;->A0S(Lcom/facebook/ads/redexgen/X/9V;)Z

    move-result v0

    xor-int/2addr v3, v0

    return v3

    .line 20795
    :cond_2
    invoke-direct {p0, v4, p2, p3}, Lcom/facebook/ads/redexgen/X/9X;->A03(Lcom/facebook/ads/redexgen/X/9V;J)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v2

    .line 20796
    .local v4, "periodInfo":Lcom/facebook/ads/redexgen/X/9W;
    if-nez v2, :cond_3

    .line 20797
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9X;->A0S(Lcom/facebook/ads/redexgen/X/9V;)Z

    move-result v0

    xor-int/2addr v3, v0

    return v3

    .line 20798
    :cond_3
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    invoke-virtual {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/9X;->A0J(Lcom/facebook/ads/redexgen/X/9W;I)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    .line 20799
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/9X;->A09(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/9W;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 20800
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9X;->A0S(Lcom/facebook/ads/redexgen/X/9V;)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    xor-int/2addr v3, v4

    return v3

    .line 20801
    :cond_4
    sget-object v3, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v2, "pn8srZEQfSJzxw"

    const/4 v0, 0x6

    aput-object v2, v3, v0

    const-string v2, "zNd"

    const/4 v0, 0x0

    aput-object v2, v3, v0

    invoke-virtual {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/9X;->A0J(Lcom/facebook/ads/redexgen/X/9W;I)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    .line 20802
    .end local v4    # "periodInfo":Lcom/facebook/ads/redexgen/X/9W;
    :cond_5
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A06:Z

    if-eqz v0, :cond_6

    .line 20803
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9X;->A07:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9X;->A0A:Lcom/facebook/ads/redexgen/X/9s;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/9X;->A0B:Lcom/facebook/ads/redexgen/X/9t;

    iget v9, p0, Lcom/facebook/ads/redexgen/X/9X;->A01:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/9X;->A09:Z

    .line 20804
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/9u;->A03(ILcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/redexgen/X/9t;IZ)I

    move-result v6

    .line 20805
    :cond_6
    move-object v4, v1

    .line 20806
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/9X;->A0C:[Ljava/lang/String;

    const-string v1, "009NTdXku0rfOoGLKxDbxOM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "1WlPwvG5U3NzzyaZC20RJwC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    xor-int/2addr v3, v4

    return v3

    .line 20807
    :cond_8
    return v3
.end method

.method public final A0V(Z)Z
    .locals 1

    .line 20808
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9X;->A09:Z

    .line 20809
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9X;->A08()Z

    move-result v0

    return v0
.end method
