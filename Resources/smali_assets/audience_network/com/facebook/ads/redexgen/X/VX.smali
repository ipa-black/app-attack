.class public final Lcom/facebook/ads/redexgen/X/VX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Lcom/facebook/ads/redexgen/X/BY;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/BX;

.field public A03:Lcom/facebook/ads/redexgen/X/Bh;

.field public A04:Lcom/facebook/ads/redexgen/X/VW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59220
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4UYaWsXN1cGpTlRGsO1EVWVYv3mJMVWU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hbK8JAe0mxfaYRX1PJWZwY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "A0tXjRJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "osk77A0r9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0YYQ7Ec"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0ahCLR5uyRlwKx93emwBc8GJDT750HRT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YIO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "F1mMZvBQ8EiEftVGCLgPL0zcj9avMacR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VX;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VY;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VX;->A07:Lcom/facebook/ads/redexgen/X/BY;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VX;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

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

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VX;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x35t
        0x4et
        0x53t
        0x55t
        0x50t
        0x50t
        0x4ft
        0x52t
        0x54t
        0x45t
        0x44t
        0x0t
        0x4ft
        0x52t
        0x0t
        0x55t
        0x4et
        0x52t
        0x45t
        0x43t
        0x4ft
        0x47t
        0x4et
        0x49t
        0x5at
        0x45t
        0x44t
        0x0t
        0x57t
        0x41t
        0x56t
        0x0t
        0x48t
        0x45t
        0x41t
        0x44t
        0x45t
        0x52t
        0xet
        0x34t
        0x48t
        0x37t
        0x3ct
        0x42t
        0x2t
        0x45t
        0x34t
        0x4at
    .end array-data
.end method


# virtual methods
.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 2

    .line 59222
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VX;->A02:Lcom/facebook/ads/redexgen/X/BX;

    .line 59223
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A03:Lcom/facebook/ads/redexgen/X/Bh;

    .line 59224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    .line 59225
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 59226
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    move-object/from16 v1, p1

    if-nez v2, :cond_0

    .line 59228
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Cs;->A00(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/VW;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    .line 59229
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    if-eqz v2, :cond_6

    .line 59230
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 59231
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/VW;->A00()I

    move-result v8

    const v9, 0x8000

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    .line 59232
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/VW;->A03()I

    move-result v10

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    .line 59233
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/VW;->A04()I

    move-result v11

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    .line 59234
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/VW;->A02()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 59235
    const/16 v4, 0x27

    const/16 v3, 0x9

    const/16 v2, 0x71

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/VX;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v16}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    .line 59236
    .local v0, "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A03:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 59237
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/VW;->A01()I

    move-result v2

    iput v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    .line 59238
    :cond_0
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    sget-object v3, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v3, v2

    const/16 v2, 0x18

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x76

    if-eq v3, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/VX;->A06:[Ljava/lang/String;

    const-string v3, "XBd"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    const-string v3, "hS3DTCCH9"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/VW;->A07()Z

    move-result v2

    if-nez v2, :cond_2

    .line 59239
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/Cs;->A03(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/VW;)V

    .line 59240
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/VX;->A02:Lcom/facebook/ads/redexgen/X/BX;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 59241
    :cond_2
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/VX;->A03:Lcom/facebook/ads/redexgen/X/Bh;

    const v3, 0x8000

    iget v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    invoke-interface {v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Bh;->AEW(Lcom/facebook/ads/redexgen/X/BW;IZ)I

    move-result v6

    .line 59242
    .local v0, "bytesAppended":I
    const/4 v5, -0x1

    if-eq v6, v5, :cond_3

    .line 59243
    iget v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    .line 59244
    :cond_3
    iget v8, v0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    iget v2, v0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    div-int/2addr v8, v2

    .line 59245
    .local v2, "pendingFrames":I
    if-lez v8, :cond_4

    .line 59246
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/VX;->A04:Lcom/facebook/ads/redexgen/X/VW;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v3

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    int-to-long v1, v1

    sub-long/2addr v3, v1

    invoke-virtual {v7, v3, v4}, Lcom/facebook/ads/redexgen/X/VW;->A05(J)J

    move-result-wide v9

    .line 59247
    .local v3, "timeUs":J
    iget v12, v0, Lcom/facebook/ads/redexgen/X/VX;->A00:I

    mul-int/2addr v12, v8

    .line 59248
    .local v5, "size":I
    iget v1, v0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    sub-int/2addr v1, v12

    iput v1, v0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    .line 59249
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/VX;->A03:Lcom/facebook/ads/redexgen/X/Bh;

    const/4 v11, 0x1

    iget v13, v0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 59250
    .end local v3    # "timeUs":J
    .end local v5    # "size":I
    :cond_4
    if-ne v6, v5, :cond_5

    :goto_0
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 59251
    .end local v0    # "bytesAppended":I
    :cond_6
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VX;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final AEc(JJ)V
    .locals 1

    .line 59252
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:I

    .line 59253
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59254
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Cs;->A00(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/VW;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
