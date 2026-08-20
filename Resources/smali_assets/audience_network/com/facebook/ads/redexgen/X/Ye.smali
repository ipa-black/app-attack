.class public Lcom/facebook/ads/redexgen/X/Ye;
.super Lcom/facebook/ads/redexgen/X/4Z;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4D;,
        Lcom/facebook/ads/redexgen/X/4C;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;,
        Lcom/facebook/ads/redexgen/X/4E;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

.field public A04:Lcom/facebook/ads/redexgen/X/4J;

.field public A05:Z

.field public A06:I

.field public A07:Lcom/facebook/ads/redexgen/X/4E;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/4C;

.field public final A0E:Lcom/facebook/ads/redexgen/X/4D;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 68352
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VKH6HNPW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5SG7ZkmA1SrYT5HpW6e3lHPIEdQjCnoY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GUFAcNFlkHbDslOxTlAKu2zM5da70L8W"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8EarDdUd0wjX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ogiAdIZLqFL2ODTGKcli7xbzAuQZVFku"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "k0c9canuweazyFazM74f3pFcokchiBr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yJQv9VjGutzUoxdr6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vBYUiSK7FkagYmvZS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ye;->A0V()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68353
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;-><init>(Landroid/content/Context;IZ)V

    .line 68354
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 68355
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;-><init>()V

    .line 68356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0A:Z

    .line 68357
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    .line 68358
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0C:Z

    .line 68359
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    .line 68360
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    .line 68361
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    .line 68362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 68363
    new-instance v0, Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4C;-><init>(Lcom/facebook/ads/redexgen/X/Ye;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    .line 68364
    new-instance v0, Lcom/facebook/ads/redexgen/X/4D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4D;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0E:Lcom/facebook/ads/redexgen/X/4D;

    .line 68365
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A06:I

    .line 68366
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A2E(I)V

    .line 68367
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A0h(Z)V

    .line 68368
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A1V(Z)V

    .line 68369
    return-void
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 5

    .line 68370
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 68371
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    return v4

    .line 68372
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A0B:Z

    .line 68373
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68374
    if-lez p1, :cond_2

    const/4 v3, 0x1

    .line 68375
    .local v0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 68376
    .local v3, "absDy":I
    invoke-direct {p0, v3, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A0Y(IIZLcom/facebook/ads/redexgen/X/4o;)V

    .line 68377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    .line 68378
    invoke-direct {p0, p2, v0, p3, v4}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 68379
    .local v2, "consumed":I
    if-gez v1, :cond_3

    .line 68380
    return v4

    .line 68381
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 68382
    :cond_3
    if-le v2, v1, :cond_4

    mul-int/2addr v3, v1

    .line 68383
    .local v1, "scrolled":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    neg-int v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0J(I)V

    .line 68384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/4E;->A04:I

    .line 68385
    return v3

    .line 68386
    :cond_4
    move v3, p1

    goto :goto_1
.end method

.method private A05(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Z)I
    .locals 5

    .line 68387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    sub-int/2addr v0, p1

    .line 68388
    .local v0, "gap":I
    .local v1, "fixOffset":I
    if-lez v0, :cond_2

    .line 68389
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A04(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    neg-int v4, v0

    .line 68390
    add-int/2addr p1, v4

    .line 68391
    if-eqz p4, :cond_1

    .line 68392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "DiKLRwr5Jced9h1IWYQQBSe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, p1

    .line 68393
    if-lez v3, :cond_1

    .line 68394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0J(I)V

    .line 68395
    add-int/2addr v3, v4

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68396
    :cond_1
    return v4

    .line 68397
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A06(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Z)I
    .locals 3

    .line 68398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    sub-int v0, p1, v0

    .line 68399
    .local v0, "gap":I
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 68400
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A04(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    neg-int v2, v0

    .line 68401
    add-int/2addr p1, v2

    .line 68402
    if-eqz p4, :cond_0

    .line 68403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    sub-int/2addr p1, v0

    .line 68404
    if-lez p1, :cond_0

    .line 68405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    neg-int v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0J(I)V

    .line 68406
    sub-int/2addr v2, p1

    return v2

    .line 68407
    :cond_0
    return v2

    .line 68408
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I
    .locals 9

    .line 68409
    iget v7, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68410
    .local v0, "start":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_1

    .line 68411
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    if-gez v0, :cond_0

    .line 68412
    iget v1, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    .line 68413
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0e(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;)V

    .line 68414
    :cond_1
    iget v5, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    add-int/2addr v5, v0

    .line 68415
    .local v1, "remainingSpace":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0E:Lcom/facebook/ads/redexgen/X/4D;

    .line 68416
    .local v3, "layoutChunkResult":Lcom/facebook/ads/redexgen/X/4D;
    :cond_2
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A09:Z

    if-nez v0, :cond_3

    if-lez v5, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/4E;->A05(Lcom/facebook/ads/redexgen/X/4o;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68417
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4D;->A00()V

    .line 68418
    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/facebook/ads/redexgen/X/Ye;->A2H(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4D;)V

    .line 68419
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A01:Z

    if-eqz v0, :cond_5

    .line 68420
    :cond_4
    :goto_0
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    sub-int/2addr v7, v0

    return v7

    .line 68421
    :cond_5
    iget v2, p2, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    mul-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p2, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68422
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A03:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A08:Ljava/util/List;

    if-nez v0, :cond_6

    .line 68423
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 68424
    :cond_6
    iget v1, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68425
    iget v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    sub-int/2addr v5, v0

    .line 68426
    :cond_7
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    if-eq v0, v6, :cond_9

    .line 68427
    iget v1, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    .line 68428
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    if-gez v0, :cond_8

    .line 68429
    iget v8, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    iget v3, p2, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "4Yaap7YPoeEmBfNVznjneaOXF1T3Chf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v8, v3

    iput v8, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    .line 68430
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0e(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;)V

    .line 68431
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4D;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "BoRZmQ3r1kYFEVrzuprqJgVQBsgHE2ov"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 7

    .line 68432
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-nez v0, :cond_1

    .line 68433
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "JS1EmTokFkofHdCiZDqGUekHou375gK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 68434
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68435
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 68436
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    xor-int/2addr v0, v1

    .line 68437
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    .line 68438
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4s;->A00(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4J;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    return v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 8

    .line 68439
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-nez v0, :cond_0

    .line 68440
    const/4 v0, 0x0

    return v0

    .line 68441
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68442
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 68443
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    xor-int/2addr v0, v1

    .line 68444
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    .line 68445
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4s;->A02(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4J;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;ZZ)I

    move-result v0

    return v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 7

    .line 68446
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-nez v0, :cond_1

    .line 68447
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "SnDsIEYZVkVP365fclIsQ2wSHS1GnuqA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cd1sjhoNq3y2dBxKlbos6To2J3BafTHs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68448
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68449
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 68450
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    xor-int/2addr v0, v1

    .line 68451
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0B:Z

    .line 68452
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4s;->A01(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4J;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    return v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 68453
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4o;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v0

    return v0

    .line 68455
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private A0D()Landroid/view/View;
    .locals 2

    .line 68456
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0E()Landroid/view/View;
    .locals 2

    .line 68457
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0F()Landroid/view/View;
    .locals 1

    .line 68458
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private A0G()Landroid/view/View;
    .locals 1

    .line 68459
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0H(II)Landroid/view/View;
    .locals 4

    .line 68460
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68461
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 68462
    .local v0, "next":I
    :goto_0
    if-nez v0, :cond_3

    .line 68463
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68464
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "tEP4S10y6AtQbDA9ff3H424KLTnX0k7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 68465
    .local v1, "preferredBoundsFlag":I
    .local v2, "acceptableBoundsFlag":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68466
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 68467
    const/16 v2, 0x4104

    .line 68468
    const/16 v1, 0x4004

    .line 68469
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-nez v0, :cond_4

    .line 68470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4w;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 68471
    :goto_2
    return-object v0

    .line 68472
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4w;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 68473
    :cond_5
    const/16 v2, 0x1041

    .line 68474
    const/16 v1, 0x1001

    goto :goto_1
.end method

.method private final A0J(IIZZ)Landroid/view/View;
    .locals 6

    .line 68475
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68476
    .local v0, "preferredBoundsFlag":I
    const/4 v3, 0x0

    .line 68477
    .local v1, "acceptableBoundsFlag":I
    if-eqz p3, :cond_1

    .line 68478
    const/16 v4, 0x6003

    .line 68479
    :goto_0
    if-eqz p4, :cond_0

    .line 68480
    const/16 v3, 0x140

    .line 68481
    :cond_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68482
    :cond_1
    const/16 v4, 0x140

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "NnwW0AnvRBQDKBAe7Vp9NN4SqY6y39Zg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "snWQRfIRwdJNOSPMdDWVpUmegwlUrdsl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 68483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4w;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 68484
    :goto_1
    return-object v0

    .line 68485
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4w;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;
    .locals 6

    .line 68486
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v4

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ye;->A2C(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;
    .locals 6

    .line 68487
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v5

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ye;->A2C(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;
    .locals 1

    .line 68488
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0D()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68489
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0E()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;
    .locals 1

    .line 68490
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0E()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68491
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0D()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;
    .locals 1

    .line 68492
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0K(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68493
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0L(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;
    .locals 1

    .line 68494
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0L(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68495
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0K(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0Q(ZZ)Landroid/view/View;
    .locals 2

    .line 68496
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_0

    .line 68497
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 68498
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0R(ZZ)Landroid/view/View;
    .locals 2

    .line 68499
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_0

    .line 68500
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 68501
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final A0S()Lcom/facebook/ads/redexgen/X/4E;
    .locals 1

    .line 68502
    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4E;-><init>()V

    return-object v0
.end method

.method public static A0T(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0U()V
    .locals 4

    .line 68503
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68504
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    .line 68505
    :goto_0
    return-void

    .line 68506
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0A:Z

    xor-int/2addr v3, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "rvopS3hSB7itRsuyG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "9RTUShXs4ZXrU4n03"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0V()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ye;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0x19t
        0x1t
        0x16t
        0x1bt
        0x1et
        0x13t
        0x57t
        0x18t
        0x5t
        0x1et
        0x12t
        0x19t
        0x3t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x4dt
    .end array-data
.end method

.method private A0W(II)V
    .locals 3

    .line 68507
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68508
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 68509
    :goto_0
    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A03:I

    .line 68510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput p1, v1, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 68511
    iput v2, v1, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    .line 68512
    iput p2, v1, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68513
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    .line 68514
    return-void

    .line 68515
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private A0X(II)V
    .locals 3

    .line 68516
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68517
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput p1, v1, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 68518
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 68519
    :goto_0
    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A03:I

    .line 68520
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v2, v1, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    .line 68521
    iput p2, v1, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68522
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    .line 68523
    return-void

    .line 68524
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A0Y(IIZLcom/facebook/ads/redexgen/X/4o;)V
    .locals 5

    .line 68525
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A09:Z

    .line 68526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/Ye;->A0C(Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68527
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput p1, v2, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    .line 68528
    const/4 v4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 68529
    iget v1, v2, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68530
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0F()Landroid/view/View;

    move-result-object v3

    .line 68531
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_1

    .line 68532
    :goto_0
    iput v4, v1, Lcom/facebook/ads/redexgen/X/4E;->A03:I

    .line 68533
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 68534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68536
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    sub-int/2addr v2, v0

    .line 68537
    .end local v0    # "child":Landroid/view/View;
    .local v1, "scrollingOffset":I
    .end local v0
    .restart local v1    # "scrollingOffset":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput p2, v1, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68538
    if-eqz p3, :cond_0

    .line 68539
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68540
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    .line 68541
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "rmKnvh8FAT7bzRdUkYGsCRYa1fX1DRoz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 68542
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 68543
    .end local v1    # "scrollingOffset":I
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0G()Landroid/view/View;

    move-result-object v3

    .line 68544
    .restart local v0    # "child":Landroid/view/View;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68545
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 68546
    :cond_3
    iput v4, v1, Lcom/facebook/ads/redexgen/X/4E;->A03:I

    .line 68547
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 68548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68550
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/4C;)V
    .locals 2

    .line 68551
    iget v1, p1, Lcom/facebook/ads/redexgen/X/4C;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0W(II)V

    .line 68552
    return-void
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/4C;)V
    .locals 2

    .line 68553
    iget v1, p1, Lcom/facebook/ads/redexgen/X/4C;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0X(II)V

    .line 68554
    return-void
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/4h;I)V
    .locals 5

    .line 68555
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v4

    .line 68556
    .local v0, "childCount":I
    if-gez p2, :cond_0

    .line 68557
    return-void

    .line 68558
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A06()I

    move-result v3

    sub-int/2addr v3, p2

    .line 68559
    .local v1, "limit":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_3

    .line 68560
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 68561
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v1

    .line 68562
    .local v3, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68563
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 68564
    .restart local v3    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A0d(Lcom/facebook/ads/redexgen/X/4h;II)V

    .line 68565
    return-void

    .line 68566
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68567
    :cond_3
    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 68568
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v1

    .line 68569
    .restart local v3    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68570
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_5

    .line 68571
    .restart local v3    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v4, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A0d(Lcom/facebook/ads/redexgen/X/4h;II)V

    .line 68572
    return-void

    .line 68573
    .end local v3    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 68574
    .end local v2    # "i":I
    .end local v3
    :cond_6
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/4h;I)V
    .locals 7

    .line 68575
    if-gez p2, :cond_0

    .line 68576
    return-void

    .line 68577
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    .line 68578
    .local v0, "limit":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "66"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v5

    .line 68579
    .local v1, "childCount":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_4

    .line 68580
    add-int/lit8 v3, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v3, :cond_8

    .line 68581
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v6

    .line 68582
    .local v3, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 68583
    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    .line 68584
    .restart local v3    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A0d(Lcom/facebook/ads/redexgen/X/4h;II)V

    .line 68585
    return-void

    .line 68586
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "uDZbJl3GZvnd0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    goto :goto_1

    .line 68587
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 68588
    :cond_4
    const/4 v4, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v4, v5, :cond_8

    .line 68589
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v6

    .line 68590
    .restart local v3    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "ET87P0AumYMcjI6vylu4qFXoEmTHeXod"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-gt v3, p2, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68591
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_6

    .line 68592
    .restart local v3    # "child":Landroid/view/View;
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/Ye;->A0d(Lcom/facebook/ads/redexgen/X/4h;II)V

    .line 68593
    return-void

    .line 68594
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68595
    .end local v2    # "i":I
    .end local v3
    :cond_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/4h;II)V
    .locals 1

    .line 68596
    if-ne p2, p3, :cond_0

    .line 68597
    return-void

    .line 68598
    :cond_0
    if-le p3, p2, :cond_1

    .line 68599
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 68600
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A14(ILcom/facebook/ads/redexgen/X/4h;)V

    .line 68601
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 68602
    .restart local v0    # "i":I
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 68603
    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A14(ILcom/facebook/ads/redexgen/X/4h;)V

    .line 68604
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 68605
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;)V
    .locals 4

    .line 68606
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A09:Z

    if-eqz v0, :cond_1

    .line 68607
    :cond_0
    return-void

    .line 68608
    :cond_1
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "M7iaeQoExhHh03f7x1XNzmreS2Lq1zJK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3weclwG7n9RXAySrMV3Jn51LrKgutG4n"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    .line 68609
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "CiNTyTfZO3PW6tP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A0b(Lcom/facebook/ads/redexgen/X/4h;I)V

    goto :goto_1

    .line 68610
    :cond_4
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0c(Lcom/facebook/ads/redexgen/X/4h;I)V

    .line 68611
    :goto_1
    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;II)V
    .locals 13

    .line 68612
    move-object v3, p0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4o;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68613
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A26()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68614
    :cond_0
    return-void

    .line 68615
    :cond_1
    const/4 v5, 0x0

    .local v3, "scrapExtraStart":I
    const/4 v4, 0x0

    .line 68616
    .local v4, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4h;->A0J()Ljava/util/List;

    move-result-object v8

    .line 68617
    .local v5, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 68618
    .local v6, "scrapSize":I
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v7

    .line 68619
    .local v8, "firstChildPos":I
    const/4 v6, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v6, v9, :cond_6

    .line 68620
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/4r;

    .line 68621
    .local v10, "scrap":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68622
    .end local v10    # "scrap":Lcom/facebook/ads/redexgen/X/4r;
    .end local v11
    .end local v12
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68623
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4r;->A0I()I

    move-result v0

    .line 68624
    .local v11, "position":I
    const/4 v12, 0x1

    if-ge v0, v7, :cond_4

    const/4 v10, 0x1

    :goto_2
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    const/4 v0, -0x1

    if-eq v10, v1, :cond_3

    .line 68625
    const/4 v12, -0x1

    .line 68626
    .local v12, "direction":I
    :cond_3
    if-ne v12, v0, :cond_5

    .line 68627
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_1

    .line 68628
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 68629
    :cond_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_1

    .line 68630
    .end local v9    # "i":I
    :cond_6
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput-object v8, v0, Lcom/facebook/ads/redexgen/X/4E;->A08:Ljava/util/List;

    .line 68631
    if-lez v5, :cond_7

    .line 68632
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0G()Landroid/view/View;

    move-result-object v0

    .line 68633
    .local v9, "anchor":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0X(II)V

    .line 68634
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68635
    iput v2, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68636
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4E;->A04()V

    .line 68637
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68638
    :cond_7
    if-lez v4, :cond_8

    .line 68639
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0F()Landroid/view/View;

    move-result-object v0

    .line 68640
    .restart local v9    # "anchor":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p4

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0W(II)V

    .line 68641
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v4, v0, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68642
    iput v2, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68643
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4E;->A04()V

    .line 68644
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68645
    :cond_8
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A08:Ljava/util/List;

    .line 68646
    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4C;)V
    .locals 4

    .line 68647
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A0k(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4C;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68648
    return-void

    .line 68649
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A0j(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4C;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "XDJ2jDWhUW9a7iN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 68650
    return-void

    .line 68651
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4C;->A02()V

    .line 68652
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0C:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p3, Lcom/facebook/ads/redexgen/X/4C;->A01:I

    .line 68653
    return-void

    .line 68654
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0h(Z)V
    .locals 1

    .line 68655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A22(Ljava/lang/String;)V

    .line 68656
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0A:Z

    if-ne p1, v0, :cond_0

    .line 68657
    return-void

    .line 68658
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0A:Z

    .line 68659
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0y()V

    .line 68660
    return-void
.end method

.method private final A0i()Z
    .locals 1

    .line 68661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68662
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A06()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 68663
    :goto_0
    return v0

    .line 68664
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0j(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4C;)Z
    .locals 5

    .line 68665
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 68666
    return v4

    .line 68667
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0s()Landroid/view/View;

    move-result-object v1

    .line 68668
    .local v0, "focused":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1, p2}, Lcom/facebook/ads/redexgen/X/4C;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4o;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68669
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/4C;->A05(Landroid/view/View;)V

    .line 68670
    return v3

    .line 68671
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0C:Z

    if-eq v1, v0, :cond_2

    .line 68672
    return v4

    .line 68673
    :cond_2
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    if-eqz v0, :cond_7

    .line 68674
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0O(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;

    move-result-object v2

    .line 68675
    .local v3, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_8

    .line 68676
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/4C;->A04(Landroid/view/View;)V

    .line 68677
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A26()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68679
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68680
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68681
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68682
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 68683
    .local v1, "notVisible":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 68684
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    if-eqz v0, :cond_6

    .line 68685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    .line 68686
    :goto_1
    iput v0, p3, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    .line 68687
    .end local v1    # "notVisible":Z
    :cond_5
    return v3

    .line 68688
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    goto :goto_1

    .line 68689
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0P(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 68690
    :cond_8
    return v4
.end method

.method private A0k(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4C;)Z
    .locals 7

    .line 68691
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    .line 68692
    :cond_0
    return v6

    .line 68693
    :cond_1
    const/high16 v1, -0x80000000

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    if-lt v3, v0, :cond_3

    .line 68694
    :cond_2
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    .line 68695
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    .line 68696
    return v6

    .line 68697
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    iput v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A01:I

    .line 68698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    .line 68700
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    if-eqz v0, :cond_4

    .line 68701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    .line 68702
    :goto_0
    return v3

    .line 68703
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    goto :goto_0

    .line 68704
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    if-ne v0, v1, :cond_10

    .line 68705
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A1q(I)Landroid/view/View;

    move-result-object v2

    .line 68706
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 68707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0D(Landroid/view/View;)I

    move-result v1

    .line 68708
    .local v3, "childSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v0

    if-le v1, v0, :cond_6

    .line 68709
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4C;->A02()V

    .line 68710
    return v3

    .line 68711
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68712
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 68713
    .local v4, "startGap":I
    if-gez v1, :cond_7

    .line 68714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    .line 68715
    iput-boolean v6, p2, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    .line 68716
    return v3

    .line 68717
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68718
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 68719
    .local v1, "endGap":I
    if-gez v1, :cond_d

    .line 68720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    .line 68721
    iput-boolean v3, p2, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    .line 68722
    return v3

    .line 68723
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-lez v0, :cond_c

    .line 68724
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    .line 68725
    .local v3, "pos":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    if-ge v0, v1, :cond_9

    const/4 v5, 0x1

    :goto_1
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "1tNDA9T9nSDYektAgKE77gOe81bMFJSk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "TZYqXNdWGZVKxzfIQyf7YZEk7yb7IRTm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_b

    const/4 v6, 0x1

    :cond_b
    iput-boolean v6, p2, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    .line 68726
    .end local v3    # "pos":I
    :cond_c
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4C;->A02()V

    goto :goto_3

    .line 68727
    :cond_d
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    if-eqz v0, :cond_e

    .line 68728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_f

    .line 68729
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "ZbIhQvVoqDIGDPkO0OlvW9zioDplzu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A05()I

    move-result v0

    add-int/2addr v4, v0

    .line 68730
    :goto_2
    iput v4, p2, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    .line 68731
    .end local v1    # "endGap":I
    .end local v3
    .end local v4    # "startGap":I
    :goto_3
    return v3

    .line 68732
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v4

    goto :goto_2

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68733
    .end local v0    # "child":Landroid/view/View;
    :cond_10
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    .line 68734
    if-eqz v0, :cond_11

    .line 68735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    .line 68736
    :goto_4
    return v3

    .line 68737
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    goto :goto_4
.end method


# virtual methods
.method public A1h(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 2

    .line 68738
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 68739
    const/4 v0, 0x0

    return v0

    .line 68740
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A04(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    return v0
.end method

.method public A1i(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 4

    .line 68741
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-nez v0, :cond_0

    .line 68742
    const/4 v0, 0x0

    return v0

    .line 68743
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A04(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "CDnF1shpb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3
.end method

.method public final A1j(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 68744
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A09(Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    return v0
.end method

.method public final A1k(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 68745
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A0A(Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 68746
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A0B(Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    return v0
.end method

.method public final A1m(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 68747
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A09(Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    return v0
.end method

.method public final A1n(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 68748
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A0A(Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    return v0
.end method

.method public final A1o(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 68749
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A0B(Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    return v0
.end method

.method public final A1p()Landroid/os/Parcelable;
    .locals 4

    .line 68750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 68751
    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;)V

    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 68752
    :cond_0
    new-instance v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 68753
    .local v0, "state":Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-lez v0, :cond_2

    .line 68754
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68755
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    xor-int/2addr v1, v0

    .line 68756
    .local v1, "didLayoutFromEnd":Z
    iput-boolean v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 68757
    if-eqz v1, :cond_1

    .line 68758
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0F()Landroid/view/View;

    move-result-object v2

    .line 68759
    .local v2, "refChild":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68760
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    .line 68761
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 68762
    .end local v2    # "refChild":Landroid/view/View;
    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 68763
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0G()Landroid/view/View;

    move-result-object v1

    .line 68764
    .restart local v2    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 68765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68766
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    goto :goto_0

    .line 68767
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    goto :goto_0
.end method

.method public final A1q(I)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68768
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v1

    .line 68769
    .local v0, "childCount":I
    if-nez v1, :cond_0

    .line 68770
    const/4 v0, 0x0

    return-object v0

    .line 68771
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    .line 68772
    .local v1, "firstChild":I
    sub-int v0, p1, v0

    .line 68773
    .local p0, "viewPosition":I
    if-ltz v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 68774
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v1

    .line 68775
    .local p1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 68776
    return-object v1

    .line 68777
    .end local p1    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A1q(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public A1r(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;
    .locals 7

    .line 68778
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0U()V

    .line 68779
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 68780
    return-object v6

    .line 68781
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A2B(I)I

    move-result v3

    .line 68782
    .local v0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_1

    .line 68783
    return-object v6

    .line 68784
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68785
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68786
    const v1, 0x3eaaaaab

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0B()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 68787
    .local v3, "maxScroll":I
    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v0, p4}, Lcom/facebook/ads/redexgen/X/Ye;->A0Y(IIZLcom/facebook/ads/redexgen/X/4o;)V

    .line 68788
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v2, v1, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    .line 68789
    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A0B:Z

    .line 68790
    const/4 v0, 0x1

    invoke-direct {p0, p3, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68791
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 68792
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Ye;->A0N(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;

    move-result-object v5

    .line 68793
    .local v4, "nextCandidate":Landroid/view/View;
    .restart local v4    # "nextCandidate":Landroid/view/View;
    :goto_0
    if-ne v3, v0, :cond_2

    .line 68794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0G()Landroid/view/View;

    move-result-object v4

    .line 68795
    .local v2, "nextFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "JGtMOr7ZHjmwUVfbInfaZmEhr0nxGN38"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "jCrgpf8bwQbyd1C9u6FfAt5OnK6gBhSa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 68796
    if-nez v5, :cond_4

    .line 68797
    return-object v6

    .line 68798
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0F()Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 68799
    .end local v4    # "nextCandidate":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Ye;->A0M(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 68800
    :cond_4
    return-object v4

    .line 68801
    :cond_5
    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1s()Lcom/facebook/ads/redexgen/X/4a;
    .locals 2

    .line 68802
    const/4 v1, -0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4a;-><init>(II)V

    return-object v0
.end method

.method public A1t(I)V
    .locals 1

    .line 68803
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    .line 68804
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    .line 68805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 68806
    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 68807
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0y()V

    .line 68808
    return-void
.end method

.method public final A1u(IILcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 3

    .line 68809
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-nez v0, :cond_1

    .line 68810
    .local v0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 68811
    .end local v2
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ye;
    :cond_0
    return-void

    .line 68812
    :cond_1
    move p1, p2

    goto :goto_0

    .line 68813
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68814
    const/4 v2, 0x1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    .line 68815
    .local v2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 68816
    .local p0, "absDy":I
    invoke-direct {p0, v1, v0, v2, p3}, Lcom/facebook/ads/redexgen/X/Ye;->A0Y(IIZLcom/facebook/ads/redexgen/X/4o;)V

    .line 68817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-virtual {p0, p3, v0, p4}, Lcom/facebook/ads/redexgen/X/Ye;->A2I(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4X;)V

    .line 68818
    return-void

    .line 68819
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final A1v(ILcom/facebook/ads/redexgen/X/4X;)V
    .locals 7

    .line 68820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v4, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 68822
    .local v0, "fromEnd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 68823
    .local v3, "anchorPos":I
    .restart local v3    # "anchorPos":I
    :goto_0
    if-eqz v4, :cond_0

    .line 68824
    .local v2, "direction":I
    .local v4, "targetPos":I
    :goto_1
    const/4 v1, 0x0

    .local v5, "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A06:I

    if-ge v1, v0, :cond_5

    .line 68825
    if-ltz v2, :cond_5

    if-ge v2, p1, :cond_5

    .line 68826
    invoke-interface {p2, v2, v6}, Lcom/facebook/ads/redexgen/X/4X;->A3H(II)V

    .line 68827
    add-int/2addr v2, v5

    .line 68828
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68829
    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 68830
    .end local v0    # "fromEnd":Z
    .end local v3    # "anchorPos":I
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0U()V

    .line 68831
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    .line 68832
    .restart local v0    # "fromEnd":Z
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "j12HxmlCdcFNOCf90EDMVBFIs8rsuaoM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v3, v5, :cond_4

    .line 68833
    if-eqz v4, :cond_3

    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 68834
    .end local v3
    :cond_4
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    goto :goto_0

    .line 68835
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method public final A1w(Landroid/os/Parcelable;)V
    .locals 4

    .line 68836
    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_0

    .line 68837
    return-void

    .line 68838
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68839
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "tHEWx5U9TGfOm0s3U2zrO5nR7UMaVIoI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 68840
    return-void

    .line 68841
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 68842
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "tm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 68843
    .local v1, "state":Landroid/os/Parcelable;
    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_4

    .line 68844
    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 68845
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0y()V

    .line 68846
    :cond_4
    return-void
.end method

.method public final A1x(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 68847
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A1x(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 68848
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-lez v0, :cond_0

    .line 68849
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A28()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 68850
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A29()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "9E5bhv9RVKulu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 68851
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1y(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)V
    .locals 9

    .line 68852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    if-eq v0, v4, :cond_1

    .line 68853
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    if-nez v0, :cond_1

    .line 68854
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A1I(Lcom/facebook/ads/redexgen/X/4h;)V

    .line 68855
    return-void

    .line 68856
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    .line 68858
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 68859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/4E;->A0B:Z

    .line 68860
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0U()V

    .line 68861
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0s()Landroid/view/View;

    move-result-object v5

    .line 68862
    .local v0, "focused":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4C;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_15

    .line 68863
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4C;->A03()V

    .line 68864
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0C:Z

    xor-int/2addr v1, v0

    iput-boolean v1, v5, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    .line 68865
    invoke-direct {p0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/Ye;->A0g(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4C;)V

    .line 68866
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_17

    sget-object v5, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "pP9DXN24lJAGcvrzmJLzNvbz"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    iput-boolean v2, v6, Lcom/facebook/ads/redexgen/X/4C;->A03:Z

    .line 68867
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Ye;->A0C(Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v7

    .line 68868
    .local v3, "extra":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A04:I

    if-ltz v0, :cond_14

    .line 68869
    .local v5, "extraForEnd":I
    const/4 v6, 0x0

    .line 68870
    .local v6, "extraForStart":I
    .restart local v5    # "extraForEnd":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/2addr v6, v0

    .line 68871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    add-int/2addr v7, v0

    .line 68872
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    sget-object v5, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v5, v0

    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v5, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "HnPzY03honFOjhYT25K5WFAFMhFIclok"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    if-eq v8, v4, :cond_5

    :goto_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_5

    .line 68873
    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/Ye;->A1q(I)Landroid/view/View;

    move-result-object v1

    .line 68874
    .local v7, "existing":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 68875
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_12

    .line 68876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68877
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v8, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x4

    aget-object v5, v5, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    .line 68878
    .local v8, "current":I
    sget-object v5, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "r3FnQil1r32czyLALUutLd0XCkxYZ4G"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    sub-int/2addr v8, v0

    .line 68879
    .local p0, "upcomingOffset":I
    .restart local p0    # "upcomingOffset":I
    :goto_3
    if-lez v8, :cond_10

    .line 68880
    add-int/2addr v6, v8

    .line 68881
    .end local v7    # "existing":Landroid/view/View;
    .end local v8    # "current":I
    .end local p0    # "upcomingOffset":I
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    if-eqz v0, :cond_e

    .line 68882
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    .line 68883
    .restart local v1
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/Ye;->A2G(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4C;I)V

    .line 68884
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A1H(Lcom/facebook/ads/redexgen/X/4h;)V

    .line 68885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A09:Z

    .line 68886
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4E;->A0A:Z

    .line 68887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4C;->A02:Z

    if-eqz v0, :cond_c

    .line 68888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0a(Lcom/facebook/ads/redexgen/X/4C;)V

    .line 68889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68890
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68892
    .local v7, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 68893
    .local v8, "firstElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    if-lez v0, :cond_7

    .line 68894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    add-int/2addr v7, v0

    .line 68895
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0Z(Lcom/facebook/ads/redexgen/X/4C;)V

    .line 68896
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v7, v5, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68897
    iget v1, v5, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A03:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 68898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68900
    .local p0, "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    if-lez v0, :cond_8

    .line 68901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68902
    invoke-direct {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/Ye;->A0X(II)V

    .line 68903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68904
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68906
    .end local v7    # "startOffset":I
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-lez v0, :cond_9

    .line 68907
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0C:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 68908
    invoke-direct {p0, v5, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A05(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Z)I

    move-result v0

    .line 68909
    .local v4, "fixOffset":I
    add-int/2addr v6, v0

    .line 68910
    add-int/2addr v5, v0

    .line 68911
    invoke-direct {p0, v6, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A06(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Z)I

    move-result v0

    .line 68912
    .end local v4    # "fixOffset":I
    .local v2, "fixOffset":I
    add-int/2addr v6, v0

    .line 68913
    add-int/2addr v5, v0

    .line 68914
    .end local v2    # "fixOffset":I
    .end local v2
    :cond_9
    :goto_7
    invoke-direct {p0, p1, p2, v6, v5}, Lcom/facebook/ads/redexgen/X/Ye;->A0f(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;II)V

    .line 68915
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-nez v0, :cond_a

    .line 68916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()V

    .line 68917
    :goto_8
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Z

    .line 68918
    return-void

    .line 68919
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4C;->A03()V

    goto :goto_8

    .line 68920
    :cond_b
    invoke-direct {p0, v6, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A06(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Z)I

    move-result v0

    .line 68921
    .restart local v4    # "fixOffset":I
    add-int/2addr v6, v0

    .line 68922
    add-int/2addr v5, v0

    .line 68923
    invoke-direct {p0, v5, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A05(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Z)I

    move-result v0

    .line 68924
    .end local v4    # "fixOffset":I
    .restart local v2    # "fixOffset":I
    add-int/2addr v6, v0

    .line 68925
    add-int/2addr v5, v0

    goto :goto_7

    .line 68926
    .end local v7
    .end local p0    # "endOffset":I
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0Z(Lcom/facebook/ads/redexgen/X/4C;)V

    .line 68927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68928
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68930
    .restart local p0    # "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 68931
    .local v7, "lastElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    if-lez v0, :cond_d

    .line 68932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    add-int/2addr v6, v0

    .line 68933
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0a(Lcom/facebook/ads/redexgen/X/4C;)V

    .line 68934
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v6, v7, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68935
    iget v1, v7, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A03:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 68936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 68938
    .local v8, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    if-lez v0, :cond_8

    .line 68939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4E;->A00:I

    .line 68940
    invoke-direct {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/Ye;->A0W(II)V

    .line 68941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4E;->A02:I

    .line 68942
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A08(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4o;Z)I

    .line 68943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    goto/16 :goto_6

    .line 68944
    .end local v1
    :cond_e
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eqz v0, :cond_f

    goto/16 :goto_5

    .line 68945
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 68946
    :cond_10
    sub-int/2addr v7, v8

    goto/16 :goto_4

    .line 68947
    .local v8, "current":I
    :cond_11
    sget-object v5, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "sdmiyO1ExKOYMO2wbr6XNnW0K6t4WoaH"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "ty9AfnxQn4ghzZPCSImQPyrccPhuEwJu"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    sub-int/2addr v8, v0

    .local p0, "upcomingOffset":I
    goto/16 :goto_3

    .line 68948
    .end local v8    # "current":I
    .end local p0    # "upcomingOffset":I
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68949
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 68950
    .restart local v8    # "current":I
    iget v8, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    sub-int/2addr v8, v1

    goto/16 :goto_3

    :cond_13
    sget-object v5, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "wwbDuuRcKwQkcLvBFtW9wuMbOUuGYFzY"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "YequbpJjhMyIl9uyXvP2gytASLo9xZ7L"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    if-eq v8, v4, :cond_5

    goto/16 :goto_2

    .line 68951
    .end local v5    # "extraForEnd":I
    .end local v6    # "extraForStart":I
    :cond_14
    move v6, v7

    .line 68952
    .restart local v6    # "extraForStart":I
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 68953
    :cond_15
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68954
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-ge v1, v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68955
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 68956
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 68957
    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4C;->A05(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4o;)V
    .locals 1

    .line 68958
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A1z(Lcom/facebook/ads/redexgen/X/4o;)V

    .line 68959
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 68960
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    .line 68961
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    .line 68962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0D:Lcom/facebook/ads/redexgen/X/4C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4C;->A03()V

    .line 68963
    return-void
.end method

.method public final A20(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4h;)V
    .locals 1

    .line 68964
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A20(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4h;)V

    .line 68965
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A09:Z

    if-eqz v0, :cond_0

    .line 68966
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A1I(Lcom/facebook/ads/redexgen/X/4h;)V

    .line 68967
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4h;->A0P()V

    .line 68968
    :cond_0
    return-void
.end method

.method public A21(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4o;I)V
    .locals 2

    .line 68969
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E9;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Landroid/content/Context;)V

    .line 68970
    .local v0, "linearSmoothScroller":Lcom/facebook/ads/redexgen/X/Yd;
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4m;->A0A(I)V

    .line 68971
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1L(Lcom/facebook/ads/redexgen/X/4m;)V

    .line 68972
    return-void
.end method

.method public final A22(Ljava/lang/String;)V
    .locals 1

    .line 68973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 68974
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A22(Ljava/lang/String;)V

    .line 68975
    :cond_0
    return-void
.end method

.method public final A23()Z
    .locals 4

    .line 68976
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0Y()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 68977
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0i()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 68978
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A1W()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "ZYU5Lu8KJdo1W8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 68979
    :goto_0
    return v0

    .line 68980
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A24()Z
    .locals 1

    .line 68981
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A25()Z
    .locals 2

    .line 68982
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A26()Z
    .locals 2

    .line 68983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A0C:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A27()I
    .locals 3

    .line 68984
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 68985
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A28()I
    .locals 3

    .line 68986
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 68987
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A29()I
    .locals 4

    .line 68988
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 68989
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public final A2A()I
    .locals 1

    .line 68990
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    return v0
.end method

.method public final A2B(I)I
    .locals 7

    .line 68991
    const/4 v6, -0x1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/16 v5, 0x11

    const/high16 v4, -0x80000000

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "6DQtaB3lJkGKNvmH8s9QQc68TsOBLDE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p1, v5, :cond_8

    const/16 v0, 0x21

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    .line 68992
    return v4

    .line 68993
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-ne v0, v3, :cond_2

    :goto_0
    return v3

    .line 68994
    :cond_2
    const/high16 v3, -0x80000000

    goto :goto_0

    .line 68995
    :cond_3
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "iK4U0ZRXzEtdW2fzfe8Bf3AGjQ0TqpV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_5

    :goto_1
    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "iGul3AgWfaQLWccPz7lC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_5

    goto :goto_1

    .line 68996
    :cond_5
    const/high16 v3, -0x80000000

    goto :goto_1

    .line 68997
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-ne v0, v3, :cond_7

    :goto_2
    return v6

    .line 68998
    :cond_7
    const/high16 v6, -0x80000000

    goto :goto_2

    .line 68999
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-nez v0, :cond_9

    :goto_3
    return v6

    .line 69000
    :cond_9
    const/high16 v6, -0x80000000

    goto :goto_3

    .line 69001
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-ne v0, v3, :cond_b

    .line 69002
    return v3

    .line 69003
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2J()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    if-eqz v4, :cond_d

    .line 69004
    :goto_4
    return v6

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "RrOYqAD7qkiKfoMMpmv8yvTfnugso6lX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bATvX0yF7VRTLnTu9UqtYEiONslIi7NA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_d

    goto :goto_4

    .line 69005
    :cond_d
    return v3

    .line 69006
    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-ne v0, v3, :cond_f

    .line 69007
    return v6

    .line 69008
    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2J()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "oHMhsTCUvi8O8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    .line 69009
    :goto_5
    return v3

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "cASVkZ3y2DetEF9G8otARsSwnjimgRtg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wDGntkgp6XogcOY7rYz8EKhCse1aHWOv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    goto :goto_5

    .line 69010
    :cond_11
    return v6
.end method

.method public A2C(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;III)Landroid/view/View;
    .locals 7

    .line 69011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2D()V

    .line 69012
    const/4 v6, 0x0

    .line 69013
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 69014
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v4

    .line 69015
    .local v2, "boundsStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    .line 69016
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_3

    const/4 v2, 0x1

    .line 69017
    .local v5, "i":I
    :goto_0
    if-eq p3, p4, :cond_5

    .line 69018
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v1

    .line 69019
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    .line 69020
    .local p0, "position":I
    if-ltz v0, :cond_0

    if-ge v0, p5, :cond_0

    .line 69021
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4a;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69022
    if-nez v6, :cond_0

    .line 69023
    move-object v6, v1

    .line 69024
    .end local v6    # "view":Landroid/view/View;
    .end local p0    # "position":I
    :cond_0
    :goto_1
    add-int/2addr p3, v2

    goto :goto_0

    .line 69025
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0F(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 69026
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0C(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 69027
    :cond_2
    if-nez v5, :cond_0

    .line 69028
    move-object v5, v1

    goto :goto_1

    .line 69029
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 69030
    :cond_4
    return-object v1

    .line 69031
    .end local v5    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    return-object v5

    :cond_6
    move-object v5, v6

    goto :goto_2
.end method

.method public final A2D()V
    .locals 1

    .line 69032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    if-nez v0, :cond_0

    .line 69033
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A0S()Lcom/facebook/ads/redexgen/X/4E;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A07:Lcom/facebook/ads/redexgen/X/4E;

    .line 69034
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    if-nez v0, :cond_1

    .line 69035
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A02(Lcom/facebook/ads/redexgen/X/4Z;I)Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 69036
    :cond_1
    return-void
.end method

.method public final A2E(I)V
    .locals 4

    .line 69037
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 69038
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "wMuOUB68W5cmyVCUMue198JFnL9Wkeot"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A22(Ljava/lang/String;)V

    .line 69039
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-ne p1, v0, :cond_2

    .line 69040
    return-void

    .line 69041
    :cond_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    .line 69042
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 69043
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0y()V

    .line 69044
    return-void

    .line 69045
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0T(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A2F(II)V
    .locals 3

    .line 69046
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ye;->A01:I

    .line 69047
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ye;->A02:I

    .line 69048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 69049
    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 69050
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0y()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69051
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "tDl3kZGUKMTs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void
.end method

.method public A2G(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4C;I)V
    .locals 0

    .line 69052
    return-void
.end method

.method public A2H(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4D;)V
    .locals 14

    .line 69053
    move-object v7, p0

    move-object/from16 v5, p3

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4E;->A03(Lcom/facebook/ads/redexgen/X/4h;)Landroid/view/View;

    move-result-object v9

    .line 69054
    .local v10, "view":Landroid/view/View;
    const/4 v3, 0x1

    move-object/from16 v4, p4

    if-nez v9, :cond_0

    .line 69055
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4D;->A01:Z

    .line 69056
    return-void

    .line 69057
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 69058
    .local v12, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/4E;->A08:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-nez v0, :cond_9

    .line 69059
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    if-ne v0, v6, :cond_8

    const/4 v0, 0x1

    :goto_0
    if-ne v1, v0, :cond_7

    .line 69060
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4Z;->A17(Landroid/view/View;)V

    .line 69061
    :goto_1
    invoke-virtual {v7, v9, v8, v8}, Lcom/facebook/ads/redexgen/X/4Z;->A1A(Landroid/view/View;II)V

    .line 69062
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/4J;->A0D(Landroid/view/View;)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    .line 69063
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    if-ne v0, v3, :cond_5

    .line 69064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ye;->A2J()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69065
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v12, v0

    .line 69066
    .local v0, "right":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/4J;->A0E(Landroid/view/View;)I

    move-result v0

    sub-int v10, v12, v0

    .line 69067
    .local v2, "left":I
    .restart local v0    # "right":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    if-ne v0, v6, :cond_3

    .line 69068
    iget v13, v5, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 69069
    .local v1, "bottom":I
    iget v11, v5, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    sub-int/2addr v11, v0

    .line 69070
    .local v3, "top":I
    .end local v0    # "right":I
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .local v13, "left":I
    .local p0, "top":I
    .local p1, "right":I
    .local p2, "bottom":I
    :goto_3
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4Z;->A1B(Landroid/view/View;IIII)V

    .line 69071
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4a;->A02()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4a;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69072
    :cond_1
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4D;->A03:Z

    .line 69073
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A02:Z

    .line 69074
    return-void

    .line 69075
    .end local v1
    .end local v3    # "top":I
    :cond_3
    iget v11, v5, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 69076
    .local v1, "top":I
    iget v13, v5, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    add-int/2addr v13, v0

    .local v3, "bottom":I
    goto :goto_3

    .line 69077
    .end local v0
    .end local v2
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v10

    .line 69078
    .restart local v2    # "left":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/4J;->A0E(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    goto :goto_2

    .line 69079
    .end local v0
    .end local v1    # "top":I
    .end local v2    # "left":I
    .end local v3    # "bottom":I
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v11

    .line 69080
    .local v0, "top":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Ye;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/4J;->A0E(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    .line 69081
    .local v2, "bottom":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    if-ne v0, v6, :cond_6

    .line 69082
    iget v12, v5, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 69083
    .local v1, "right":I
    iget v10, v5, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    sub-int/2addr v10, v0

    .local v3, "left":I
    goto :goto_3

    .line 69084
    .end local v1    # "right":I
    .end local v3    # "left":I
    :cond_6
    iget v10, v5, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    .line 69085
    .local v1, "left":I
    iget v12, v5, Lcom/facebook/ads/redexgen/X/4E;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4D;->A00:I

    add-int/2addr v12, v0

    goto :goto_3

    .line 69086
    :cond_7
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4Z;->A19(Landroid/view/View;I)V

    goto :goto_1

    .line 69087
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 69088
    :cond_9
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/4E;->A05:I

    if-ne v0, v6, :cond_a

    const/4 v0, 0x1

    :goto_4
    if-ne v1, v0, :cond_b

    .line 69089
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4Z;->A16(Landroid/view/View;)V

    goto/16 :goto_1

    .line 69090
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 69091
    :cond_b
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4Z;->A18(Landroid/view/View;I)V

    goto/16 :goto_1
.end method

.method public A2I(Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 3

    .line 69092
    iget v2, p2, Lcom/facebook/ads/redexgen/X/4E;->A01:I

    .line 69093
    .local v0, "pos":I
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4o;->A03()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 69094
    const/4 v1, 0x0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4E;->A07:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4X;->A3H(II)V

    .line 69095
    :cond_0
    return-void
.end method

.method public final A2J()Z
    .locals 2

    .line 69096
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0a()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A48(I)Landroid/graphics/PointF;
    .locals 6

    .line 69097
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    if-nez v0, :cond_0

    .line 69098
    const/4 v0, 0x0

    return-object v0

    .line 69099
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v0

    .line 69100
    .local v1, "firstChildPos":I
    const/4 v5, 0x1

    if-ge p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ye;->A05:Z

    if-eq v1, v0, :cond_2

    const/4 v5, -0x1

    .line 69101
    .local v0, "direction":I
    :cond_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ye;->A00:I

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ye;->A0G:[Ljava/lang/String;

    const-string v1, "5EjIyJt0kzQOvAP28HqeuGPqaebz9kN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_3

    .line 69102
    int-to-float v1, v5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 69103
    :cond_3
    int-to-float v1, v5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
