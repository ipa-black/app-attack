.class public final Lcom/facebook/ads/redexgen/X/Hd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 37144
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BtHKr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GAfuq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1TcIbYyYGpE6Ekv4glvvfZz9bC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "q9fmd3d0ImW5Daxca"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ooOXUvpeMSptobOLnq6qd7gNdq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VwsWXVZM3brBJlmy9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pSziVAe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zUHU2CyO73eexnRwL2LOOWJW4Jr0bcWv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 37145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37146
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Hd;->A08([BII)V

    .line 37147
    return-void
.end method

.method private A00()I
    .locals 3

    .line 37148
    const/4 v2, 0x0

    .line 37149
    .local v0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37151
    :cond_0
    const/4 v0, 0x1

    shl-int v1, v0, v2

    sub-int/2addr v1, v0

    if-lez v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A01()V
    .locals 5

    .line 37152
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    if-ltz v4, :cond_1

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const-string v1, "f06qvbC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "HuIz9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-lt v4, v3, :cond_0

    if-ne v4, v3, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 37153
    return-void

    .line 37154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(I)Z
    .locals 5

    .line 37155
    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    if-ge p1, v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    aget-byte v4, v3, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const-string v1, "Jod3dkhqFQ8qWj2s5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "0zxF2BZpdiUX5xaGz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x3

    if-ne v4, v0, :cond_0

    add-int/lit8 v0, p1, -0x2

    aget-byte v0, v3, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    aget-byte v3, v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const-string v1, "lQKXp2Z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Kosug"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A03()I
    .locals 3

    .line 37156
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A00()I

    move-result v2

    .line 37157
    .local v0, "codeNum":I
    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v0, v2, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final A04()I
    .locals 1

    .line 37158
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A00()I

    move-result v0

    return v0
.end method

.method public final A05(I)I
    .locals 9

    .line 37159
    const/4 v8, 0x0

    .line 37160
    .local v0, "returnValue":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37161
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    const/4 v7, 0x2

    const/16 v4, 0x8

    if-le v5, v4, :cond_1

    .line 37162
    add-int/lit8 v0, v5, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    shl-int/2addr v1, v0

    or-int/2addr v8, v1

    .line 37164
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    add-int/2addr v2, v7

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    goto :goto_1

    .line 37165
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    aget-byte v0, v0, v3

    and-int/lit16 v6, v0, 0xff

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const-string v1, "CI85ryy9UuGcWp4q0bXmx78DrLL4QG6i"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    rsub-int/lit8 v0, v5, 0x8

    shr-int/2addr v6, v0

    or-int/2addr v8, v6

    .line 37166
    const/4 v1, -0x1

    rsub-int/lit8 v0, p1, 0x20

    ushr-int/2addr v1, v0

    and-int/2addr v8, v1

    .line 37167
    if-ne v5, v4, :cond_3

    .line 37168
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37169
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    add-int/2addr v3, v7

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37170
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A01()V

    .line 37171
    return v8

    .line 37172
    :cond_4
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public final A06()V
    .locals 3

    .line 37173
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_1

    .line 37174
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37175
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37176
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A01()V

    .line 37177
    return-void
.end method

.method public final A07(I)V
    .locals 6

    .line 37178
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37179
    .local v0, "oldByteOffset":I
    div-int/lit8 v2, p1, 0x8

    .line 37180
    .local v1, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37181
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37182
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    const/4 v0, 0x7

    if-le v5, v0, :cond_1

    .line 37183
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    add-int/lit8 v4, v0, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hd;->A04:[Ljava/lang/String;

    const-string v1, "WKnUhbHg5PXpVOXLjQbslPOixC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "5elOCNAU3UTje1WUqtoqjArHkZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37184
    add-int/lit8 v0, v5, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37185
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .local v2, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    if-gt v1, v0, :cond_3

    .line 37186
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Hd;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37187
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37188
    add-int/lit8 v1, v1, 0x2

    .line 37189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37190
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A01()V

    .line 37191
    return-void
.end method

.method public final A08([BII)V
    .locals 1

    .line 37192
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    .line 37193
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37194
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    .line 37195
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37196
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A01()V

    .line 37197
    return-void
.end method

.method public final A09()Z
    .locals 7

    .line 37198
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37199
    .local v0, "initialByteOffset":I
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37200
    .local v1, "initialBitOffset":I
    const/4 v4, 0x0

    .line 37201
    .local v2, "leadingZeros":I
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37202
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37203
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v3, v0, :cond_2

    const/4 v0, 0x1

    .line 37204
    .local v3, "hitLimit":Z
    :goto_1
    iput v6, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37205
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    .line 37206
    if-nez v0, :cond_1

    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A0B(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 37207
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final A0A()Z
    .locals 3

    .line 37208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    aget-byte v2, v1, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    const/16 v0, 0x80

    shr-int/2addr v0, v1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 37209
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 37210
    return v0

    .line 37211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(I)Z
    .locals 5

    .line 37212
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    .line 37213
    .local v0, "oldByteOffset":I
    div-int/lit8 v0, p1, 0x8

    .line 37214
    .local v1, "numBytes":I
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Hd;->A02:I

    add-int/2addr v4, v0

    .line 37215
    .local v2, "newByteOffset":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hd;->A00:I

    add-int/2addr v3, p1

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr v3, v0

    .line 37216
    .local v3, "newBitOffset":I
    const/4 v0, 0x7

    if-le v3, v0, :cond_0

    .line 37217
    add-int/lit8 v4, v4, 0x1

    .line 37218
    add-int/lit8 v3, v3, -0x8

    .line 37219
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v1, 0x1

    if-gt v2, v4, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    if-ge v4, v0, :cond_2

    .line 37220
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37221
    add-int/lit8 v4, v4, 0x1

    .line 37222
    add-int/lit8 v2, v2, 0x2

    .line 37223
    :cond_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 37224
    .end local v4    # "i":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hd;->A01:I

    if-lt v4, v0, :cond_3

    if-ne v4, v0, :cond_4

    if-nez v3, :cond_4

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
