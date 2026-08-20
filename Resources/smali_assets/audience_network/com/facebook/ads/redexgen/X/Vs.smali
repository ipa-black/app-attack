.class public final Lcom/facebook/ads/redexgen/X/Vs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/BY;

.field public static final A07:I


# instance fields
.field public A00:Z

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/Vr;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60760
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zdP8mq1V4qx9ZCdsfAD4NG7cLFVpQAAe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "koAkuIv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fyRTvmHGGGsRl9BV6D3JToZwd0QymLEV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ol6FmQC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pWzJ4KWOtVeOprDRKRooJjLfCIz1i7Yl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FaGWZpOEFJ3DEiDU22ljd64Ld5pUV9HD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "txEKQBUTk3v9kOkzxdvVTnLo1IME9gDG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VQ1knBpCfCAoSCLl3kVfN2N5wBdN5LBp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vs;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vs;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vs;->A06:Lcom/facebook/ads/redexgen/X/BY;

    .line 60761
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vs;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60762
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vs;-><init>(J)V

    .line 60763
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 60764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60765
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vs;->A01:J

    .line 60766
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vr;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vr;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A02:Lcom/facebook/ads/redexgen/X/Vr;

    .line 60767
    const/16 v1, 0xc8

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    .line 60768
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vs;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vs;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vs;->A05:[Ljava/lang/String;

    const-string v1, "6nR4pRT1Z5KTQHbqvhpghrBhlvQkSoKV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "SkXTa4uQceGhkSQtr6wVij7rDC15CMq5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

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

.method public static A01()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vs;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x4ft
        0x38t
    .end array-data
.end method


# virtual methods
.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 4

    .line 60769
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vs;->A02:Lcom/facebook/ads/redexgen/X/Vr;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Cp;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/Vr;->A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 60770
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 60771
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WU;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 60772
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v4, 0x0

    const/16 v0, 0xc8

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/BW;->read([BII)I

    move-result v1

    .line 60774
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 60775
    return v0

    .line 60776
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0X(I)V

    .line 60778
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A00:Z

    if-nez v0, :cond_1

    .line 60779
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vs;->A02:Lcom/facebook/ads/redexgen/X/Vr;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vs;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Vr;->ADN(JZ)V

    .line 60780
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A00:Z

    .line 60781
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vs;->A02:Lcom/facebook/ads/redexgen/X/Vr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vr;->A4B(Lcom/facebook/ads/redexgen/X/Hc;)V

    .line 60782
    return v4
.end method

.method public final AEc(JJ)V
    .locals 1

    .line 60783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A00:Z

    .line 60784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vs;->A02:Lcom/facebook/ads/redexgen/X/Vr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vr;->AEb()V

    .line 60785
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60786
    const/16 v2, 0xa

    new-instance v5, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    .line 60787
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/Hc;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    new-instance v4, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([B)V

    .line 60788
    .local v2, "scratchBits":Lcom/facebook/ads/redexgen/X/Hb;
    const/4 v3, 0x0

    .line 60789
    .local v3, "startPosition":I
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v8, 0x0

    invoke-interface {p1, v0, v8, v2}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 60790
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60791
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Vs;->A07:I

    if-eq v1, v0, :cond_4

    .line 60792
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 60793
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 60794
    move v7, v3

    .line 60795
    .local v1, "headerPosition":I
    const/4 v6, 0x0

    .line 60796
    .local v4, "validFramesSize":I
    const/4 v2, 0x0

    .line 60797
    .local v6, "validFramesCount":I
    :goto_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v8, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 60798
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60799
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    .line 60800
    .local v7, "syncBytes":I
    const v1, 0xfff6

    and-int/2addr v1, v0

    const v0, 0xfff0

    if-eq v1, v0, :cond_1

    .line 60801
    const/4 v2, 0x0

    .line 60802
    const/4 v6, 0x0

    .line 60803
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 60804
    add-int/lit8 v7, v7, 0x1

    sub-int v1, v7, v3

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 60805
    return v8

    .line 60806
    :cond_0
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    goto :goto_1

    .line 60807
    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x4

    if-lt v2, v1, :cond_2

    const/16 v0, 0xbc

    if-le v6, v0, :cond_2

    .line 60808
    const/4 v0, 0x1

    return v0

    .line 60809
    :cond_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v8, v1}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 60810
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A07(I)V

    .line 60811
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 60812
    .local v8, "frameSize":I
    const/4 v0, 0x6

    if-gt v1, v0, :cond_3

    .line 60813
    return v8

    .line 60814
    :cond_3
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 60815
    add-int/2addr v6, v1

    goto :goto_1

    .line 60816
    .end local v1    # "headerPosition":I
    .end local v4    # "validFramesSize":I
    .end local v6    # "validFramesCount":I
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 60817
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0D()I

    move-result v1

    .line 60818
    .local v4, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v3, v0

    .line 60819
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 60820
    .end local v4    # "length":I
    goto :goto_0
.end method
