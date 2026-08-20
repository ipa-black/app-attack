.class public final Lcom/facebook/ads/redexgen/X/Ve;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cq;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Cj;

.field public final A05:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59558
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "f3ASEvE0MACuH7PXtcW6SQzpVLuDWBs6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UAkl7YLcJ73MhJIfOQ7gtBxP58V39hXf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sKTt9gGYn0qCOxzPnchEZBW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TIj2tKxLfGdHgu1Q1GnzrxOOh9OPKkUY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NlS114awdnJt6ePSWIiXVyR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ttbg6FQm3oQML"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hnRFaN1D1NI4WPLkXSYbmAvKq8H9o2zk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6DjXFLFEMVHWeegs6rtlgiLmiwpKRWRw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cj;)V
    .locals 2

    .line 59559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59560
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A04:Lcom/facebook/ads/redexgen/X/Cj;

    .line 59561
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    .line 59562
    return-void
.end method


# virtual methods
.method public final A4C(Lcom/facebook/ads/redexgen/X/Hc;Z)V
    .locals 7

    .line 59563
    const/4 v4, -0x1

    .line 59564
    .local v0, "payloadStartPosition":I
    if-eqz p2, :cond_1

    .line 59565
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v3

    .line 59566
    .local v1, "payloadStartOffset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ve;->A06:[Ljava/lang/String;

    const-string v1, "fX8Qw0M3arh1i"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v4, v3

    .line 59567
    .end local v1    # "payloadStartOffset":I
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 59568
    if-nez p2, :cond_2

    .line 59569
    return-void

    .line 59570
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Z

    .line 59571
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59572
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    .line 59573
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    if-lez v0, :cond_9

    .line 59574
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    const/4 v4, 0x1

    const/4 v6, 0x3

    if-ge v0, v6, :cond_6

    .line 59575
    if-nez v0, :cond_4

    .line 59576
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v1

    .line 59577
    .local v1, "tableId":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59578
    const/16 v0, 0xff

    if-ne v1, v0, :cond_4

    .line 59579
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Z

    .line 59580
    return-void

    .line 59581
    .end local v1    # "tableId":I
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59582
    .local v1, "headerBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59583
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    .line 59584
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    if-ne v0, v6, :cond_3

    .line 59585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 59586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 59587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v2

    .line 59588
    .local v5, "secondHeaderByte":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v1

    .line 59589
    .local v6, "thirdHeaderByte":I
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    :goto_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ve;->A02:Z

    .line 59590
    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A01:I

    .line 59591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A01:I

    if-ge v1, v0, :cond_3

    .line 59592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 59593
    .local v3, "bytes":[B
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    const/16 v2, 0x1002

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A01:I

    array-length v0, v5

    mul-int/lit8 v0, v0, 0x2

    .line 59594
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 59595
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 59596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-static {v5, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 59597
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 59598
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59599
    .local v1, "bodyBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59600
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    .line 59601
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A01:I

    if-ne v0, v1, :cond_3

    .line 59602
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A02:Z

    if-eqz v0, :cond_8

    .line 59603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A01:I

    const/4 v0, -0x1

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A09([BIII)I

    move-result v0

    if-eqz v0, :cond_7

    .line 59604
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Z

    .line 59605
    return-void

    .line 59606
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A01:I

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    goto :goto_2

    .line 59607
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 59608
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ve;->A04:Lcom/facebook/ads/redexgen/X/Cj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A4B(Lcom/facebook/ads/redexgen/X/Hc;)V

    .line 59609
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ve;->A00:I

    goto/16 :goto_0

    .line 59610
    :cond_9
    return-void
.end method

.method public final A8X(Lcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 1

    .line 59611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A04:Lcom/facebook/ads/redexgen/X/Cj;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cj;->A8X(Lcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 59612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Z

    .line 59613
    return-void
.end method

.method public final AEb()V
    .locals 1

    .line 59614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ve;->A03:Z

    .line 59615
    return-void
.end method
