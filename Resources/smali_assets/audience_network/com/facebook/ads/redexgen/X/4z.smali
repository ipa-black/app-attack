.class public final Lcom/facebook/ads/redexgen/X/4z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4x;,
        Lcom/facebook/ads/redexgen/X/4y;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Yx;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Yx<",
            "Lcom/facebook/ads/redexgen/X/4r;",
            "Lcom/facebook/ads/redexgen/X/4x;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/2d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2d<",
            "Lcom/facebook/ads/redexgen/X/4r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 13255
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WXpxlTya5H7kpLIT7UUfzIgXOYds4Vfk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JVDNa5tAOP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "C1CZfaM4quGDjTOWU4x6KBGTC5pPu33J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VymAVHyd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "K8p7KG0zsDoAf7GmBTiUCUpdPzk9iS4o"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MydLOSuorekD0WEADrXIrTB2aFx1Ufvf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1zIVUT6Fxq52O6VZbnoN9TsXnO1jN3fj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "z9Q03TMU5lxkReREt3I6AE4mCa6N3G46"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4z;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13257
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Yx;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    .line 13258
    new-instance v0, Lcom/facebook/ads/redexgen/X/2d;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2d;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/2d;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4r;I)Lcom/facebook/ads/redexgen/X/4U;
    .locals 7

    .line 13259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A08(Ljava/lang/Object;)I

    move-result v4

    .line 13260
    .local v0, "index":I
    const/4 v6, 0x0

    if-gez v4, :cond_0

    .line 13261
    return-object v6

    .line 13262
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const-string v1, "RHZyqyNxFTR6m1AGKtHrgUPkGPlMmpqW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/2m;->A0B(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4x;

    .line 13263
    .local v2, "record":Lcom/facebook/ads/redexgen/X/4x;
    if-eqz v3, :cond_7

    iget v5, v3, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    and-int/2addr v5, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    if-eqz v5, :cond_7

    .line 13264
    :goto_0
    iget v1, v3, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    .line 13265
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 13266
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    .line 13267
    .local v1, "info":Lcom/facebook/ads/redexgen/X/4U;
    .restart local v1    # "info":Lcom/facebook/ads/redexgen/X/4U;
    :goto_1
    iget v6, v3, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const-string v1, "LDlhycQGZBtlD6IMRSONBH11SqKxQWfy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "DCgYh9gvbnrpKHe96mnmPCff01xTtOfJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    and-int/lit8 v0, v6, 0xc

    if-nez v0, :cond_1

    .line 13268
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2m;->A0A(I)Ljava/lang/Object;

    .line 13269
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4x;->A02(Lcom/facebook/ads/redexgen/X/4x;)V

    .line 13270
    :cond_1
    return-object v5

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const-string v1, "9mfdPnfY5V3FVy8Q2gQ6uDsmmOIXndsz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ekMjHGebRREBiMI4gT56rHDvbCCByAvd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/lit8 v0, v6, 0xc

    if-nez v0, :cond_1

    goto :goto_2

    .line 13271
    .end local v1    # "info":Lcom/facebook/ads/redexgen/X/4U;
    :cond_3
    const/16 v5, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const-string v1, "AZoo0ocwP6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Mxzo3dXJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne p2, v5, :cond_6

    .line 13272
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/4U;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const-string v1, "nmlFinlgwywloeecjd6T2DESHLiwmDf9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PTtZpiu630HNHwiWHX52cLnM9FmNSlfo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v5, :cond_7

    goto/16 :goto_0

    .line 13273
    .end local v1
    :cond_6
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13274
    :cond_7
    return-object v6

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4z;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x47

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4z;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x63t
        -0x3bt
        -0x3dt
        -0x3ct
        0x70t
        -0x40t
        -0x3et
        -0x41t
        -0x3at
        -0x47t
        -0x4ct
        -0x4bt
        0x70t
        -0x4at
        -0x44t
        -0x4ft
        -0x49t
        0x70t
        -0x60t
        -0x5et
        -0x6bt
        0x70t
        -0x41t
        -0x3et
        0x70t
        -0x60t
        -0x61t
        -0x5dt
        -0x5ct
    .end array-data
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/4r;)Lcom/facebook/ads/redexgen/X/4U;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13275
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A00(Lcom/facebook/ads/redexgen/X/4r;I)Lcom/facebook/ads/redexgen/X/4U;

    move-result-object v0

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/4r;)Lcom/facebook/ads/redexgen/X/4U;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13276
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A00(Lcom/facebook/ads/redexgen/X/4r;I)Lcom/facebook/ads/redexgen/X/4U;

    move-result-object v0

    return-object v0
.end method

.method public final A05(J)Lcom/facebook/ads/redexgen/X/4r;
    .locals 1

    .line 13277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A08(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4r;

    return-object v0
.end method

.method public final A06()V
    .locals 1

    .line 13278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->clear()V

    .line 13279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2d;->A09()V

    .line 13280
    return-void
.end method

.method public final A07()V
    .locals 0

    .line 13281
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4x;->A01()V

    .line 13282
    return-void
.end method

.method public final A08(JLcom/facebook/ads/redexgen/X/4r;)V
    .locals 1

    .line 13283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A0B(JLjava/lang/Object;)V

    .line 13284
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 2

    .line 13285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4x;

    .line 13286
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4x;
    if-nez v1, :cond_0

    .line 13287
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v1

    .line 13288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13289
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    .line 13290
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 2

    .line 13291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4x;

    .line 13292
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4x;
    if-nez v1, :cond_0

    .line 13293
    return-void

    .line 13294
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    .line 13295
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 2

    .line 13296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2d;->A06()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 13297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2d;->A07(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 13298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/2d;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2d;->A0A(I)V

    .line 13299
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4x;

    .line 13300
    .local v0, "info":Lcom/facebook/ads/redexgen/X/4x;
    if-eqz v0, :cond_1

    .line 13301
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A02(Lcom/facebook/ads/redexgen/X/4x;)V

    .line 13302
    :cond_1
    return-void

    .line 13303
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 0

    .line 13304
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4z;->A0A(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 13305
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 2

    .line 13306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4x;

    .line 13307
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4x;
    if-nez v1, :cond_0

    .line 13308
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v1

    .line 13309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13310
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    .line 13311
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    .line 13312
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 2

    .line 13313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4x;

    .line 13314
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4x;
    if-nez v1, :cond_0

    .line 13315
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v1

    .line 13316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13317
    :cond_0
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/4U;

    .line 13318
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    .line 13319
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 2

    .line 13320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4x;

    .line 13321
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4x;
    if-nez v1, :cond_0

    .line 13322
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4x;->A00()Lcom/facebook/ads/redexgen/X/4x;

    move-result-object v1

    .line 13323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13324
    :cond_0
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    .line 13325
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    .line 13326
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 8

    .line 13327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v4, :cond_8

    .line 13328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2m;->A09(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4r;

    .line 13329
    .local v1, "viewHolder":Lcom/facebook/ads/redexgen/X/4r;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2m;->A0A(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4x;

    .line 13330
    .local v2, "record":Lcom/facebook/ads/redexgen/X/4x;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    const/4 v0, 0x3

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    .line 13331
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/4y;->AFi(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 13332
    :cond_0
    :goto_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/4x;->A02(Lcom/facebook/ads/redexgen/X/4x;)V

    .line 13333
    .end local v1    # "viewHolder":Lcom/facebook/ads/redexgen/X/4r;
    .end local v2    # "record":Lcom/facebook/ads/redexgen/X/4x;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 13334
    :cond_1
    iget v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 13335
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    if-nez v0, :cond_2

    .line 13336
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/4y;->AFi(Lcom/facebook/ads/redexgen/X/4r;)V

    goto :goto_1

    .line 13337
    :cond_2
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/4U;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/4z;->A03:[Ljava/lang/String;

    const-string v1, "fJVAe19tdP"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const-string v1, "3fJsXDGb"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-interface {p1, v3, v7, v6}, Lcom/facebook/ads/redexgen/X/4y;->ADf(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V

    goto :goto_1

    .line 13338
    :cond_3
    iget v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    const/16 v0, 0xe

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    .line 13339
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/4U;

    invoke-interface {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4y;->ADd(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V

    goto :goto_1

    .line 13340
    :cond_4
    iget v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    const/16 v0, 0xc

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_5

    .line 13341
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/4U;

    invoke-interface {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4y;->ADh(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V

    goto :goto_1

    .line 13342
    :cond_5
    iget v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 13343
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    const/4 v0, 0x0

    invoke-interface {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4y;->ADf(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V

    goto :goto_1

    .line 13344
    :cond_6
    iget v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 13345
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/4x;->A02:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/4U;

    invoke-interface {p1, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4y;->ADd(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13346
    .end local v0    # "index":I
    :cond_8
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/4r;)Z
    .locals 2

    .line 13347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4x;

    .line 13348
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4x;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/4r;)Z
    .locals 1

    .line 13349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4x;

    .line 13350
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4x;
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4x;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
