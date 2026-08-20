.class public final Lcom/facebook/ads/redexgen/X/CJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/C2;

.field public A08:Lcom/facebook/ads/redexgen/X/CI;

.field public A09:Lcom/facebook/ads/redexgen/X/Hc;

.field public A0A:Z

.field public A0B:Z

.field public A0C:[I

.field public A0D:[I

.field public A0E:[I

.field public A0F:[J

.field public A0G:[J

.field public A0H:[Z

.field public A0I:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 25756
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Hx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VutN6lGbTtI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qYQ0MvWUv8Y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S03PbS7CBB7Qa9LNqne809kWTfsCcOYT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wkl2QKty73uWRgng3ylrY2sBCsabW7qE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iu4lxNjBwDGgTbBIaWVT9T7j7cQi6zNN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "a5Fde8I7YqGVonU3ugZgHcMmcsmCDOtB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CJ;->A0J:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)J
    .locals 4

    .line 25758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0F:[J

    aget-wide v2, v0, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0C:[I

    aget v0, v0, p1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A01()V
    .locals 3

    .line 25759
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/CJ;->A02:I

    .line 25760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A06:J

    .line 25761
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0A:Z

    .line 25762
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0B:Z

    .line 25763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A08:Lcom/facebook/ads/redexgen/X/CI;

    .line 25764
    return-void
.end method

.method public final A02(I)V
    .locals 1

    .line 25765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 25766
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    .line 25767
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CJ;->A01:I

    .line 25768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0A:Z

    .line 25769
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0B:Z

    .line 25770
    return-void
.end method

.method public final A03(II)V
    .locals 4

    .line 25771
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CJ;->A02:I

    .line 25772
    iput p2, p0, Lcom/facebook/ads/redexgen/X/CJ;->A00:I

    .line 25773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0E:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_2

    .line 25774
    :cond_0
    new-array v3, p1, [J

    sget-object v1, Lcom/facebook/ads/redexgen/X/CJ;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/CJ;->A0J:[Ljava/lang/String;

    const-string v1, "ZgUWYZPBUUH4f5IflhoFXt9Z2beMZ7L4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "VeOPEMocQkhcG8xqDUtsqj4H6GWeaBG3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0G:[J

    .line 25775
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0E:[I

    .line 25776
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0D:[I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-ge v0, p2, :cond_5

    .line 25777
    :cond_3
    mul-int/lit8 v0, p2, 0x7d

    div-int/lit8 v3, v0, 0x64

    .line 25778
    .local v0, "tableSize":I
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0D:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/CJ;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    goto :goto_0

    .line 25779
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/CJ;->A0J:[Ljava/lang/String;

    const-string v1, "QhoZMJVE40X"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0C:[I

    .line 25780
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0F:[J

    .line 25781
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0I:[Z

    .line 25782
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0H:[Z

    .line 25783
    .end local v0    # "tableSize":I
    :cond_5
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/BW;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A01:I

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 25785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 25786
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0B:Z

    .line 25787
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 3

    .line 25788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A01:I

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 25789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 25790
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CJ;->A0B:Z

    .line 25791
    return-void
.end method
