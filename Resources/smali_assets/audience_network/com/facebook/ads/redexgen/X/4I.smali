.class public final Lcom/facebook/ads/redexgen/X/4I;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4H;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4H;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 11301
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1CU3iw4Trc3qggngkxP7P26jEGLrLZaR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qcH7HKgKdAybLTWn0rmK7JyCE0S9C8rn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oNJ0dA1Zpt4CixMfeWT18n5RxX88Y0E3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FZ8N3xW3PfzdZjJWrErZ2QIuE13XuJtD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DvPOKoiXqOiYMgjx6IqCziqOSBLzEcJY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MpMZeZ7xc490HXAXJonG5r1KTyiIoUHH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NGMd8PbmdSzgSLgNcWdVjgLa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jY1Ixh6DMe9BpV8yAbg842YJP45AQ2Eb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4I;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4H;)V
    .locals 0

    .line 11302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11303
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:Lcom/facebook/ads/redexgen/X/4H;

    .line 11304
    return-void
.end method

.method private A00(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;)I"
        }
    .end annotation

    .line 11305
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v3, 0x0

    .line 11306
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 11307
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3u;

    .line 11308
    .local v2, "op1":Lcom/facebook/ads/redexgen/X/3u;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 11309
    if-eqz v3, :cond_1

    .line 11310
    return v2

    .line 11311
    :cond_0
    const/4 v3, 0x1

    .line 11312
    .end local v2    # "op1":Lcom/facebook/ads/redexgen/X/3u;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11313
    .end local v1    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private A01(Ljava/util/List;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;II)V"
        }
    .end annotation

    .line 11314
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    move-object v3, p1

    move/from16 v4, p2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/3u;

    .line 11315
    .local v0, "moveOp":Lcom/facebook/ads/redexgen/X/3u;
    move/from16 v6, p3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/3u;

    .line 11316
    .local v7, "nextOp":Lcom/facebook/ads/redexgen/X/3u;
    iget v1, v7, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    .line 11317
    :goto_0
    return-void

    .line 11318
    :cond_0
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3u;ILcom/facebook/ads/redexgen/X/3u;)V

    goto :goto_0

    .line 11319
    :cond_1
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/4I;->A03(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3u;ILcom/facebook/ads/redexgen/X/3u;)V

    .line 11320
    goto :goto_0

    .line 11321
    :cond_2
    move-object v8, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4I;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4I;->A01:[Ljava/lang/String;

    const-string v1, "aUQhN9RPINWHdtDS2haQB24BMlUHbr4B"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "XOFwSchhjWWz78nEYYkf12AsjhBhdKRi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    move-object v9, v3

    move v10, v4

    move-object v11, v5

    move v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4I;->A02(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3u;ILcom/facebook/ads/redexgen/X/3u;)V

    .line 11322
    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3u;ILcom/facebook/ads/redexgen/X/3u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3u;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ")V"
        }
    .end annotation

    .line 11323
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v2, 0x0

    .line 11324
    .local v0, "offset":I
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ge v1, v0, :cond_0

    .line 11325
    add-int/lit8 v2, v2, -0x1

    .line 11326
    :cond_0
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ge v1, v0, :cond_1

    .line 11327
    add-int/lit8 v2, v2, 0x1

    .line 11328
    :cond_1
    iget v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-gt v1, v0, :cond_2

    .line 11329
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11330
    :cond_2
    iget v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-gt v1, v0, :cond_3

    .line 11331
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 11332
    :cond_3
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    add-int/2addr v0, v2

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11333
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11334
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11335
    return-void
.end method

.method private final A03(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3u;ILcom/facebook/ads/redexgen/X/3u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3u;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ")V"
        }
    .end annotation

    .line 11336
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v2, 0x0

    .line 11337
    .local v0, "extraRm":Lcom/facebook/ads/redexgen/X/3u;
    const/4 v7, 0x0

    .line 11338
    .local v1, "revertedMove":Z
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    const/4 v4, 0x1

    if-ge v1, v0, :cond_6

    .line 11339
    const/4 v6, 0x0

    .line 11340
    .local v2, "moveIsBackwards":Z
    iget v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-ne v1, v0, :cond_0

    iget v3, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v1, v0

    if-ne v3, v1, :cond_0

    .line 11341
    const/4 v7, 0x1

    .line 11342
    :cond_0
    :goto_0
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    const/4 v5, 0x2

    if-ge v1, v0, :cond_4

    .line 11343
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11344
    :cond_1
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-gt v1, v0, :cond_3

    .line 11345
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    add-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11346
    .end local v3
    :cond_2
    :goto_1
    if-eqz v7, :cond_7

    .line 11347
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11348
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-interface {v0, p3}, Lcom/facebook/ads/redexgen/X/4H;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 11350
    return-void

    .line 11351
    :cond_3
    iget v3, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v1, v0

    if-ge v3, v1, :cond_2

    .line 11352
    iget v3, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v3, v0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v3, v0

    .line 11353
    .local v3, "remaining":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    add-int/2addr v1, v4

    const/4 v0, 0x0

    invoke-interface {v2, v5, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/4H;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v2

    .line 11354
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v1, v0

    iput v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    goto :goto_1

    .line 11355
    :cond_4
    iget v3, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v1, v0

    if-ge v3, v1, :cond_1

    .line 11356
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 11357
    iput v5, p3, Lcom/facebook/ads/redexgen/X/3u;->A00:I

    .line 11358
    iput v4, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 11359
    iget v3, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4I;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/4I;->A01:[Ljava/lang/String;

    const-string v1, "8AUTweiK2qHuqKAjuAP9RAHRjtqC9cI5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "fxjAamJyQJjVOLb9u9QxKoC9co41mLuZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 11360
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-interface {v0, p5}, Lcom/facebook/ads/redexgen/X/4H;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    .line 11362
    :cond_5
    return-void

    .line 11363
    .end local v2    # "moveIsBackwards":Z
    :cond_6
    const/4 v6, 0x1

    .line 11364
    .restart local v2    # "moveIsBackwards":Z
    iget v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v0, v4

    if-ne v1, v0, :cond_0

    iget v3, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    if-ne v3, v1, :cond_0

    .line 11365
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 11366
    :cond_7
    if-eqz v6, :cond_e

    .line 11367
    if-eqz v2, :cond_9

    .line 11368
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-le v1, v0, :cond_8

    .line 11369
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11370
    :cond_8
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-le v1, v0, :cond_9

    .line 11371
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 11372
    :cond_9
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-le v1, v0, :cond_a

    .line 11373
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11374
    :cond_a
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-le v1, v0, :cond_b

    .line 11375
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 11376
    :cond_b
    :goto_2
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/facebook/ads/redexgen/X/4I;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x5

    aget-object v3, v3, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    .line 11377
    sget-object v3, Lcom/facebook/ads/redexgen/X/4I;->A01:[Ljava/lang/String;

    const-string v1, "R1vl9Esi4EQuoIO0IEs3BYKA9Bp2yfIo"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "ll7MLLjNdpT1F8Cd0W3dCYnGe1w6KT9M"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-eq v1, v0, :cond_d

    .line 11378
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11379
    :goto_3
    if-eqz v2, :cond_c

    .line 11380
    invoke-interface {p1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11381
    :cond_c
    return-void

    .line 11382
    :cond_d
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 11383
    :cond_e
    if-eqz v2, :cond_10

    .line 11384
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-lt v1, v0, :cond_f

    .line 11385
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11386
    :cond_f
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-lt v1, v0, :cond_10

    .line 11387
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 11388
    :cond_10
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-lt v1, v0, :cond_11

    .line 11389
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11390
    :cond_11
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-lt v1, v0, :cond_b

    .line 11391
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    goto :goto_2

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A04(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3u;ILcom/facebook/ads/redexgen/X/3u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3u;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ")V"
        }
    .end annotation

    .line 11392
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v6, 0x0

    .line 11393
    .local v0, "extraUp1":Lcom/facebook/ads/redexgen/X/3u;
    const/4 v4, 0x0

    .line 11394
    .local v1, "extraUp2":Lcom/facebook/ads/redexgen/X/3u;
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-ge v1, v0, :cond_6

    .line 11395
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11396
    :cond_0
    :goto_0
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    if-gt v1, v0, :cond_5

    .line 11397
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    add-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    .line 11398
    .end local v2
    :cond_1
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11399
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    if-lez v0, :cond_4

    .line 11400
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11401
    :goto_2
    if-eqz v6, :cond_2

    .line 11402
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11403
    :cond_2
    if-eqz v4, :cond_3

    .line 11404
    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11405
    :cond_3
    return-void

    .line 11406
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-interface {v0, p5}, Lcom/facebook/ads/redexgen/X/4H;->ADz(Lcom/facebook/ads/redexgen/X/3u;)V

    goto :goto_2

    .line 11408
    :cond_5
    iget v2, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_1

    .line 11409
    iget v7, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v7, v0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    sub-int/2addr v7, v0

    .line 11410
    .local v2, "remaining":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    add-int/2addr v1, v5

    iget-object v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v7, v0}, Lcom/facebook/ads/redexgen/X/4H;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v4

    .line 11411
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v0, v7

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    goto :goto_1

    .line 11412
    :cond_6
    iget v2, p3, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_0

    .line 11413
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A01:I

    .line 11414
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3u;->A02:I

    iget-object v0, p5, Lcom/facebook/ads/redexgen/X/3u;->A03:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/4H;->A9z(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3u;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public final A05(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3u;",
            ">;)V"
        }
    .end annotation

    .line 11415
    .local p2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4I;->A00(Ljava/util/List;)I

    move-result v1

    .local v1, "badMove":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 11416
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A01(Ljava/util/List;II)V

    goto :goto_0

    .line 11417
    :cond_0
    return-void
.end method
