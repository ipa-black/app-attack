.class public final Lcom/facebook/ads/redexgen/X/WY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BW;


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:[B

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/GX;

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 63696
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WXHfHzHth2Al5uPNAeAj07mTCizYfL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ea4PVszhPWUkUOAzwMvLCDFSUaducjj7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YmMP3hbiPsyrKpNosY6PcrNT297v1Qrn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DJcyMwta"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hLB8mG9dKKyMH1LM5ESzC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Vr0ZnTk4fnCFSbIFCLxfH748g1DMsTn2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7kDa6eDxYJ9kj6HJXeCECzm6I99XwLPU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QseCjdkBkHi9C8DCiNRIrV91qCtwuZnL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WY;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GX;JJ)V
    .locals 1

    .line 63697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63698
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WY;->A05:Lcom/facebook/ads/redexgen/X/GX;

    .line 63699
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:J

    .line 63700
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/WY;->A04:J

    .line 63701
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    .line 63702
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A06:[B

    .line 63703
    return-void
.end method

.method private A00(I)I
    .locals 1

    .line 63704
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63705
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WY;->A05(I)V

    .line 63706
    return v0
.end method

.method private A01([BII)I
    .locals 3

    .line 63707
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 63708
    return v2

    .line 63709
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 63710
    .local v0, "peekBytes":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63711
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/WY;->A05(I)V

    .line 63712
    return v1
.end method

.method private A02([BIIIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63713
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A05:Lcom/facebook/ads/redexgen/X/GX;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GX;->read([BII)I

    move-result v1

    .line 63715
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 63716
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 63717
    return v0

    .line 63718
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 63719
    :cond_1
    add-int/2addr p4, v1

    return p4

    .line 63720
    .end local v0    # "bytesRead":I
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private A03(I)V
    .locals 4

    .line 63721
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 63722
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:J

    .line 63723
    :cond_0
    return-void
.end method

.method private A04(I)V
    .locals 4

    .line 63724
    iget v3, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    add-int/2addr v3, p1

    .line 63725
    .local v0, "requiredLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    array-length v0, v1

    if-le v3, v0, :cond_0

    .line 63726
    array-length v0, v1

    mul-int/lit8 v2, v0, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v3

    const/high16 v0, 0x80000

    add-int/2addr v0, v3

    .line 63727
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v1

    .line 63728
    .local v1, "newPeekCapacity":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    .line 63729
    .end local v1    # "newPeekCapacity":I
    :cond_0
    return-void
.end method

.method private A05(I)V
    .locals 5

    .line 63730
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    .line 63731
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    .line 63732
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    .line 63733
    .local v1, "newPeekBuffer":[B
    iget v2, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    array-length v1, v0

    const/high16 v0, 0x80000

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_0

    .line 63734
    const/high16 v0, 0x10000

    add-int/2addr v2, v0

    new-array v3, v2, [B

    .line 63735
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    invoke-static {v1, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63736
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    .line 63737
    return-void
.end method


# virtual methods
.method public final A06(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63738
    move v3, p1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/WY;->A04(I)V

    .line 63739
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 63740
    .local v0, "bytesPeeked":I
    :cond_0
    if-ge v4, v3, :cond_1

    .line 63741
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    .line 63742
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WY;->A02([BIIIZ)I

    move-result v4

    .line 63743
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 63744
    const/4 v0, 0x0

    return v0

    .line 63745
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    .line 63746
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    .line 63747
    const/4 v0, 0x1

    return v0
.end method

.method public final A07(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63748
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WY;->A00(I)I

    move-result v4

    .line 63749
    .local v0, "bytesSkipped":I
    :goto_0
    const/4 v0, -0x1

    if-ge v4, p1, :cond_0

    if-eq v4, v0, :cond_0

    .line 63750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A06:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 63751
    .local p1, "minLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A06:[B

    neg-int v2, v4

    .line 63752
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WY;->A02([BIIIZ)I

    move-result v4

    .line 63753
    .end local p1    # "minLength":I
    goto :goto_0

    .line 63754
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/WY;->A03(I)V

    .line 63755
    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final A3L(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63756
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WY;->A06(IZ)Z

    .line 63757
    return-void
.end method

.method public final A70()J
    .locals 2

    .line 63758
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A04:J

    return-wide v0
.end method

.method public final A7K()J
    .locals 4

    .line 63759
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A7P()J
    .locals 2

    .line 63760
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:J

    return-wide v0
.end method

.method public final ADP([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63761
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/WY;->ADQ([BIIZ)Z

    .line 63762
    return-void
.end method

.method public final ADQ([BIIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63763
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/WY;->A06(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63764
    const/4 v0, 0x0

    return v0

    .line 63765
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    sub-int/2addr v0, p3

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63766
    const/4 v0, 0x1

    return v0
.end method

.method public final ADu([BIIZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63767
    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct {p0, v4, v5, v6}, Lcom/facebook/ads/redexgen/X/WY;->A01([BII)I

    move-result v7

    .line 63768
    .local v0, "bytesRead":I
    :goto_0
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/WY;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WY;->A07:[Ljava/lang/String;

    const-string v1, "Jrnjt2kK808bOfAL2dwi4gGQEivMT1gd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "BeMd7gkFpNMGNNjn1C0ltMDP7X04qF1j"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v7, v6, :cond_1

    if-eq v7, v3, :cond_1

    .line 63769
    move-object v3, p0

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/WY;->A02([BIIIZ)I

    move-result v7

    goto :goto_0

    .line 63770
    :cond_1
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/WY;->A03(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/WY;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_2

    .line 63771
    sget-object v2, Lcom/facebook/ads/redexgen/X/WY;->A07:[Ljava/lang/String;

    const-string v1, "kVyK5NlwbVR8i9TPL7EEmQ28yX1F3goU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v7, v3, :cond_3

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    if-eq v7, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final AES()V
    .locals 1

    .line 63772
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    .line 63773
    return-void
.end method

.method public final AFG(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63774
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WY;->A00(I)I

    move-result v0

    .line 63775
    .local v0, "bytesSkipped":I
    if-nez v0, :cond_0

    .line 63776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A06:[B

    const/4 v2, 0x0

    array-length v0, v1

    .line 63777
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WY;->A02([BIIIZ)I

    move-result v0

    .line 63778
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WY;->A03(I)V

    .line 63779
    return v0
.end method

.method public final AFJ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63780
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WY;->A07(IZ)Z

    .line 63781
    return-void
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63782
    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/WY;->A01([BII)I

    move-result v0

    .line 63783
    .local v0, "bytesRead":I
    if-nez v0, :cond_0

    .line 63784
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/WY;->A02([BIIIZ)I

    move-result v0

    .line 63785
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WY;->A03(I)V

    .line 63786
    return v0
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/WY;->ADu([BIIZ)Z

    .line 63788
    return-void
.end method
