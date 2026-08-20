.class public final Lcom/facebook/ads/redexgen/X/Vx;
.super Lcom/facebook/ads/redexgen/X/CR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/CT;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/CT;

.field public A02:Lcom/facebook/ads/redexgen/X/CV;

.field public A03:Lcom/facebook/ads/redexgen/X/CX;

.field public A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60944
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yJHQcBl4f4L"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "G0ieIp3rn9VMbRQq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FaSr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "diNTGhkPk6T4rZ0cbtlCtFUtzgnoDDOW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZsfK02RsUHO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uQbwEIiYvgO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fIpYaZEOmsgiiOCz2AK4PDqwDhI8GLBw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "t90Xt1PXy7A3GvR50K3KPdbeyD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vx;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60945
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CR;-><init>()V

    return-void
.end method

.method public static A00(BII)I
    .locals 2

    .line 60946
    shr-int/2addr p0, p2

    rsub-int/lit8 v1, p1, 0x8

    const/16 v0, 0xff

    ushr-int/2addr v0, v1

    and-int/2addr p0, v0

    return p0
.end method

.method public static A01(BLcom/facebook/ads/redexgen/X/CT;)I
    .locals 2

    .line 60947
    iget v1, p1, Lcom/facebook/ads/redexgen/X/CT;->A00:I

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vx;->A00(BII)I

    move-result v1

    .line 60948
    .local v0, "modeNumber":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/CT;->A04:[Lcom/facebook/ads/redexgen/X/CW;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/CW;->A03:Z

    if-nez v0, :cond_0

    .line 60949
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CX;->A03:I

    .line 60950
    .local v1, "currentBlockSize":I
    .restart local v1    # "currentBlockSize":I
    :goto_0
    return v0

    .line 60951
    .end local v1    # "currentBlockSize":I
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CX;->A04:I

    goto :goto_0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/CT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Lcom/facebook/ads/redexgen/X/CX;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60953
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/CY;->A04(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/CX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Lcom/facebook/ads/redexgen/X/CX;

    .line 60954
    return-object v1

    .line 60955
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:Lcom/facebook/ads/redexgen/X/CV;

    if-nez v0, :cond_1

    .line 60956
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/CY;->A03(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/CV;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:Lcom/facebook/ads/redexgen/X/CV;

    .line 60957
    return-object v1

    .line 60958
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    new-array v3, v0, [B

    .line 60959
    .local v0, "setupHeaderData":[B
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v1

    const/4 v0, 0x0

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Lcom/facebook/ads/redexgen/X/CX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CX;->A05:I

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/CY;->A0C(Lcom/facebook/ads/redexgen/X/Hc;I)[Lcom/facebook/ads/redexgen/X/CW;

    move-result-object v4

    .line 60961
    .local p1, "modes":[Lcom/facebook/ads/redexgen/X/CW;
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CY;->A00(I)I

    move-result v5

    .line 60962
    .local p2, "iLogModes":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/CT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Lcom/facebook/ads/redexgen/X/CX;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:Lcom/facebook/ads/redexgen/X/CV;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/CT;-><init>(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CV;[B[Lcom/facebook/ads/redexgen/X/CW;I)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vx;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vx;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x4ct
        0x5dt
        0x50t
        0x56t
        0x16t
        0x4ft
        0x56t
        0x4bt
        0x5bt
        0x50t
        0x4at
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hc;J)V
    .locals 7

    .line 60963
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0X(I)V

    .line 60964
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    add-int/lit8 v1, v0, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 60965
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    add-int/lit8 v1, v0, -0x3

    const/16 v0, 0x8

    ushr-long v4, p1, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 60966
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v0, 0x10

    ushr-long v4, p1, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 60967
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v0, 0x18

    ushr-long/2addr p1, v0

    and-long/2addr v2, p1

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    .line 60968
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Hc;)Z
    .locals 1

    .line 60969
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/facebook/ads/redexgen/X/CY;->A0A(ILcom/facebook/ads/redexgen/X/Hc;Z)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9Y; {:try_start_0 .. :try_end_0} :catch_0

    .line 60970
    .local v0, "e":Lcom/facebook/ads/redexgen/X/9Y;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/Hc;)J
    .locals 5

    .line 60971
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v4, 0x0

    aget-byte v0, v0, v4

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 60972
    const-wide/16 v0, -0x1

    return-wide v0

    .line 60973
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    aget-byte v1, v0, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vx;->A01(BLcom/facebook/ads/redexgen/X/CT;)I

    move-result v3

    .line 60974
    .local v0, "packetBlockSize":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    add-int/2addr v0, v3

    div-int/lit8 v4, v0, 0x4

    .line 60975
    .local v1, "samplesInPacket":I
    :cond_1
    int-to-long v0, v4

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Vx;->A05(Lcom/facebook/ads/redexgen/X/Hc;J)V

    .line 60976
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vx;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2

    .line 60977
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vx;->A06:[Ljava/lang/String;

    const-string v1, "lV1SPFBYbG5lxAnFlWta4jj5erMHhp00"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "grWENQhpkSsLY54DCH6OLJaVWIdWM4Dq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 60978
    int-to-long v0, v4

    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08(J)V
    .locals 4

    .line 60979
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CR;->A08(J)V

    .line 60980
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Z

    .line 60981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Lcom/facebook/ads/redexgen/X/CX;

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/CX;->A03:I

    :cond_0
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 60982
    return-void

    .line 60983
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A09(Z)V
    .locals 1

    .line 60984
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/CR;->A09(Z)V

    .line 60985
    if-eqz p1, :cond_0

    .line 60986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    .line 60987
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A03:Lcom/facebook/ads/redexgen/X/CX;

    .line 60988
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A02:Lcom/facebook/ads/redexgen/X/CV;

    .line 60989
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:I

    .line 60990
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A04:Z

    .line 60991
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Hc;JLcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60992
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    if-eqz v0, :cond_0

    .line 60993
    const/4 v0, 0x0

    return v0

    .line 60994
    :cond_0
    move-object/from16 v0, p1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vx;->A02(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/CT;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    .line 60995
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 60996
    return v3

    .line 60997
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 60998
    .local v1, "codecInitialisationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CX;->A09:[B

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60999
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CT;->A03:[B

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61000
    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CX;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/CX;->A02:I

    const/4 v8, -0x1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CX;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/CX;->A05:I

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Vx;->A01:Lcom/facebook/ads/redexgen/X/CT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CX;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/CX;->A06:J

    long-to-int v10, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 61001
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vx;->A03(III)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v4 .. v14}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/CQ;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 61002
    return v3
.end method
