.class public Lcom/facebook/ads/redexgen/X/2m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:I

.field public static A05:[Ljava/lang/Object;

.field public static A06:[Ljava/lang/Object;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:[I

.field public A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 6370
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BrVHgBkmBksyBnnjIq0pHnqXAu9AUg3j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iIth6RrlZFIJsCIcgsKekGbs32ChyRjv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Uwdt1z4SmD1Mf7UvGeSYdNXOfhFYTYnY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QITUqyWPG2VnlGrB2a6hYhF3R3KaavLD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "arDW8RiIBmWFNCZvgTvY8WvuJ76u3VTs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pOGA2rk9V0ZEl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "438Cia9wbNYnLnXWpHR8BTCUnyjltaF2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "slnYcYZFDBEgJMtczrpzy3D6NQdPiCOq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2m;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6371
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6372
    sget-object v0, Lcom/facebook/ads/redexgen/X/2c;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6373
    sget-object v0, Lcom/facebook/ads/redexgen/X/2c;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6374
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6375
    return-void
.end method

.method private final A00()I
    .locals 7

    .line 6376
    .local v6, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6377
    .local v0, "N":I
    if-nez v4, :cond_0

    .line 6378
    const/4 v0, -0x1

    return v0

    .line 6379
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    const/4 v0, 0x0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/2m;->A02([III)I

    move-result v6

    .line 6380
    .local v1, "index":I
    if-gez v6, :cond_1

    .line 6381
    return v6

    .line 6382
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_2

    .line 6383
    return v6

    .line 6384
    :cond_2
    add-int/lit8 v3, v6, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    aget v0, v0, v3

    if-nez v0, :cond_5

    .line 6385
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const-string v1, "5BliZlAS3QBBz9o"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v5, v0

    if-nez v0, :cond_4

    return v3

    .line 6386
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6387
    :cond_5
    add-int/lit8 v2, v6, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v2, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    aget v0, v0, v2

    if-nez v0, :cond_7

    .line 6388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_6

    return v2

    .line 6389
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6390
    .end local v3    # "i":I
    :cond_7
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method private final A01(Ljava/lang/Object;I)I
    .locals 5

    .line 6391
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6392
    .local v0, "N":I
    if-nez v4, :cond_1

    .line 6393
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const-string v1, "y399iLZYsEEz0hzdxnUhzykHYZJwaaUE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 6394
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    invoke-static {v0, v4, p2}, Lcom/facebook/ads/redexgen/X/2m;->A02([III)I

    move-result v2

    .line 6395
    .local v1, "index":I
    if-gez v2, :cond_2

    .line 6396
    return v2

    .line 6397
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6398
    return v2

    .line 6399
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    aget v0, v0, v3

    if-ne v0, p2, :cond_5

    .line 6400
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 6401
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6402
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v2, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_7

    .line 6403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 6404
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6405
    .end local v3    # "i":I
    :cond_7
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public static A02([III)I
    .locals 0

    .line 6406
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2c;->A02([III)I

    move-result p0

    return p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6407
    .local p0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2m;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

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
    .locals 4

    const/16 v3, 0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const-string v1, "Xtbm9MFCOkvOfDux5Me3XhO5K6Bs7EUd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PZcI0QBOeZ0LYFf6gJzuFWLZdUoY6utj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2m;->A07:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x45t
        0x7t
        -0x5t
        -0x4t
        0x6t
        -0x4dt
        -0x20t
        -0xct
        0x3t
        -0x44t
        -0x3et
        -0x4at
        0x3t
        0x5t
    .end array-data
.end method

.method private A05(I)V
    .locals 6

    .line 6408
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 6409
    const-class v2, Lcom/facebook/ads/redexgen/X/Yx;

    monitor-enter v2

    .line 6410
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2m;->A06:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 6411
    sget-object v1, Lcom/facebook/ads/redexgen/X/2m;->A06:[Ljava/lang/Object;

    .line 6412
    .local v4, "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6413
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2m;->A06:[Ljava/lang/Object;

    .line 6414
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6415
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 6416
    sget v0, Lcom/facebook/ads/redexgen/X/2m;->A04:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/2m;->A04:I

    .line 6417
    monitor-exit v2

    return-void

    .line 6418
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6419
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 6420
    const-class v2, Lcom/facebook/ads/redexgen/X/Yx;

    monitor-enter v2

    .line 6421
    :try_start_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/2m;->A05:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 6422
    sget-object v1, Lcom/facebook/ads/redexgen/X/2m;->A05:[Ljava/lang/Object;

    .line 6423
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6424
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2m;->A05:[Ljava/lang/Object;

    .line 6425
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6426
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 6427
    sget v0, Lcom/facebook/ads/redexgen/X/2m;->A03:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/2m;->A03:I

    .line 6428
    monitor-exit v2

    return-void

    .line 6429
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 6430
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6431
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6432
    return-void
.end method

.method public static A06([I[Ljava/lang/Object;I)V
    .locals 7

    .line 6433
    array-length v1, p0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v2, 0x1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_2

    .line 6434
    const-class v1, Lcom/facebook/ads/redexgen/X/Yx;

    monitor-enter v1

    .line 6435
    :try_start_0
    sget v0, Lcom/facebook/ads/redexgen/X/2m;->A04:I

    if-ge v0, v4, :cond_1

    .line 6436
    sget-object v0, Lcom/facebook/ads/redexgen/X/2m;->A06:[Ljava/lang/Object;

    aput-object v0, p1, v5

    .line 6437
    aput-object p0, p1, v2

    .line 6438
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    .local v3, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 6439
    aput-object v6, p1, v0

    .line 6440
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6441
    .end local v3    # "i":I
    :cond_0
    sput-object p1, Lcom/facebook/ads/redexgen/X/2m;->A06:[Ljava/lang/Object;

    .line 6442
    sget v0, Lcom/facebook/ads/redexgen/X/2m;->A04:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/2m;->A04:I

    .line 6443
    :cond_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6444
    :cond_2
    array-length v1, p0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    .line 6445
    const-class v1, Lcom/facebook/ads/redexgen/X/Yx;

    monitor-enter v1

    .line 6446
    :try_start_1
    sget v0, Lcom/facebook/ads/redexgen/X/2m;->A03:I

    if-ge v0, v4, :cond_4

    .line 6447
    sget-object v0, Lcom/facebook/ads/redexgen/X/2m;->A05:[Ljava/lang/Object;

    aput-object v0, p1, v5

    .line 6448
    aput-object p0, p1, v2

    .line 6449
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    .restart local v3    # "i":I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 6450
    aput-object v6, p1, v0

    .line 6451
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6452
    .end local v3    # "i":I
    :cond_3
    sput-object p1, Lcom/facebook/ads/redexgen/X/2m;->A05:[Ljava/lang/Object;

    .line 6453
    sget v0, Lcom/facebook/ads/redexgen/X/2m;->A03:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/2m;->A03:I

    .line 6454
    :cond_4
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 6455
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final A07(Ljava/lang/Object;)I
    .locals 4

    .line 6456
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    mul-int/lit8 v3, v0, 0x2

    .line 6457
    .local v0, "N":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6458
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 6459
    const/4 v1, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 6460
    aget-object v0, v2, v1

    if-nez v0, :cond_0

    .line 6461
    shr-int/lit8 v0, v1, 0x1

    return v0

    .line 6462
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 6463
    :cond_1
    const/4 v1, 0x1

    .restart local v2    # "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 6464
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6465
    shr-int/lit8 v0, v1, 0x1

    return v0

    .line 6466
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 6467
    .end local v2    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public final A08(Ljava/lang/Object;)I
    .locals 1

    .line 6468
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2m;->A00()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2m;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public final A09(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 6469
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0A(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 6470
    .local p2, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    const/4 v6, 0x1

    add-int/2addr v0, v6

    aget-object v8, v1, v0

    .line 6471
    .local v1, "old":Ljava/lang/Object;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6472
    .local v3, "osize":I
    if-gt v5, v6, :cond_1

    .line 6473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    invoke-static {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/2m;->A06([I[Ljava/lang/Object;I)V

    .line 6474
    sget-object v0, Lcom/facebook/ads/redexgen/X/2c;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6475
    sget-object v0, Lcom/facebook/ads/redexgen/X/2c;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6476
    const/4 v4, 0x0

    .line 6477
    .local v0, "nsize":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const-string v1, "xFHRCOjHDqSI1UlNRZSx5FadcPcGQITj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4ZMke5GLOi53P3lo3UgzHK3l5Qzb3367"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_6

    .line 6478
    iput v4, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6479
    return-object v8

    .line 6480
    .end local v0    # "nsize":I
    :cond_1
    add-int/lit8 v4, v5, -0x1

    .line 6481
    .restart local v0    # "nsize":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    array-length v0, v3

    const/16 v2, 0x8

    if-le v0, v2, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    array-length v0, v3

    div-int/lit8 v0, v0, 0x3

    if-ge v1, v0, :cond_4

    .line 6482
    if-le v5, v2, :cond_2

    shr-int/lit8 v0, v5, 0x1

    add-int v2, v5, v0

    .line 6483
    .local v4, "n":I
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6484
    .local v5, "ohashes":[I
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6485
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/2m;->A05(I)V

    .line 6486
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-ne v5, v0, :cond_8

    .line 6487
    if-lez p1, :cond_3

    .line 6488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6489
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6490
    :cond_3
    if-ge p1, v4, :cond_0

    .line 6491
    add-int/lit8 v2, p1, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    sub-int v0, v4, p1

    invoke-static {v3, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6492
    add-int/lit8 v3, p1, 0x1

    shl-int/2addr v3, v6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v7, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6493
    .end local v4    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_4
    if-ge p1, v4, :cond_5

    .line 6494
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    add-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    invoke-static {v2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6495
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    shl-int/2addr v2, v6

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    shl-int/2addr v0, v6

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6496
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v4, 0x1

    const/4 v1, 0x0

    aput-object v1, v2, v0

    .line 6497
    shl-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v6

    aput-object v1, v2, v0

    goto/16 :goto_0

    .line 6498
    :cond_6
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6499
    .restart local v4    # "n":I
    .restart local v5    # "ohashes":[I
    .restart local v6    # "oarray":[Ljava/lang/Object;
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final A0B(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 6500
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0C(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 6501
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 6502
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/2m;
    .local v0, "index":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 6503
    .local v1, "old":Ljava/lang/Object;, "TV;"
    aput-object p2, v1, v2

    .line 6504
    return-object v0
.end method

.method public final A0D(I)V
    .locals 6

    .line 6505
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6506
    .local v0, "osize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 6507
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6508
    .local v1, "ohashes":[I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6509
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A05(I)V

    .line 6510
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-lez v0, :cond_0

    .line 6511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    const/4 v2, 0x0

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6512
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6513
    :cond_0
    invoke-static {v4, v3, v5}, Lcom/facebook/ads/redexgen/X/2m;->A06([I[Ljava/lang/Object;I)V

    .line 6514
    .end local v1    # "ohashes":[I
    .end local v2    # "oarray":[Ljava/lang/Object;
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-ne v0, v5, :cond_2

    .line 6515
    return-void

    .line 6516
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 4

    .line 6517
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-lez v0, :cond_0

    .line 6518
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6519
    .local v0, "ohashes":[I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6520
    .local v1, "oarray":[Ljava/lang/Object;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6521
    .local v2, "osize":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/2c;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6522
    sget-object v0, Lcom/facebook/ads/redexgen/X/2c;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6523
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6524
    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/2m;->A06([I[Ljava/lang/Object;I)V

    .line 6525
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "osize":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-gtz v0, :cond_1

    .line 6526
    return-void

    .line 6527
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 6528
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A08(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 6529
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A07(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 6530
    .local p2, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 6531
    return v5

    .line 6532
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2m;

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 6533
    check-cast p1, Lcom/facebook/ads/redexgen/X/2m;

    .line 6534
    .local v1, "map":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2m;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2m;->size()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 6535
    return v4

    .line 6536
    :cond_1
    move v3, v4

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-ge v3, v0, :cond_5

    .line 6537
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2m;->A09(I)Ljava/lang/Object;

    move-result-object v2

    .line 6538
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2m;->A0B(I)Ljava/lang/Object;

    move-result-object v1

    .line 6539
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/2m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6540
    .local p0, "theirs":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 6541
    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/2m;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 6542
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 6543
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local p0    # "theirs":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6544
    :cond_4
    :goto_1
    return v4

    .line 6545
    :goto_2
    return v4

    .line 6546
    .end local v3    # "i":I
    :cond_5
    return v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6547
    .local v0, "ignored":Ljava/lang/ClassCastException;
    :catch_0
    return v4

    .line 6548
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .local v0, "ignored":Ljava/lang/NullPointerException;
    :catch_1
    return v4

    .line 6549
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<**>;"
    :cond_6
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 6550
    check-cast p1, Ljava/util/Map;

    .line 6551
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2m;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 6552
    return v4

    .line 6553
    :cond_7
    move v3, v4

    .restart local v3    # "i":I
    :goto_3
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-ge v3, v0, :cond_b

    .line 6554
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2m;->A09(I)Ljava/lang/Object;

    move-result-object v2

    .line 6555
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2m;->A0B(I)Ljava/lang/Object;

    move-result-object v1

    .line 6556
    .restart local v5    # "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6557
    .restart local p0    # "theirs":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 6558
    if-nez v0, :cond_a

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 6559
    :cond_8
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 6560
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local p0    # "theirs":Ljava/lang/Object;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6561
    :cond_a
    :goto_4
    return v4

    .line 6562
    :goto_5
    return v4

    .line 6563
    .end local v3    # "i":I
    :cond_b
    return v5
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6564
    .local v0, "ignored":Ljava/lang/ClassCastException;
    :catch_2
    return v4

    .line 6565
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .local v0, "ignored":Ljava/lang/NullPointerException;
    :catch_3
    return v4

    .line 6566
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_c
    return v4
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 6567
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A08(Ljava/lang/Object;)I

    move-result v0

    .line 6568
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    .line 6569
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6570
    .local v0, "hashes":[I
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6571
    .local v1, "array":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 6572
    .local v2, "result":I
    const/4 v4, 0x0

    .local v3, "i":I
    const/4 v3, 0x1

    .local v4, "v":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .local v5, "s":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 6573
    aget-object v0, v6, v3

    .line 6574
    .local v6, "value":Ljava/lang/Object;
    aget v1, v7, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v1, v0

    add-int/2addr v5, v1

    .line 6575
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 6576
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 6577
    .end local v3    # "i":I
    .end local v4    # "v":I
    .end local v5    # "s":I
    :cond_1
    return v5
.end method

.method public final isEmpty()Z
    .locals 1

    .line 6578
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 6579
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v6, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6580
    .local v0, "osize":I
    if-nez p1, :cond_0

    .line 6581
    const/4 v5, 0x0

    .line 6582
    .local v1, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2m;->A00()I

    move-result v0

    .line 6583
    .local v2, "index":I
    .restart local v2    # "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6584
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 6585
    .end local v2    # "index":I
    .local v3, "index":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 6586
    .local v4, "old":Ljava/lang/Object;, "TV;"
    aput-object p2, v1, v2

    .line 6587
    return-object v0

    .line 6588
    .end local v1    # "hash":I
    .end local v2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 6589
    .restart local v1    # "hash":I
    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/2m;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 6590
    .end local v3    # "index":I
    .end local v4    # "old":Ljava/lang/Object;, "TV;"
    .restart local v2    # "index":I
    :cond_1
    xor-int/lit8 v4, v0, -0x1

    .line 6591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    array-length v0, v0

    if-lt v6, v0, :cond_4

    .line 6592
    const/4 v0, 0x4

    const/16 v1, 0x8

    if-lt v6, v1, :cond_6

    shr-int/lit8 v0, v6, 0x1

    add-int/2addr v0, v6

    .line 6593
    .local v3, "n":I
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    .line 6594
    .local v4, "ohashes":[I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    .line 6595
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2m;->A05(I)V

    .line 6596
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-ne v6, v0, :cond_8

    .line 6597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    array-length v0, v1

    if-lez v0, :cond_3

    .line 6598
    array-length v0, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    array-length v0, v3

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6600
    :cond_3
    invoke-static {v7, v3, v6}, Lcom/facebook/ads/redexgen/X/2m;->A06([I[Ljava/lang/Object;I)V

    .line 6601
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_4
    if-ge v4, v6, :cond_5

    .line 6602
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    add-int/lit8 v1, v4, 0x1

    sub-int v0, v6, v4

    invoke-static {v2, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6603
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v2, v4, 0x1

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6604
    :cond_5
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-ne v6, v2, :cond_7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A01:[I

    array-length v0, v1

    if-ge v4, v0, :cond_7

    .line 6605
    aput v5, v1, v4

    .line 6606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v4, 0x1

    aput-object p1, v1, v0

    .line 6607
    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    aput-object p2, v1, v0

    .line 6608
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    .line 6609
    const/4 v0, 0x0

    return-object v0

    .line 6610
    :cond_6
    if-lt v6, v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    .line 6611
    :cond_7
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 6612
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 6613
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A08(Ljava/lang/Object;)I

    move-result v0

    .line 6614
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 6615
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2m;->A0A(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6616
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const-string v1, "POG7nMkVNzdGaGlGxNMu0E80q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final size()I
    .locals 1

    .line 6617
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 6618
    .local v5, "this":Lcom/facebook/ads/redexgen/X/2m;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6619
    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2m;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6620
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6621
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6622
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    if-ge v5, v0, :cond_5

    .line 6623
    if-lez v5, :cond_1

    .line 6624
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2m;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6625
    :cond_1
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/2m;->A09(I)Ljava/lang/Object;

    move-result-object v7

    .line 6626
    .local v2, "key":Ljava/lang/Object;
    const/4 v8, 0x0

    const/16 v6, 0xa

    const/16 v3, 0x2a

    sget-object v1, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A08:[Ljava/lang/String;

    const-string v1, "5MoFeGsxqoTSR8Y6IShdOiE5VevAoRo0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kGPruxXsJMcA49LPD5OztVvQJS4oto1Y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v8, v6, v3}, Lcom/facebook/ads/redexgen/X/2m;->A03(III)Ljava/lang/String;

    move-result-object v1

    if-eq v7, p0, :cond_3

    .line 6627
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6628
    :goto_1
    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6629
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/2m;->A0B(I)Ljava/lang/Object;

    move-result-object v0

    .line 6630
    .local v4, "value":Ljava/lang/Object;
    if-eq v0, p0, :cond_2

    .line 6631
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6632
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6633
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6634
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6635
    .end local v1    # "i":I
    :cond_5
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6636
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
