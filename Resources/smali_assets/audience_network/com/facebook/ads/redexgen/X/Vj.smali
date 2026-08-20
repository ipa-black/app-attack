.class public final Lcom/facebook/ads/redexgen/X/Vj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A0D:Lcom/facebook/ads/redexgen/X/Bh;

.field public A0E:Ljava/lang/String;

.field public A0F:Z

.field public A0G:Z

.field public final A0H:Lcom/facebook/ads/redexgen/X/Hb;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0J:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59893
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UXkay4rUGskktYzxNvudWKkCsEVxw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TbZCK2AobFbud3dzlhL4ME6xz6dWV35u"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g54hQOaX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Hzwenjp7P2fY81mJ8QBm2GDgQOuz90wV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pL9ldBQtoqrc20elRWolxWe4zjdgoW6T"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TPLjBFOallz6251M1W6TB1HqEI4wd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DLwQdeQQFfiBx7iMVYuUh1sumwfdr4oM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "y7d3scFL40rvPqI5TaUsSswOsLgzDZPi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vj;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59895
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0J:Ljava/lang/String;

    .line 59896
    const/16 v1, 0x400

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    .line 59897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0H:Lcom/facebook/ads/redexgen/X/Hb;

    .line 59898
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Hb;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 59899
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hb;->A01()I

    move-result v2

    .line 59900
    .local v0, "bitsLeft":I
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/HH;->A02(Lcom/facebook/ads/redexgen/X/Hb;Z)Landroid/util/Pair;

    move-result-object v1

    .line 59901
    .local v1, "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A05:I

    .line 59902
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A02:I

    .line 59903
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hb;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Hb;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 59904
    const/4 v2, 0x0

    .line 59905
    .local v0, "muxSlotLengthBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A03:I

    if-nez v0, :cond_1

    .line 59906
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 59907
    .local v1, "tmp":I
    add-int/2addr v2, v1

    .line 59908
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 59909
    return v2

    .line 59910
    .end local v1    # "tmp":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Hb;)J
    .locals 1

    .line 59911
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 59912
    .local v0, "bytesForValue":I
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vj;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const-string v1, "y88DdvbFX6MPRa9z5ZeTPeJlbkGd2RA6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "7eDKdIkFThzm8wa04NY5bFVXWVarNGHW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x70

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vj;->A0K:[B

    return-void

    :array_0
    .array-data 1
        0x39t
        0x2dt
        0x3ct
        0x31t
        0x37t
        0x77t
        0x35t
        0x28t
        0x6ct
        0x39t
        0x75t
        0x34t
        0x39t
        0x2ct
        0x35t
    .end array-data
.end method

.method private A05(I)V
    .locals 2

    .line 59913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 59914
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0H:Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0B([B)V

    .line 59915
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/Hb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 59916
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    .line 59917
    .local v0, "useSameStreamMux":Z
    if-nez v0, :cond_1

    .line 59918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0G:Z

    .line 59919
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vj;->A08(Lcom/facebook/ads/redexgen/X/Hb;)V

    .line 59920
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vj;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59921
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0G:Z

    if-nez v0, :cond_0

    .line 59922
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const-string v1, "yEjpzXBGbjL6zW81s4nwg5Kx41FgkglX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 59923
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A04:I

    if-nez v0, :cond_4

    .line 59924
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vj;->A01(Lcom/facebook/ads/redexgen/X/Hb;)I

    move-result v0

    .line 59925
    .local v1, "muxSlotLengthBytes":I
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Vj;->A09(Lcom/facebook/ads/redexgen/X/Hb;I)V

    .line 59926
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0F:Z

    if-eqz v0, :cond_3

    .line 59927
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A09:J

    long-to-int v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59928
    .end local v1    # "muxSlotLengthBytes":I
    :cond_3
    return-void

    .line 59929
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>()V

    throw v0

    .line 59930
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>()V

    throw v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Hb;)V
    .locals 5

    .line 59931
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A03:I

    .line 59932
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vj;->A03:I

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    if-eq v3, v2, :cond_2

    const/4 v1, 0x6

    if-eq v3, v4, :cond_1

    const/4 v0, 0x4

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-eq v3, v0, :cond_1

    if-eq v3, v1, :cond_0

    const/4 v0, 0x7

    if-eq v3, v0, :cond_0

    .line 59933
    :goto_0
    return-void

    .line 59934
    :cond_0
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto :goto_0

    .line 59935
    :cond_1
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59936
    goto :goto_0

    .line 59937
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59938
    goto :goto_0

    .line 59939
    :cond_3
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const-string v1, "qJ9xjuWp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59940
    goto :goto_0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Hb;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 59941
    move-object/from16 v4, p0

    move-object v4, v4

    const/4 v3, 0x1

    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 59942
    .local v3, "audioMuxVersion":I
    const/4 v7, 0x0

    if-ne v2, v3, :cond_6

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    :goto_0
    iput v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A00:I

    .line 59943
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A00:I

    if-nez v0, :cond_9

    .line 59944
    if-ne v2, v3, :cond_0

    .line 59945
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Vj;->A02(Lcom/facebook/ads/redexgen/X/Hb;)J

    .line 59946
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59947
    const/4 v0, 0x6

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A04:I

    .line 59948
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 59949
    .local v5, "numProgram":I
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 59950
    .local v6, "numLayer":I
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 59951
    const/16 v6, 0x8

    if-nez v2, :cond_5

    .line 59952
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hb;->A03()I

    move-result v0

    .line 59953
    .local v8, "startPosition":I
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Vj;->A00(Lcom/facebook/ads/redexgen/X/Hb;)I

    move-result v1

    .line 59954
    .local v9, "readBits":I
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A07(I)V

    .line 59955
    add-int/lit8 v0, v1, 0x7

    div-int/2addr v0, v6

    new-array v0, v0, [B

    .line 59956
    .local v10, "initData":[B
    invoke-virtual {v5, v0, v7, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A0D([BII)V

    .line 59957
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Vj;->A0E:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v4, Lcom/facebook/ads/redexgen/X/Vj;->A02:I

    iget v14, v4, Lcom/facebook/ads/redexgen/X/Vj;->A05:I

    .line 59958
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/Vj;->A0J:Ljava/lang/String;

    .line 59959
    const/4 v6, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x28

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Vj;->A03(III)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v7

    invoke-static/range {v8 .. v18}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v8

    .line 59960
    .local v4, "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A0C:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {v8, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59961
    iput-object v8, v4, Lcom/facebook/ads/redexgen/X/Vj;->A0C:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 59962
    const-wide/32 v6, 0x3d090000

    iget v0, v8, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v6, v0

    iput-wide v6, v4, Lcom/facebook/ads/redexgen/X/Vj;->A0A:J

    .line 59963
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A0D:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 59964
    .end local v4    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .end local v7
    :cond_1
    :goto_1
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Vj;->A07(Lcom/facebook/ads/redexgen/X/Hb;)V

    .line 59965
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A0F:Z

    .line 59966
    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A09:J

    .line 59967
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A0F:Z

    if-eqz v0, :cond_2

    .line 59968
    if-ne v2, v3, :cond_4

    .line 59969
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Vj;->A02(Lcom/facebook/ads/redexgen/X/Hb;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Vj;->A09:J

    .line 59970
    .end local v2
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    .line 59971
    .local v2, "crcCheckPresent":Z
    if-eqz v0, :cond_3

    .line 59972
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59973
    .end local v2    # "crcCheckPresent":Z
    .end local v5    # "numProgram":I
    .end local v6    # "numLayer":I
    :cond_3
    return-void

    .line 59974
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v6

    .line 59975
    .local v2, "otherDataLenEsc":Z
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Vj;->A09:J

    const/16 v0, 0x8

    shl-long/2addr v2, v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/Vj;->A09:J

    .line 59976
    if-nez v6, :cond_4

    goto :goto_2

    .line 59977
    :cond_5
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Vj;->A02(Lcom/facebook/ads/redexgen/X/Hb;)J

    move-result-wide v0

    long-to-int v6, v0

    .line 59978
    .local v4, "ascLen":I
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Vj;->A00(Lcom/facebook/ads/redexgen/X/Hb;)I

    move-result v0

    .line 59979
    .local v7, "bitsRead":I
    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto :goto_1

    .line 59980
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 59981
    .restart local v5    # "numProgram":I
    .restart local v6    # "numLayer":I
    :cond_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>()V

    throw v0

    .line 59982
    .end local v5    # "numProgram":I
    .end local v6    # "numLayer":I
    :cond_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>()V

    throw v0

    .line 59983
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>()V

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Hb;I)V
    .locals 8

    .line 59984
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hb;->A03()I

    move-result v2

    .line 59985
    .local v0, "bitPosition":I
    and-int/lit8 v0, v2, 0x7

    move v5, p2

    if-nez v0, :cond_0

    .line 59986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    shr-int/lit8 v0, v2, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59987
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0D:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 59988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0D:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0B:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 59989
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0B:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0A:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0B:J

    .line 59990
    return-void

    .line 59991
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    mul-int/lit8 v0, v5, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0D([BII)V

    .line 59992
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const-string v1, "hISKdmFcBvkt3UkKbTRUxOfzbLN5RWYH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "PVNedBTwWz01jOulB5OdqyWGI6cUIeHW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 59993
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const-string v1, "OUH24t4ef0Bd1TNZZrzghovIx2sIzWi9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "WHKixNlsxExZUks5bFrxsUMqOnC83dmQ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lez v3, :cond_a

    .line 59994
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A08:I

    const/16 v5, 0x56

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_6

    const/4 v5, 0x3

    if-eq v0, v3, :cond_3

    if-eq v0, v5, :cond_2

    goto :goto_0

    .line 59995
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59996
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0H:Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hb;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59997
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:I

    .line 59998
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A06:I

    if-ne v1, v0, :cond_0

    .line 59999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0H:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A07(I)V

    .line 60000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0H:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vj;->A06(Lcom/facebook/ads/redexgen/X/Hb;)V

    .line 60001
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vj;->A08:I

    goto :goto_0

    .line 60002
    .end local v0    # "bytesToRead":I
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A07:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A06:I

    .line 60003
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0I:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    array-length v0, v0

    if-le v1, v0, :cond_5

    .line 60004
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vj;->A06:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const-string v1, "GLemk9OP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Vj;->A05(I)V

    .line 60005
    :cond_5
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vj;->A01:I

    .line 60006
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Vj;->A08:I

    .line 60007
    goto/16 :goto_0

    .line 60008
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v2

    .line 60009
    .local v0, "secondByte":I
    and-int/lit16 v1, v2, 0xe0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_8

    .line 60010
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Vj;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    .line 60011
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const-string v1, "GS3bIWmA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vj;->A08:I

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vj;->A0L:[Ljava/lang/String;

    const-string v1, "lkshyeX1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vj;->A08:I

    goto/16 :goto_0

    .line 60012
    :cond_8
    if-eq v2, v5, :cond_0

    .line 60013
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vj;->A08:I

    goto/16 :goto_0

    .line 60014
    .end local v0    # "secondByte":I
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 60015
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A08:I

    goto/16 :goto_0

    .line 60016
    :cond_a
    return-void
.end method

.method public final A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 2

    .line 60017
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A05()V

    .line 60018
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0D:Lcom/facebook/ads/redexgen/X/Bh;

    .line 60019
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0E:Ljava/lang/String;

    .line 60020
    return-void
.end method

.method public final ADM()V
    .locals 0

    .line 60021
    return-void
.end method

.method public final ADN(JZ)V
    .locals 0

    .line 60022
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0B:J

    .line 60023
    return-void
.end method

.method public final AEb()V
    .locals 1

    .line 60024
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A08:I

    .line 60025
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vj;->A0G:Z

    .line 60026
    return-void
.end method
