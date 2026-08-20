.class public final Lcom/facebook/ads/redexgen/X/CN;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0B:[B

.field public static final A0C:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public final A09:[I

.field public final A0A:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 25874
    invoke-static {}, Lcom/facebook/ads/redexgen/X/CN;->A01()V

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/CN;->A0C:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25876
    const/16 v1, 0xff

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A09:[I

    .line 25877
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/CN;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CN;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        -0x6et
        -0x6et
        0x7et
        -0x55t
        -0x42t
        -0x4at
        -0x55t
        -0x57t
        -0x46t
        -0x55t
        -0x56t
        0x66t
        -0x6bt
        -0x53t
        -0x53t
        -0x67t
        0x66t
        -0x57t
        -0x59t
        -0x4at
        -0x46t
        -0x45t
        -0x48t
        -0x55t
        0x66t
        -0x4at
        -0x59t
        -0x46t
        -0x46t
        -0x55t
        -0x48t
        -0x4ct
        0x66t
        -0x59t
        -0x46t
        0x66t
        -0x58t
        -0x55t
        -0x53t
        -0x51t
        -0x4ct
        0x66t
        -0x4bt
        -0x54t
        0x66t
        -0x4at
        -0x59t
        -0x53t
        -0x55t
        -0x3ft
        -0x46t
        -0x41t
        -0x3ft
        -0x44t
        -0x44t
        -0x45t
        -0x42t
        -0x40t
        -0x4ft
        -0x50t
        0x6ct
        -0x52t
        -0x4bt
        -0x40t
        0x6ct
        -0x41t
        -0x40t
        -0x42t
        -0x4ft
        -0x53t
        -0x47t
        0x6ct
        -0x42t
        -0x4ft
        -0x3et
        -0x4bt
        -0x41t
        -0x4bt
        -0x45t
        -0x46t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 25878
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/CN;->A03:I

    .line 25879
    iput v2, p0, Lcom/facebook/ads/redexgen/X/CN;->A04:I

    .line 25880
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    .line 25881
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A08:J

    .line 25882
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A07:J

    .line 25883
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A06:J

    .line 25884
    iput v2, p0, Lcom/facebook/ads/redexgen/X/CN;->A02:I

    .line 25885
    iput v2, p0, Lcom/facebook/ads/redexgen/X/CN;->A01:I

    .line 25886
    iput v2, p0, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    .line 25887
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/BW;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0V()V

    .line 25889
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/CN;->A02()V

    .line 25890
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    .line 25891
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v6

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7K()J

    move-result-wide v0

    sub-long/2addr v6, v0

    const-wide/16 v4, 0x1b

    cmp-long v0, v6, v4

    if-ltz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 25892
    .local v0, "hasEnoughBytes":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/16 v4, 0x1b

    invoke-interface {p1, v0, v2, v4, v3}, Lcom/facebook/ads/redexgen/X/BW;->ADQ([BIIZ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 25893
    :cond_1
    if-eqz p2, :cond_3

    .line 25894
    return v2

    .line 25895
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 25896
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 25897
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v6

    sget v0, Lcom/facebook/ads/redexgen/X/CN;->A0C:I

    int-to-long v0, v0

    cmp-long v5, v6, v0

    if-eqz v5, :cond_6

    .line 25898
    if-eqz p2, :cond_5

    .line 25899
    return v2

    .line 25900
    :cond_5
    const/4 v2, 0x4

    const/16 v1, 0x2e

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CN;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25901
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A03:I

    .line 25902
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A03:I

    if-eqz v0, :cond_8

    .line 25903
    if-eqz p2, :cond_7

    .line 25904
    return v2

    .line 25905
    :cond_7
    const/16 v2, 0x32

    const/16 v1, 0x1f

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CN;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25906
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A04:I

    .line 25907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0J()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    .line 25908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0K()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A08:J

    .line 25909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0K()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A07:J

    .line 25910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0K()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A06:J

    .line 25911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A02:I

    .line 25912
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A02:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A01:I

    .line 25913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0V()V

    .line 25914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A02:I

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 25915
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A02:I

    if-ge v2, v0, :cond_9

    .line 25916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CN;->A09:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    aput v0, v1, v2

    .line 25917
    iget v1, p0, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CN;->A09:[I

    aget v0, v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    .line 25918
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25919
    .end local v1    # "i":I
    :cond_9
    return v3
.end method
