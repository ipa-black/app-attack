.class public final Lcom/facebook/ads/redexgen/X/Vk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Bh;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60027
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3GVDuA8wFVUyMgpUpbIewfrR9H99KrEk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JlICi14zqaUcthBIG11pWTw91wh2yVCw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SCc1nWfYKQsHAUfYf8T5wZndFViKre8j"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "glAeXwJzdtWksZ9B0aFClAzpFAfPstjY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MoUOfVVsEVomZ5Pq9PB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UtG2kZW99inEJ5Gw9pPEuhVI3SuCWANI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WpnQHVSEOc3lam6iocwMhSGypVEKzNDF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vk;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60029
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    .line 60030
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const-string v1, "8BWuaIrledIbOr1Vvmzlm7GxjPqtlOKX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vk;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x54t
        0x4et
        0x5et
        0x5ct
        0x4ft
        0x59t
        0x54t
        0x53t
        0x5at
        0x1dt
        0x54t
        0x53t
        0x4bt
        0x5ct
        0x51t
        0x54t
        0x59t
        0x1dt
        0x74t
        0x79t
        0xet
        0x1dt
        0x49t
        0x5ct
        0x5at
        0x16t
        0x3bt
        0x6ct
        0xdt
        0x3at
        0x3et
        0x3bt
        0x3at
        0x2dt
        0x2bt
        0x3at
        0x3at
        0x26t
        0x23t
        0x29t
        0x2bt
        0x3et
        0x23t
        0x25t
        0x24t
        0x65t
        0x23t
        0x2et
        0x79t
    .end array-data
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 8

    .line 60031
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    if-nez v0, :cond_0

    .line 60032
    return-void

    .line 60033
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v4

    .line 60034
    .local v0, "bytesAvailable":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    const/16 v5, 0xa

    if-ge v0, v5, :cond_5

    .line 60035
    rsub-int/lit8 v0, v0, 0xa

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 60036
    .local v1, "headerBytesAvailable":I
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 60037
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60038
    invoke-static {v3, v2, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60039
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    add-int/2addr v0, v6

    if-ne v0, v5, :cond_5

    .line 60040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60041
    const/16 v1, 0x49

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/16 v6, 0x44

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_3

    .line 60042
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const-string v1, "eZdoRYLyKv4toCemxkiKJA2d6NIzFwiE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "sPPG97pGznW8OkCUNxQD0xF7olrTR4ou"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    if-ne v6, v0, :cond_1

    const/16 v7, 0x33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    .line 60043
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const-string v1, "eu3l96gSDWZf4lrXAqzHcIk6PJ9QX6gD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_4

    .line 60044
    :cond_1
    :goto_0
    const/16 v2, 0x1a

    const/16 v1, 0x9

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_3

    .line 60045
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const-string v1, "G5eroEsu98sAd5xO02g5FkX9fDMbEAxT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    .line 60046
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A07:[Ljava/lang/String;

    const-string v1, "3RA5HWh0kmfEwFj0aBurDCdRc5WBxEPn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_4

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60047
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 60048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0D()I

    move-result v0

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    .line 60049
    .end local v1    # "headerBytesAvailable":I
    :cond_5
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60050
    .local v1, "bytesToWrite":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60051
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60052
    return-void
.end method

.method public final A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 6

    .line 60053
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A05()V

    .line 60054
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:Lcom/facebook/ads/redexgen/X/Bh;

    .line 60055
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:Lcom/facebook/ads/redexgen/X/Bh;

    .line 60056
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A04()Ljava/lang/String;

    move-result-object v4

    .line 60057
    const/4 v3, 0x0

    const/16 v2, 0x23

    const/16 v1, 0xf

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-static {v4, v1, v3, v0, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    .line 60058
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 60059
    return-void
.end method

.method public final ADM()V
    .locals 7

    .line 60060
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    if-eq v0, v4, :cond_1

    .line 60061
    :cond_0
    return-void

    .line 60062
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 60063
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    .line 60064
    return-void
.end method

.method public final ADN(JZ)V
    .locals 1

    .line 60065
    if-nez p3, :cond_0

    .line 60066
    return-void

    .line 60067
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    .line 60068
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:J

    .line 60069
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:I

    .line 60070
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:I

    .line 60071
    return-void
.end method

.method public final AEb()V
    .locals 1

    .line 60072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    .line 60073
    return-void
.end method
