.class public final Lcom/facebook/ads/redexgen/X/Yg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3t;,
        Lcom/facebook/ads/redexgen/X/3u;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/2k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2k<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/3t;

.field public final A03:Lcom/facebook/ads/redexgen/X/4I;

.field public final A04:Ljava/lang/Runnable;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 69151
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X1JWoRd1RTsi5LXg3YfkE890Z0SkAp6s"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8cHG76lMVFwKxBGRg2kgut24eHhxfbd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "G9TzZa55JFGh4eGgvGtqHGY1m3qrW6LM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "T7A4lgHZzGr7V1uQcw7LfDSO4lerGRH7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wT7nveBXif1G6UL4LkiEJi9kfhK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XR1Jqmc9zxsTs7lfyBsyi3NvUHLKhP3K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pVA6ZWYUVwE4UScIoRBBosOqE3FsfWwK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nWmw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yg;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3t;)V
    .locals 1

    .line 69152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Yg;-><init>(Lcom/facebook/ads/redexgen/X/3t;Z)V

    .line 69153
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3t;Z)V
    .locals 2

    .line 69154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69155
    const/16 v1, 0x1e

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Yw;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A01:Lcom/facebook/ads/redexgen/X/2k;

    .line 69156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    .line 69157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    .line 69158
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:I

    .line 69159
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    .line 69160
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Yg;->A07:Z

    .line 69161
    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4I;-><init>(Lcom/facebook/ads/redexgen/X/4H;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A03:Lcom/facebook/ads/redexgen/X/4I;

    .line 69162
    return-void
.end method

.method private A00(II)I
    .locals 6

    .line 69163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 69164
    .local v0, "count":I
    add-int/lit8 v3, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x8

    const/4 v1, 0x1

    if-ltz v3, :cond_e

    .line 69165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/3u;

    .line 69166
    .local v4, "postponed":Lcom/facebook/ads/redexgen/X/3u;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v5, 0x2

    if-ne v0, v4, :cond_9

    .line 69167
    iget v4, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-ge v4, v0, :cond_8

    .line 69168
    iget v4, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 69169
    .local v2, "start":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 69170
    .local v5, "end":I
    .restart local v5    # "end":I
    :goto_1
    if-lt p1, v4, :cond_6

    if-gt p1, v0, :cond_6

    .line 69171
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ne v4, v0, :cond_3

    .line 69172
    if-ne p2, v1, :cond_2

    .line 69173
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 69174
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 69175
    .end local v4    # "postponed":Lcom/facebook/ads/redexgen/X/3u;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 69176
    :cond_2
    if-ne p2, v5, :cond_0

    .line 69177
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    goto :goto_2

    .line 69178
    :cond_3
    if-ne p2, v1, :cond_5

    .line 69179
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 69180
    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 69181
    :cond_5
    if-ne p2, v5, :cond_4

    .line 69182
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    goto :goto_4

    .line 69183
    :cond_6
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ge p1, v0, :cond_1

    .line 69184
    if-ne p2, v1, :cond_7

    .line 69185
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 69186
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    goto :goto_3

    .line 69187
    :cond_7
    if-ne p2, v5, :cond_1

    .line 69188
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 69189
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    goto :goto_3

    .line 69190
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_8
    iget v4, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 69191
    .restart local v2    # "start":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    goto :goto_1

    .line 69192
    :cond_9
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-gt v0, p1, :cond_c

    .line 69193
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    if-ne v0, v1, :cond_b

    .line 69194
    iget v4, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "N0sU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sub-int/2addr p1, v4

    goto :goto_3

    .line 69195
    :cond_b
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    if-ne v0, v5, :cond_1

    .line 69196
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr p1, v0

    goto :goto_3

    .line 69197
    :cond_c
    if-ne p2, v1, :cond_d

    .line 69198
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    goto :goto_3

    .line 69199
    :cond_d
    if-ne p2, v5, :cond_1

    .line 69200
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    goto :goto_3

    .line 69201
    .end local v1    # "i":I
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .restart local v1    # "i":I
    :goto_5
    if-ltz v3, :cond_12

    .line 69202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/3u;

    .line 69203
    .local v3, "op":Lcom/facebook/ads/redexgen/X/3u;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    if-ne v0, v4, :cond_11

    .line 69204
    iget v1, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-eq v1, v0, :cond_f

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-gez v0, :cond_10

    .line 69205
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69206
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Yg;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69207
    .end local v3    # "op":Lcom/facebook/ads/redexgen/X/3u;
    :cond_10
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 69208
    :cond_11
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-gtz v0, :cond_10

    .line 69209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69210
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Yg;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    goto :goto_6

    .line 69211
    .end local v1    # "i":I
    :cond_12
    return p1
.end method

.method private final A01(II)I
    .locals 7

    .line 69212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 69213
    .local v0, "count":I
    .local v1, "i":I
    :goto_0
    if-ge p2, v6, :cond_7

    .line 69214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/3u;

    .line 69215
    .local v2, "op":Lcom/facebook/ads/redexgen/X/3u;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    .line 69216
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ne v0, p1, :cond_1

    .line 69217
    iget p1, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 69218
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/3u;
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 69219
    :cond_1
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ge v0, p1, :cond_2

    .line 69220
    add-int/lit8 p1, p1, -0x1

    .line 69221
    :cond_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-gt v0, p1, :cond_0

    .line 69222
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 69223
    :cond_3
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-gt v0, p1, :cond_0

    .line 69224
    iget v1, v5, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 69225
    iget v1, v5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_4

    .line 69226
    const/4 v0, -0x1

    return v0

    .line 69227
    :cond_4
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr p1, v0

    goto :goto_1

    .line 69228
    :cond_5
    iget v4, v5, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "6d2Cvy1MfGwOem3AHh21iiz4RwVuOhP"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_0

    .line 69229
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr p1, v0

    goto :goto_1

    .line 69230
    .end local v1    # "i":I
    :cond_7
    return p1
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xa1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yg;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x64t
        -0x4bt
        -0x4et
        -0x4bt
        -0x4at
        -0x42t
        -0x4bt
        0x67t
        -0x44t
        -0x49t
        -0x55t
        -0x58t
        -0x45t
        -0x54t
        0x67t
        -0x4at
        -0x49t
        0x67t
        -0x45t
        -0x40t
        -0x49t
        -0x54t
        0x67t
        -0x53t
        -0x4at
        -0x47t
        0x67t
        -0x2ct
        -0x2dt
        -0x2ft
        -0x22t
        -0x7bt
        -0x29t
        -0x36t
        -0x2et
        -0x2ct
        -0x25t
        -0x36t
        -0x7bt
        -0x3at
        -0x2dt
        -0x37t
        -0x7bt
        -0x26t
        -0x2bt
        -0x37t
        -0x3at
        -0x27t
        -0x36t
        -0x7bt
        -0x2ct
        -0x2bt
        -0x28t
        -0x7bt
        -0x38t
        -0x3at
        -0x2dt
        -0x7bt
        -0x39t
        -0x36t
        -0x7bt
        -0x37t
        -0x32t
        -0x28t
        -0x2bt
        -0x3at
        -0x27t
        -0x38t
        -0x33t
        -0x36t
        -0x37t
        -0x7bt
        -0x32t
        -0x2dt
        -0x7bt
        -0x35t
        -0x32t
        -0x29t
        -0x28t
        -0x27t
        -0x7bt
        -0x2bt
        -0x3at
        -0x28t
        -0x28t
        -0x18t
        -0x17t
        -0x67t
        -0x14t
        -0x1ft
        -0x18t
        -0x12t
        -0x1bt
        -0x23t
        -0x67t
        -0x25t
        -0x22t
        -0x67t
        -0x15t
        -0x22t
        -0x1at
        -0x18t
        -0x11t
        -0x22t
        -0x67t
        -0x18t
        -0x15t
        -0x67t
        -0x12t
        -0x17t
        -0x23t
        -0x26t
        -0x13t
        -0x22t
        -0x59t
        0x1et
        0x13t
        0x1at
        0x20t
        0x17t
        0xft
        -0x35t
        0x19t
        0x1at
        0x1ft
        -0x35t
        0xft
        0x14t
        0x1et
        0x1bt
        0xct
        0x1ft
        0xet
        0x13t
        -0x35t
        0xct
        0xft
        0xft
        -0x35t
        0x1at
        0x1dt
        -0x35t
        0x18t
        0x1at
        0x21t
        0x10t
        -0x35t
        0x11t
        0x1at
        0x1dt
        -0x35t
        0x1bt
        0x1dt
        0x10t
        -0x35t
        0x17t
        0xct
        0x24t
        0x1at
        0x20t
        0x1ft
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 0

    .line 69231
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->A09(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69232
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 0

    .line 69233
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->A09(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69234
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 10

    .line 69235
    iget v8, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 69236
    .local v0, "tmpStart":I
    const/4 v7, 0x0

    .line 69237
    .local v1, "tmpCount":I
    iget v9, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v9, v0

    .line 69238
    .local v2, "tmpEnd":I
    const/4 v6, -0x1

    .line 69239
    .local v3, "type":I
    iget v5, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .local v4, "position":I
    :goto_0
    const/4 v4, 0x0

    const/4 v3, 0x2

    if-ge v5, v9, :cond_5

    .line 69240
    const/4 v2, 0x0

    .line 69241
    .local v7, "typeChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3t;->A5S(I)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v0

    .line 69242
    .local v8, "vh":Lcom/facebook/ads/redexgen/X/4r;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Yg;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69243
    :cond_0
    if-nez v6, :cond_1

    .line 69244
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/Yg;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v0

    .line 69245
    .restart local v5
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A08(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69246
    const/4 v2, 0x1

    .line 69247
    .end local v5
    :cond_1
    const/4 v6, 0x1

    .line 69248
    :goto_1
    if-eqz v2, :cond_2

    .line 69249
    sub-int/2addr v5, v7

    .line 69250
    sub-int/2addr v9, v7

    .line 69251
    const/4 v7, 0x1

    .line 69252
    .end local v7    # "typeChanged":Z
    .end local v8    # "vh":Lcom/facebook/ads/redexgen/X/4r;
    :goto_2
    add-int/2addr v5, v1

    goto :goto_0

    .line 69253
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 69254
    :cond_3
    if-ne v6, v1, :cond_4

    .line 69255
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/Yg;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v0

    .line 69256
    .local v5, "newOp":Lcom/facebook/ads/redexgen/X/3u;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A09(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69257
    const/4 v2, 0x1

    .line 69258
    .end local v5    # "newOp":Lcom/facebook/ads/redexgen/X/3u;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 69259
    .end local v4    # "position":I
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-eq v7, v0, :cond_6

    .line 69260
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69261
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/Yg;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object p1

    .line 69262
    :cond_6
    if-nez v6, :cond_7

    .line 69263
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->A08(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69264
    :goto_3
    return-void

    .line 69265
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->A09(Lcom/facebook/ads/redexgen/X/3u;)V

    goto :goto_3
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 9

    .line 69266
    iget v6, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 69267
    .local v0, "tmpStart":I
    const/4 v5, 0x0

    .line 69268
    .local v1, "tmpCount":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v4, v0

    .line 69269
    .local v2, "tmpEnd":I
    const/4 v7, -0x1

    .line 69270
    .local v3, "type":I
    iget v3, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .local v4, "position":I
    :goto_0
    const/4 v2, 0x4

    sget-object v8, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v8, v0

    const/4 v0, 0x5

    aget-object v8, v8, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v8, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "QVMb2fRXyzWHiAZPpRD1aZXDVthvAAWC"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    if-ge v3, v4, :cond_5

    .line 69271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/3t;->A5S(I)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v0

    .line 69272
    .local v6, "vh":Lcom/facebook/ads/redexgen/X/4r;
    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Yg;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69273
    :cond_1
    if-nez v7, :cond_2

    .line 69274
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v2, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v0

    .line 69275
    .restart local v5
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A08(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69276
    const/4 v5, 0x0

    .line 69277
    move v6, v3

    .line 69278
    .end local v5
    :cond_2
    const/4 v7, 0x1

    .line 69279
    .end local v6    # "vh":Lcom/facebook/ads/redexgen/X/4r;
    :goto_1
    add-int/2addr v5, v1

    .line 69280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69281
    :cond_3
    if-ne v7, v1, :cond_4

    .line 69282
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v2, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v0

    .line 69283
    .local v5, "newOp":Lcom/facebook/ads/redexgen/X/3u;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A09(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69284
    const/4 v5, 0x0

    .line 69285
    move v6, v3

    .line 69286
    .end local v5    # "newOp":Lcom/facebook/ads/redexgen/X/3u;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 69287
    .end local v4    # "position":I
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-eq v5, v0, :cond_6

    .line 69288
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    .line 69289
    .local v4, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69290
    invoke-virtual {p0, v2, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object p1

    .line 69291
    .end local v4    # "payload":Ljava/lang/Object;
    :cond_6
    if-nez v7, :cond_7

    .line 69292
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->A08(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69293
    :goto_2
    return-void

    .line 69294
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->A09(Lcom/facebook/ads/redexgen/X/3u;)V

    goto :goto_2
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 11

    .line 69295
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_d

    iget v3, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "fuh7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x8

    if-eq v3, v0, :cond_d

    .line 69296
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A00(II)I

    move-result v5

    .line 69297
    .local v0, "tmpStart":I
    const/4 v8, 0x1

    .line 69298
    .local v2, "tmpCnt":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 69299
    .local v3, "offsetPositionForPartial":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v7, 0x2

    const/4 v6, 0x4

    if-eq v0, v7, :cond_8

    if-ne v0, v6, :cond_b

    .line 69300
    const/4 v10, 0x1

    .line 69301
    .local v4, "positionMultiplier":I
    :goto_0
    const/4 v3, 0x1

    .local v7, "p":I
    :goto_1
    iget v9, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_7

    if-ge v3, v9, :cond_9

    .line 69302
    :goto_2
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    mul-int v0, v10, v3

    add-int/2addr v1, v0

    .line 69303
    .local v8, "pos":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A00(II)I

    move-result v2

    .line 69304
    .local v9, "updatedPos":I
    const/4 v9, 0x0

    .line 69305
    .local v10, "continuous":Z
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v1, 0x0

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_3

    .line 69306
    :goto_3
    if-eqz v9, :cond_0

    .line 69307
    add-int/lit8 v8, v8, 0x1

    .line 69308
    .end local v8    # "pos":I
    .end local v9    # "updatedPos":I
    .end local v10    # "continuous":Z
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Yg;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 69309
    :cond_0
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v1, v5, v8, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v0

    .line 69310
    .local p0, "tmp":Lcom/facebook/ads/redexgen/X/3u;
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Yg;->A0A(Lcom/facebook/ads/redexgen/X/3u;I)V

    .line 69311
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69312
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    if-ne v0, v6, :cond_1

    .line 69313
    add-int/2addr v4, v8

    .line 69314
    :cond_1
    move v5, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_2

    .line 69315
    const/4 v8, 0x1

    goto :goto_4

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "EcOQEIn9Q5XvTjS6SUXoeHtz7oIrLcgt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qdxRTeDYAvuRxJ3EQmMRRmoNV8wrEDZm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v8, 0x1

    goto :goto_4

    .line 69316
    :cond_3
    add-int/lit8 v0, v5, 0x1

    if-ne v2, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v9, v1

    .line 69317
    goto :goto_3

    .line 69318
    :cond_5
    if-ne v2, v5, :cond_6

    const/4 v1, 0x1

    :cond_6
    move v9, v1

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "Sd1L0VSyo86shE8ew7ry1Omr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge v3, v9, :cond_9

    goto :goto_2

    .line 69319
    :cond_8
    const/4 v10, 0x0

    .line 69320
    .restart local v4    # "positionMultiplier":I
    goto :goto_0

    .line 69321
    .end local v7    # "p":I
    :cond_9
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    .line 69322
    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Yg;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69323
    if-lez v8, :cond_a

    .line 69324
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    invoke-virtual {p0, v0, v5, v8, v1}, Lcom/facebook/ads/redexgen/X/Yg;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v0

    .line 69325
    .local v5, "tmp":Lcom/facebook/ads/redexgen/X/3u;
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Yg;->A0A(Lcom/facebook/ads/redexgen/X/3u;I)V

    .line 69326
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69327
    .end local v5    # "tmp":Lcom/facebook/ads/redexgen/X/3u;
    :cond_a
    return-void

    .line 69328
    .end local v4    # "positionMultiplier":I
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x1e

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69329
    .end local v0    # "tmpStart":I
    .end local v1    # "payload":Ljava/lang/Object;
    .end local v2    # "tmpCnt":I
    .end local v3    # "offsetPositionForPartial":I
    .end local v4
    :cond_d
    const/16 v2, 0x73

    const/16 v1, 0x2e

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 4

    .line 69330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69331
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    .line 69332
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3t;->AA1(II)V

    .line 69333
    :goto_0
    return-void

    .line 69334
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3t;->A9g(IILjava/lang/Object;)V

    .line 69335
    goto :goto_0

    .line 69336
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3t;->AA3(II)V

    .line 69337
    goto :goto_0

    .line 69338
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3t;->AA0(II)V

    .line 69339
    goto :goto_0

    .line 69340
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/3u;I)V
    .locals 3

    .line 69341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3t;->AAi(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69342
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    .line 69343
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-interface {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/3t;->A9g(IILjava/lang/Object;)V

    .line 69344
    :goto_0
    return-void

    .line 69345
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/3t;->AA2(II)V

    .line 69346
    goto :goto_0

    .line 69347
    :cond_1
    const/16 v2, 0x1b

    const/16 v1, 0x3a

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0B(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;)V"
        }
    .end annotation

    .line 69348
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 69349
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 69350
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3u;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69352
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 69353
    return-void
.end method

.method private A0C(I)Z
    .locals 8

    .line 69354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 69355
    .local v0, "count":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 69356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/3u;

    .line 69357
    .local v2, "op":Lcom/facebook/ads/redexgen/X/3u;
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/16 v0, 0x8

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    .line 69358
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A01(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 69359
    return v3

    .line 69360
    :cond_0
    iget v7, v6, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "h3FT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_2

    .line 69361
    iget v2, v6, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v2, v0

    .line 69362
    .local v3, "end":I
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .local v4, "pos":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 69363
    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A01(II)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 69364
    return v3

    .line 69365
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69366
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/3u;
    .end local v3    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69367
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0D(I)I
    .locals 1

    .line 69368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A01(II)I

    move-result v0

    return v0
.end method

.method public final A0E(I)I
    .locals 5

    .line 69369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 69370
    .local v0, "size":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 69371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/3u;

    .line 69372
    .local v2, "op":Lcom/facebook/ads/redexgen/X/3u;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 69373
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/3u;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69374
    :cond_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ne v0, p1, :cond_2

    .line 69375
    iget p1, v4, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    goto :goto_1

    .line 69376
    :cond_2
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ge v0, p1, :cond_3

    .line 69377
    add-int/lit8 p1, p1, -0x1

    .line 69378
    :cond_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-gt v0, p1, :cond_0

    .line 69379
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 69380
    :cond_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-gt v0, p1, :cond_0

    .line 69381
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v1, v0

    .line 69382
    .local v3, "end":I
    if-le v1, p1, :cond_5

    .line 69383
    const/4 v0, -0x1

    return v0

    .line 69384
    :cond_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr p1, v0

    .line 69385
    .end local v3    # "end":I
    goto :goto_1

    .line 69386
    :cond_6
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-gt v0, p1, :cond_0

    .line 69387
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr p1, v0

    goto :goto_1

    .line 69388
    .end local v1    # "i":I
    :cond_7
    return p1
.end method

.method public final A0F()V
    .locals 4

    .line 69389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 69390
    .local v0, "count":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 69391
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3u;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3t;->AAk(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69393
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A0B(Ljava/util/List;)V

    .line 69394
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:I

    .line 69395
    return-void
.end method

.method public final A0G()V
    .locals 9

    .line 69396
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yg;->A0F()V

    .line 69397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 69398
    .local v0, "count":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_7

    .line 69399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/3u;

    .line 69400
    .local v2, "op":Lcom/facebook/ads/redexgen/X/3u;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 69401
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A04:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 69402
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69403
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/3u;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69404
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3t;->AAk(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69405
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3t;->AA1(II)V

    goto :goto_1

    .line 69406
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3t;->AAk(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69407
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v7, v5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v6, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "6Qpi3zwbHCTXm3nhA4JhLro11ECL3LU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-interface {v8, v7, v6, v0}, Lcom/facebook/ads/redexgen/X/3t;->A9g(IILjava/lang/Object;)V

    .line 69408
    goto :goto_1

    .line 69409
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3t;->AAk(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69410
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v6, v5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v5, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "CM7MK7KhSxDopOj0YrHNMoPSB3hYAvlM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/3t;->AA2(II)V

    .line 69411
    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "0a4GBd0juwjU6ZOPGBL8pgIRsQZTAwEC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/3t;->AA2(II)V

    goto :goto_1

    .line 69412
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3t;->AAk(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69413
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Yg;->A02:Lcom/facebook/ads/redexgen/X/3t;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3t;->AA0(II)V

    .line 69414
    goto/16 :goto_1

    .line 69415
    .end local v1    # "i":I
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A0B(Ljava/util/List;)V

    .line 69416
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:I

    .line 69417
    return-void
.end method

.method public final A0H()V
    .locals 8

    .line 69418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yg;->A03:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A05(Ljava/util/List;)V

    .line 69419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 69420
    .local v0, "count":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v4, v5, :cond_6

    .line 69421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/3u;

    .line 69422
    .local v2, "op":Lcom/facebook/ads/redexgen/X/3u;
    iget v3, v6, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v7, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A09:[Ljava/lang/String;

    const-string v1, "1BDdKJQJlsgxETOK14Gjs1hC7fjbuKK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v3, v7, :cond_5

    const/4 v0, 0x2

    if-eq v3, v0, :cond_4

    const/4 v0, 0x4

    if-eq v3, v0, :cond_3

    const/16 v0, 0x8

    if-eq v3, v0, :cond_2

    .line 69423
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A04:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 69424
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69425
    .end local v2    # "op":Lcom/facebook/ads/redexgen/X/3u;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69426
    :cond_2
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Yg;->A05(Lcom/facebook/ads/redexgen/X/3u;)V

    goto :goto_1

    .line 69427
    :cond_3
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Yg;->A07(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69428
    goto :goto_1

    .line 69429
    :cond_4
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Yg;->A06(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69430
    goto :goto_1

    .line 69431
    :cond_5
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Yg;->A04(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 69432
    goto :goto_1

    .line 69433
    .end local v1    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69434
    return-void
.end method

.method public final A0I()V
    .locals 1

    .line 69435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A0B(Ljava/util/List;)V

    .line 69436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Yg;->A0B(Ljava/util/List;)V

    .line 69437
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:I

    .line 69438
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 69439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0K()Z
    .locals 1

    .line 69440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0L(I)Z
    .locals 1

    .line 69441
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;
    .locals 1

    .line 69442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2k;->A2P()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3u;

    .line 69443
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3u;
    if-nez v0, :cond_0

    .line 69444
    new-instance v0, Lcom/facebook/ads/redexgen/X/3u;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3u;-><init>(IIILjava/lang/Object;)V

    .line 69445
    :goto_0
    return-object v0

    .line 69446
    :cond_0
    iput p1, v0, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    .line 69447
    iput p2, v0, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 69448
    iput p3, v0, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 69449
    iput-object p4, v0, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final ADz(Lcom/facebook/ads/redexgen/X/3u;)V
    .locals 1

    .line 69450
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A07:Z

    if-nez v0, :cond_0

    .line 69451
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    .line 69452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yg;->A01:Lcom/facebook/ads/redexgen/X/2k;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/2k;->AE7(Ljava/lang/Object;)Z

    .line 69453
    :cond_0
    return-void
.end method
