.class public final Lcom/facebook/ads/redexgen/X/Va;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Cq;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Landroid/util/SparseIntArray;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hb;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/VZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59391
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZoOhGYHP8SNfCMTpI8hB8esJvCxQNk4a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iCY0vtQk2BMTn8YKksXnllwhxYcEMWPa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FRJmrfeKqiG8dvU06WzW6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wyGcQq4l"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ODNaIWitniiqKmZchEPotBtPtmPon6SS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "r1S7VBlY5d2QYAsiLWImTDUS2fBhu4wR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Va;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VZ;I)V
    .locals 2

    .line 59392
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59393
    const/4 v0, 0x5

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    .line 59394
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A01:Landroid/util/SparseArray;

    .line 59395
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A02:Landroid/util/SparseIntArray;

    .line 59396
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Va;->A00:I

    .line 59397
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/redexgen/X/Cn;
    .locals 13

    .line 59398
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v8

    .line 59399
    .local v1, "descriptorsStartPosition":I
    add-int v9, v8, p2

    .line 59400
    .local v2, "descriptorsEndPosition":I
    const/4 v7, -0x1

    .line 59401
    .local v3, "streamType":I
    const/4 v6, 0x0

    .line 59402
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 59403
    .local v5, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v0

    if-ge v0, v9, :cond_9

    .line 59404
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v1

    .line 59405
    .local v6, "descriptorTag":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    .line 59406
    .local v7, "descriptorLength":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v10

    add-int/2addr v10, v0

    .line 59407
    .local v8, "positionOfNextDescriptor":I
    const/4 v0, 0x5

    if-ne v1, v0, :cond_3

    .line 59408
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v11

    .line 59409
    .local v9, "formatIdentifier":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VZ;->A06()J

    move-result-wide v1

    cmp-long v0, v11, v1

    if-nez v0, :cond_1

    .line 59410
    const/16 v7, 0x81

    .line 59411
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v0

    sub-int/2addr v10, v0

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 59412
    .end local v6    # "descriptorTag":I
    .end local v7    # "descriptorLength":I
    .end local v8    # "positionOfNextDescriptor":I
    goto :goto_0

    .line 59413
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VZ;->A04()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Va;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Va;->A05:[Ljava/lang/String;

    const-string v1, "OX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, v11, v3

    if-nez v0, :cond_2

    .line 59414
    const/16 v7, 0x87

    goto :goto_1

    .line 59415
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VZ;->A05()J

    move-result-wide v1

    cmp-long v0, v11, v1

    if-nez v0, :cond_0

    .line 59416
    const/16 v7, 0x24

    goto :goto_1

    .line 59417
    :cond_3
    const/16 v0, 0x6a

    if-ne v1, v0, :cond_4

    .line 59418
    const/16 v7, 0x81

    goto :goto_1

    .line 59419
    :cond_4
    const/16 v0, 0x7a

    if-ne v1, v0, :cond_5

    .line 59420
    const/16 v7, 0x87

    goto :goto_1

    .line 59421
    :cond_5
    const/16 v0, 0x7b

    if-ne v1, v0, :cond_6

    .line 59422
    const/16 v7, 0x8a

    goto :goto_1

    .line 59423
    :cond_6
    const/16 v0, 0xa

    const/4 v11, 0x3

    if-ne v1, v0, :cond_7

    .line 59424
    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/Hc;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 59425
    :cond_7
    const/16 v0, 0x59

    if-ne v1, v0, :cond_0

    .line 59426
    const/16 v7, 0x59

    .line 59427
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59428
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v0

    if-ge v0, v10, :cond_0

    .line 59429
    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/Hc;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 59430
    .local v9, "dvbLanguage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v3

    .line 59431
    .local v11, "dvbSubtitlingType":I
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 59432
    .local p0, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 59433
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cm;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Cm;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59434
    .end local v9    # "dvbLanguage":Ljava/lang/String;
    .end local v11    # "dvbSubtitlingType":I
    .end local p0    # "initializationData":[B
    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59435
    :cond_9
    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59436
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 59437
    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cn;

    invoke-direct {v0, v7, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/Cn;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 59438
    return-object v0
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 13

    .line 59439
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    .line 59440
    .local v2, "tableId":I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    .line 59441
    return-void

    .line 59442
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A00(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 59443
    .end local v4
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0E(Lcom/facebook/ads/redexgen/X/VZ;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Ho;

    .line 59444
    .restart local v4
    :goto_0
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 59445
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v8

    .line 59446
    .local v7, "programNumber":I
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 59447
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {p1, v0, v7}, Lcom/facebook/ads/redexgen/X/Hc;->A0a(Lcom/facebook/ads/redexgen/X/Hb;I)V

    .line 59448
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59449
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 59450
    .local v9, "programInfoLength":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 59451
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    const/16 v6, 0x2000

    const/16 v10, 0x15

    if-ne v0, v7, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0B(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/Cq;

    move-result-object v0

    if-nez v0, :cond_2

    .line 59452
    new-array v1, v3, [B

    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Cn;

    invoke-direct {v3, v10, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/Cn;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 59453
    .local v5, "dummyEsInfo":Lcom/facebook/ads/redexgen/X/Cn;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VZ;->A0A(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/Co;

    move-result-object v0

    invoke-interface {v0, v10, v3}, Lcom/facebook/ads/redexgen/X/Co;->A4S(ILcom/facebook/ads/redexgen/X/Cn;)Lcom/facebook/ads/redexgen/X/Cq;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0C(Lcom/facebook/ads/redexgen/X/VZ;Lcom/facebook/ads/redexgen/X/Cq;)Lcom/facebook/ads/redexgen/X/Cq;

    .line 59454
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0B(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/Cq;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    .line 59455
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A09(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/BX;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v0, v8, v10, v6}, Lcom/facebook/ads/redexgen/X/Cp;-><init>(III)V

    .line 59456
    invoke-interface {v3, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Cq;->A8X(Lcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 59457
    .end local v5    # "dummyEsInfo":Lcom/facebook/ads/redexgen/X/Cn;
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 59458
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 59459
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v12

    .line 59460
    .local v5, "remainingEntriesLength":I
    :goto_1
    if-lez v12, :cond_a

    .line 59461
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0a(Lcom/facebook/ads/redexgen/X/Hb;I)V

    .line 59462
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v5

    .line 59463
    .local v6, "streamType":I
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59464
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 59465
    .local v12, "elementaryPid":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 59466
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A03:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 59467
    .local p2, "esInfoLength":I
    invoke-direct {v4, p1, v2}, Lcom/facebook/ads/redexgen/X/Va;->A00(Lcom/facebook/ads/redexgen/X/Hc;I)Lcom/facebook/ads/redexgen/X/Cn;

    move-result-object v1

    .line 59468
    .local v8, "esInfo":Lcom/facebook/ads/redexgen/X/Cn;
    const/4 v0, 0x6

    if-ne v5, v0, :cond_3

    .line 59469
    iget v5, v1, Lcom/facebook/ads/redexgen/X/Cn;->A00:I

    .line 59470
    :cond_3
    add-int/lit8 v0, v2, 0x5

    sub-int/2addr v12, v0

    .line 59471
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    if-ne v0, v7, :cond_8

    move v2, v5

    .line 59472
    .local v10, "trackId":I
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A08(Lcom/facebook/ads/redexgen/X/VZ;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59473
    :cond_4
    :goto_3
    const/4 v5, 0x5

    const/4 v11, 0x4

    const/16 v2, 0xc

    const/16 v10, 0x15

    goto :goto_1

    .line 59474
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    if-ne v0, v7, :cond_7

    if-ne v5, v10, :cond_7

    .line 59475
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    sget-object v5, Lcom/facebook/ads/redexgen/X/Va;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v5, Lcom/facebook/ads/redexgen/X/Va;->A05:[Ljava/lang/String;

    const-string v1, "McoDKrxcl9g055s4tJZatQwjzcY0TxoH"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/VZ;->A0B(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/Cq;

    move-result-object v1

    .line 59476
    .local v11, "reader":Lcom/facebook/ads/redexgen/X/Cq;
    :goto_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A02:Landroid/util/SparseIntArray;

    .line 59477
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 59478
    :cond_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 59479
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 59480
    :cond_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0A(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/Co;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Co;->A4S(ILcom/facebook/ads/redexgen/X/Cn;)Lcom/facebook/ads/redexgen/X/Cq;

    move-result-object v1

    goto :goto_4

    .line 59481
    :cond_8
    move v2, v3

    goto :goto_2

    .line 59482
    :cond_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    .line 59483
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0E(Lcom/facebook/ads/redexgen/X/VZ;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ho;->A03()J

    move-result-wide v0

    new-instance v9, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-direct {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Ho;-><init>(J)V

    .line 59484
    .local v4, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/Ho;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0E(Lcom/facebook/ads/redexgen/X/VZ;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59485
    :cond_a
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 59486
    .local v6, "trackIdCount":I
    const/4 v3, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v3, v5, :cond_e

    .line 59487
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 59488
    .restart local v10    # "trackId":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A08(Lcom/facebook/ads/redexgen/X/VZ;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 59489
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Cq;

    .line 59490
    .restart local v11    # "reader":Lcom/facebook/ads/redexgen/X/Cq;
    if-eqz v2, :cond_c

    .line 59491
    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    sget-object v10, Lcom/facebook/ads/redexgen/X/Va;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v10, v0

    const/4 v0, 0x4

    aget-object v0, v10, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v10, Lcom/facebook/ads/redexgen/X/Va;->A05:[Ljava/lang/String;

    const-string v1, "prZScD3eoAfWT6wNb9RUJeZXyBQ1ma5M"

    const/4 v0, 0x0

    aput-object v1, v10, v0

    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/VZ;->A0B(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/Cq;

    move-result-object v0

    if-eq v2, v0, :cond_b

    .line 59492
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    .line 59493
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A09(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/BX;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v0, v8, v11, v6}, Lcom/facebook/ads/redexgen/X/Cp;-><init>(III)V

    .line 59494
    invoke-interface {v2, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Cq;->A8X(Lcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 59495
    :cond_b
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A07(Lcom/facebook/ads/redexgen/X/VZ;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59496
    .end local v10    # "trackId":I
    .end local v11    # "reader":Lcom/facebook/ads/redexgen/X/Cq;
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59497
    .end local v8    # "i":I
    :cond_e
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    if-ne v0, v7, :cond_10

    .line 59498
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0H(Lcom/facebook/ads/redexgen/X/VZ;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 59499
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A09(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/BX;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 59500
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(Lcom/facebook/ads/redexgen/X/VZ;I)I

    .line 59501
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0I(Lcom/facebook/ads/redexgen/X/VZ;Z)Z

    .line 59502
    :cond_f
    :goto_6
    return-void

    .line 59503
    :cond_10
    const/4 v0, 0x0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VZ;->A07(Lcom/facebook/ads/redexgen/X/VZ;)Landroid/util/SparseArray;

    move-result-object v2

    iget v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A00:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 59504
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_11

    :goto_7
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(Lcom/facebook/ads/redexgen/X/VZ;I)I

    .line 59505
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A00(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    if-nez v0, :cond_f

    .line 59506
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A09(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/BX;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 59507
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A0I(Lcom/facebook/ads/redexgen/X/VZ;Z)Z

    goto :goto_6

    .line 59508
    :cond_11
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Va;->A04:Lcom/facebook/ads/redexgen/X/VZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VZ;->A00(Lcom/facebook/ads/redexgen/X/VZ;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public final A8X(Lcom/facebook/ads/redexgen/X/Ho;Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 0

    .line 59509
    return-void
.end method
