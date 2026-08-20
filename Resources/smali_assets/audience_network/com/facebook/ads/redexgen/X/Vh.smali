.class public final Lcom/facebook/ads/redexgen/X/Vh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cq;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/Ho;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/Cb;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Hb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59713
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wYbCHe4PqE0rUTWdo8mFq0UBpfkRDoC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CuNoFwrXbx7Fup1Bnz4crpheboHEAq61"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "i4a35YUA6bJnEiUQjLdSeulU0LA5VC2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DQj4nZO33GsRRuNygGqDxWwIbU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NTzjfKAdqL5R4ni"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Zn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9Rh66LtnIoGSEkHARJ7O"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nCQ56kMXgmV4b9DPw80w9mtudgrGO1uA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vh;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cb;)V
    .locals 2

    .line 59714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59715
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0A:Lcom/facebook/ads/redexgen/X/Cb;

    .line 59716
    const/16 v0, 0xa

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    .line 59717
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:I

    .line 59718
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vh;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const-string v1, "tGST5WGrXasfnynKry2Y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "X7BCEDGkhqj2a0M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .locals 10

    .line 59719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A07(I)V

    .line 59720
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A04:J

    .line 59721
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A08:Z

    if-eqz v0, :cond_1

    .line 59722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v1, v0

    const/16 v9, 0x1e

    shl-long/2addr v1, v9

    .line 59724
    .local v3, "pts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 59726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 59728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59729
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A09:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A07:Z

    if-eqz v0, :cond_0

    .line 59730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v9

    .line 59732
    .local v0, "dts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 59734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 59736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A05:Lcom/facebook/ads/redexgen/X/Ho;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Ho;->A07(J)J

    .line 59738
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Vh;->A09:Z

    .line 59739
    .end local v0    # "dts":J
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A05:Lcom/facebook/ads/redexgen/X/Ho;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ho;->A07(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A04:J

    .line 59740
    .end local v3    # "pts":J
    :cond_1
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x89

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vh;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        0x28t
        0x2at
        0x2dt
        0x20t
        -0x25t
        0x1dt
        0x34t
        0x2ft
        0x20t
        0x2et
        -0x2ct
        -0x17t
        -0x9t
        -0x2at
        -0x17t
        -0x1bt
        -0x18t
        -0x17t
        -0xat
        -0xet
        0xbt
        0x2t
        0x15t
        0xdt
        0x2t
        0x0t
        0x11t
        0x2t
        0x1t
        -0x43t
        0x10t
        0x11t
        -0x2t
        0xft
        0x11t
        -0x43t
        0x0t
        0xct
        0x1t
        0x2t
        -0x43t
        0xdt
        0xft
        0x2t
        0x3t
        0x6t
        0x15t
        -0x29t
        -0x43t
        0x28t
        0x41t
        0x38t
        0x4bt
        0x43t
        0x38t
        0x36t
        0x47t
        0x38t
        0x37t
        -0xdt
        0x46t
        0x47t
        0x34t
        0x45t
        0x47t
        -0xdt
        0x3ct
        0x41t
        0x37t
        0x3ct
        0x36t
        0x34t
        0x47t
        0x42t
        0x45t
        -0xdt
        0x45t
        0x38t
        0x34t
        0x37t
        0x3ct
        0x41t
        0x3at
        -0xdt
        0x38t
        0x4bt
        0x47t
        0x38t
        0x41t
        0x37t
        0x38t
        0x37t
        -0xdt
        0x3bt
        0x38t
        0x34t
        0x37t
        0x38t
        0x45t
        -0x2t
        0x17t
        0xet
        0x21t
        0x19t
        0xet
        0xct
        0x1dt
        0xet
        0xdt
        -0x37t
        0x1ct
        0x1dt
        0xat
        0x1bt
        0x1dt
        -0x37t
        0x12t
        0x17t
        0xdt
        0x12t
        0xct
        0xat
        0x1dt
        0x18t
        0x1bt
        -0x1dt
        -0x37t
        0xet
        0x21t
        0x19t
        0xet
        0xct
        0x1dt
        0xet
        0xdt
        -0x37t
    .end array-data
.end method

.method private A03(I)V
    .locals 1

    .line 59741
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:I

    .line 59742
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    .line 59743
    return-void
.end method

.method private A04()Z
    .locals 7

    .line 59744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A07(I)V

    .line 59745
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v5

    .line 59746
    .local v0, "startCodePrefix":I
    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eq v5, v2, :cond_0

    .line 59747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    const/16 v1, 0x1e

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xb

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59748
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    .line 59749
    return v6

    .line 59750
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v5

    .line 59752
    .local v1, "packetLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A06:Z

    .line 59754
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A08:Z

    .line 59756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A07:Z

    .line 59757
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:I

    .line 59759
    if-nez v5, :cond_1

    .line 59760
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    .line 59761
    :goto_0
    return v2

    .line 59762
    :cond_1
    add-int/lit8 v0, v5, 0x6

    add-int/lit8 v1, v0, -0x9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    goto :goto_0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Hc;[BI)Z
    .locals 3

    .line 59763
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59764
    .local v0, "bytesToRead":I
    const/4 v1, 0x1

    if-gtz v2, :cond_0

    .line 59765
    return v1

    .line 59766
    :cond_0
    if-nez p2, :cond_2

    .line 59767
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 59768
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    .line 59769
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    if-ne v0, p3, :cond_1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 59770
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    goto :goto_0
.end method


# virtual methods
.method public final A4C(Lcom/facebook/ads/redexgen/X/Hc;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 59771
    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 59772
    iget v8, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:I

    if-eqz v8, :cond_0

    if-eq v8, v2, :cond_0

    const/16 v6, 0xb

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A00(III)Ljava/lang/String;

    move-result-object v7

    if-eq v8, v3, :cond_c

    if-eq v8, v4, :cond_a

    .line 59773
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Vh;->A03(I)V

    .line 59774
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_f

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const-string v1, "hj"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    if-lez v7, :cond_e

    .line 59775
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:I

    if-eqz v0, :cond_9

    const/4 v6, 0x0

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_2

    goto :goto_1

    .line 59776
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v1

    .line 59777
    .local v4, "readLength":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    if-ne v0, v5, :cond_5

    .line 59778
    .local v5, "padding":I
    :goto_2
    if-lez v6, :cond_3

    .line 59779
    sub-int/2addr v1, v6

    .line 59780
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0X(I)V

    .line 59781
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0A:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Cb;->A4B(Lcom/facebook/ads/redexgen/X/Hc;)V

    .line 59782
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    if-eq v0, v5, :cond_1

    .line 59783
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v6, v0

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 59784
    sget-object v6, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const-string v1, "CC"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    if-nez v0, :cond_1

    .line 59785
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0A:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->ADM()V

    .line 59786
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Vh;->A03(I)V

    goto :goto_1

    .line 59787
    :cond_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const-string v1, "LSiWMZuXq2ZkQJ8O9FVKXTUkrIS5d9oP"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "piT6qZLXrsL5nFXzA5eMWRbmPpryfyVW"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    if-nez v0, :cond_1

    goto :goto_3

    .line 59788
    :cond_5
    sub-int v6, v1, v0

    goto :goto_2

    .line 59789
    .end local v4    # "readLength":I
    .end local v5    # "padding":I
    :cond_6
    const/16 v1, 0xa

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59790
    .restart local v4    # "readLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hb;->A00:[B

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;->A05(Lcom/facebook/ads/redexgen/X/Hc;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:I

    .line 59791
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A05(Lcom/facebook/ads/redexgen/X/Hc;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59792
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vh;->A01()V

    .line 59793
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0A:Lcom/facebook/ads/redexgen/X/Cb;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A04:J

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Vh;->A06:Z

    invoke-interface {v7, v0, v1, v6}, Lcom/facebook/ads/redexgen/X/Cb;->ADN(JZ)V

    .line 59794
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Vh;->A03(I)V

    goto/16 :goto_1

    .line 59795
    .end local v4    # "readLength":I
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0B:Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hb;->A00:[B

    const/16 v0, 0x9

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A05(Lcom/facebook/ads/redexgen/X/Hc;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59796
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vh;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v6, 0x2

    :cond_8
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Vh;->A03(I)V

    goto/16 :goto_1

    .line 59797
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 59798
    goto/16 :goto_1

    .line 59799
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    if-eq v0, v5, :cond_b

    .line 59800
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x64

    const/16 v1, 0x25

    const/16 v0, 0x40

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A02:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59801
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0A:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->ADM()V

    goto/16 :goto_0

    .line 59802
    :cond_c
    const/16 v8, 0x32

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v6, v0

    const/4 v0, 0x7

    aget-object v6, v6, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    sget-object v6, Lcom/facebook/ads/redexgen/X/Vh;->A0D:[Ljava/lang/String;

    const-string v1, "JSMzt33XVYw0URvsfpTaW68w8McAQAga"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "8Usb8lvXttIgdfLbHt2n59rh1GP9ZAH0"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const/16 v1, 0x32

    const/16 v0, 0x6a

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/Vh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59803
    goto/16 :goto_0

    .line 59804
    :cond_e
    return-void

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8X(Lcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 1

    .line 59805
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A05:Lcom/facebook/ads/redexgen/X/Ho;

    .line 59806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0A:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Cb;->A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 59807
    return-void
.end method

.method public final AEb()V
    .locals 1

    .line 59808
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A03:I

    .line 59809
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:I

    .line 59810
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A09:Z

    .line 59811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A0A:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->AEb()V

    .line 59812
    return-void
.end method
