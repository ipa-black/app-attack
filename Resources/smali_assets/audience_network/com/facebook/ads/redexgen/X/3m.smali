.class public final Lcom/facebook/ads/redexgen/X/3m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Fs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/aw;,
        Lcom/facebook/ads/redexgen/X/av;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/b6;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/b5;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/aw;

.field public final A04:Lcom/facebook/ads/redexgen/X/aw;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/av;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 10430
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "okBgSYhQGmV0QyU32992deBLR6XrdaZQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZDdZ5rthnspWTI3gzSJHBR7aYCyAxUsq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EsXM2pc2I6J3hYC1V9OQRTCtALa8wmqB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DKA0ex9266tXplnV6PUb8C0vdYHWYjG4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tBgdKBpc94v7LWesC8aTGIaQqZdJYwjy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iZindrm9v6DBRttH7DMzAa7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "d9237vu9oQoOcpvZwewcjFUDz74P7MIA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3m;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3m;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/3m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3m;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b5;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/b5;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    .line 10433
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/aw;-><init>(Lcom/facebook/ads/redexgen/X/ax;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A04:Lcom/facebook/ads/redexgen/X/aw;

    .line 10434
    new-instance v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/aw;-><init>(Lcom/facebook/ads/redexgen/X/ax;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/aw;

    .line 10435
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A05:Ljava/util/List;

    .line 10436
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3m;->A02:Lcom/facebook/ads/redexgen/X/b5;

    .line 10437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A08:Z

    .line 10438
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A07:Z

    .line 10439
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;
    .locals 5
    .param p0    # Lcom/facebook/ads/redexgen/X/av;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10440
    if-eqz p0, :cond_1

    .line 10441
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/av;->A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_1

    .line 10442
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/av;->A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eq v0, v3, :cond_1

    .line 10443
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/av;->A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3m;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3m;->A0A:[Ljava/lang/String;

    const-string v1, "p"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Kr6mbDoiLKwWSgNyXDF2oJW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    if-eq v0, v3, :cond_1

    .line 10444
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/av;->A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v3, :cond_1

    .line 10445
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/av;->A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10446
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x8f

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3m;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/b9;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/av;
    .locals 3

    .line 10447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/av;

    .line 10448
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/av;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A04:Lcom/facebook/ads/redexgen/X/aw;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/aw;->A07(Lcom/facebook/ads/redexgen/X/aw;Lcom/facebook/ads/redexgen/X/b9;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10449
    if-nez v2, :cond_1

    .line 10450
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/av;->A04(J)Lcom/facebook/ads/redexgen/X/av;

    move-result-object v2

    .line 10451
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10452
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/av;->A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10453
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/av;->A05(Lcom/facebook/ads/redexgen/X/av;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10454
    return-object v2

    .line 10455
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/az;->A04:Lcom/facebook/ads/redexgen/X/az;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/av;->A02(Lcom/facebook/ads/redexgen/X/av;Lcom/facebook/ads/redexgen/X/az;)Lcom/facebook/ads/redexgen/X/az;

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3m;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

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

    const/16 v0, 0xc4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3m;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x29t
        0x15t
        0x14t
        0xet
        0x5dt
        0xbt
        0x14t
        0x18t
        0xat
        0xdt
        0x12t
        0x14t
        0x13t
        0x9t
        0x5dt
        0x15t
        0x1ct
        0xet
        0x5dt
        0x13t
        0x12t
        0x9t
        0x5dt
        0x1ft
        0x18t
        0x18t
        0x13t
        0x5dt
        0x10t
        0x18t
        0x1ct
        0xet
        0x8t
        0xft
        0x18t
        0x19t
        0x5dt
        0x12t
        0xft
        0x5dt
        0x14t
        0xet
        0x5dt
        0x1ct
        0x5dt
        0x1at
        0xft
        0x12t
        0x8t
        0xdt
        0x5dt
        0xat
        0x15t
        0x14t
        0x1et
        0x15t
        0x5dt
        0xat
        0x14t
        0x11t
        0x11t
        0x5dt
        0x13t
        0x18t
        0xbt
        0x18t
        0xft
        0x5dt
        0xft
        0x18t
        0x9t
        0x8t
        0xft
        0x13t
        0x5dt
        0x1ct
        0x5dt
        0x10t
        0x18t
        0x1ct
        0xet
        0x8t
        0xft
        0x18t
        0x10t
        0x18t
        0x13t
        0x9t
        0x5dt
        0xet
        0x14t
        0x13t
        0x1et
        0x18t
        0x5dt
        0x14t
        0x9t
        0x5at
        0xet
        0x5dt
        0x10t
        0x1ct
        0x19t
        0x18t
        0x5dt
        0x8t
        0xdt
        0x5dt
        0x12t
        0x1bt
        0x5dt
        0xet
        0x8t
        0x1ft
        0xbt
        0x14t
        0x18t
        0xat
        0xet
        0x5dt
        0x9t
        0x15t
        0x1ct
        0x9t
        0x5dt
        0x1et
        0x12t
        0x8t
        0x11t
        0x19t
        0x5dt
        0x1ft
        0x18t
        0x5dt
        0x12t
        0x1bt
        0x1bt
        0xet
        0x1et
        0xft
        0x18t
        0x18t
        0x13t
        0x76t
        0x7dt
        0x6ft
        0x4bt
        0x7bt
        0x79t
        0x76t
        0x3ft
        0x24t
        0x3dt
        0x3dt
        0x71t
        0x27t
        0x38t
        0x34t
        0x26t
        0x71t
        0x21t
        0x23t
        0x3et
        0x21t
        0x34t
        0x23t
        0x25t
        0x28t
        0x71t
        0x37t
        0x3et
        0x23t
        0x71t
        0x23t
        0x34t
        0x3ct
        0x3et
        0x27t
        0x34t
        0x35t
        0x71t
        0x38t
        0x25t
        0x34t
        0x3ct
        0x71t
        0x7dt
        0x61t
        0x68t
        0x7at
        0x5ct
        0x6bt
        0x7et
        0x61t
        0x7ct
        0x7at
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/aw;)V
    .locals 7

    .line 10456
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/aw;->A02(Lcom/facebook/ads/redexgen/X/aw;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/b9;

    .line 10457
    .local v1, "removed":Lcom/facebook/ads/redexgen/X/b9;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/av;

    .line 10458
    .local v2, "viewProperties":Lcom/facebook/ads/redexgen/X/av;
    if-eqz v4, :cond_1

    .line 10459
    sget-object v0, Lcom/facebook/ads/redexgen/X/az;->A03:Lcom/facebook/ads/redexgen/X/az;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/av;->A02(Lcom/facebook/ads/redexgen/X/av;Lcom/facebook/ads/redexgen/X/az;)Lcom/facebook/ads/redexgen/X/az;

    .line 10460
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/av;->A05(Lcom/facebook/ads/redexgen/X/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10461
    invoke-virtual {v5, p0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/ay;)V

    .line 10462
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A08:Z

    if-eqz v0, :cond_0

    .line 10463
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3m;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/3m;->A0A:[Ljava/lang/String;

    const-string v1, "dCpYPRypiVOHB4OlkAqBqk8EySqTLE1k"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "r3sjB169HJX8vOmMpko73ANLsggTEmi2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10464
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A02:Lcom/facebook/ads/redexgen/X/b5;

    if-eqz v0, :cond_0

    .line 10465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x96

    const/16 v1, 0x24

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3m;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v2, 0xba

    const/16 v1, 0xa

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3m;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10466
    :cond_3
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/aw;)V
    .locals 2

    .line 10467
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/aw;->A03(Lcom/facebook/ads/redexgen/X/aw;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b9;

    .line 10468
    .local v1, "visible":Lcom/facebook/ads/redexgen/X/b9;
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/ay;)V

    .line 10469
    .end local v1    # "visible":Lcom/facebook/ads/redexgen/X/b9;
    goto :goto_0

    .line 10470
    :cond_0
    return-void
.end method


# virtual methods
.method public final A3K(Lcom/facebook/ads/redexgen/X/b9;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .line 10471
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3m;->A01(Lcom/facebook/ads/redexgen/X/b9;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/av;

    .line 10472
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/b9;->A01:Lcom/facebook/ads/redexgen/X/b9;

    .line 10473
    .local v0, "parentViewpointData":Lcom/facebook/ads/redexgen/X/b9;
    sget-object v0, Lcom/facebook/ads/redexgen/X/b9;->A08:Lcom/facebook/ads/redexgen/X/b9;

    if-eq v4, v0, :cond_2

    .line 10474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/aw;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/aw;->A07(Lcom/facebook/ads/redexgen/X/aw;Lcom/facebook/ads/redexgen/X/b9;)Z

    move-result v3

    .line 10475
    .local v1, "isFirstTimeSeenThisPass":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/av;

    .line 10476
    .local v2, "parentViewProperties":Lcom/facebook/ads/redexgen/X/av;
    if-eqz v3, :cond_1

    .line 10477
    if-eqz v2, :cond_3

    .line 10478
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/av;->A05(Lcom/facebook/ads/redexgen/X/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10479
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A07:Z

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/b9;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10480
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/az;->A04:Lcom/facebook/ads/redexgen/X/az;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/av;->A02(Lcom/facebook/ads/redexgen/X/av;Lcom/facebook/ads/redexgen/X/az;)Lcom/facebook/ads/redexgen/X/az;

    .line 10481
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/av;->A05(Lcom/facebook/ads/redexgen/X/av;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10482
    .end local v1    # "isFirstTimeSeenThisPass":Z
    .end local v2    # "parentViewProperties":Lcom/facebook/ads/redexgen/X/av;
    :cond_2
    return-void

    .line 10483
    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/av;->A04(J)Lcom/facebook/ads/redexgen/X/av;

    move-result-object v2

    .line 10484
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/av;->A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10485
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final A3r(JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 10486
    .local p3, "viewportRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:J

    .line 10487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10488
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 10489
    .local v1, "viewportRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A05:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10490
    .end local v1    # "viewportRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 10491
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A04:Lcom/facebook/ads/redexgen/X/aw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aw;->A02(Lcom/facebook/ads/redexgen/X/aw;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b9;

    .line 10492
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/b9;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10493
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/b9;
    goto :goto_1

    .line 10494
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/aw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aw;->A02(Lcom/facebook/ads/redexgen/X/aw;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b9;

    .line 10495
    .restart local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/b9;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10496
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/b9;
    goto :goto_2

    .line 10497
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/av;

    .line 10498
    .local v1, "viewProperties":Lcom/facebook/ads/redexgen/X/av;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/av;->A05(Lcom/facebook/ads/redexgen/X/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10499
    .end local v1    # "viewProperties":Lcom/facebook/ads/redexgen/X/av;
    goto :goto_3

    .line 10500
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A04:Lcom/facebook/ads/redexgen/X/aw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aw;->A05(Lcom/facebook/ads/redexgen/X/aw;)V

    .line 10501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/aw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aw;->A05(Lcom/facebook/ads/redexgen/X/aw;)V

    .line 10502
    return-void
.end method

.method public final A5H()V
    .locals 7

    .line 10503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A04:Lcom/facebook/ads/redexgen/X/aw;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3m;->A05(Lcom/facebook/ads/redexgen/X/aw;)V

    .line 10504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A04:Lcom/facebook/ads/redexgen/X/aw;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3m;->A04(Lcom/facebook/ads/redexgen/X/aw;)V

    .line 10505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/aw;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3m;->A05(Lcom/facebook/ads/redexgen/X/aw;)V

    .line 10506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/aw;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3m;->A04(Lcom/facebook/ads/redexgen/X/aw;)V

    .line 10507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A01:Lcom/facebook/ads/redexgen/X/b6;

    if-eqz v0, :cond_0

    .line 10508
    new-instance v1, Lcom/facebook/ads/redexgen/X/au;

    .line 10509
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3m;->A05:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A04:Lcom/facebook/ads/redexgen/X/aw;

    .line 10510
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aw;->A03(Lcom/facebook/ads/redexgen/X/aw;)Ljava/util/Collection;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/aw;

    .line 10511
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aw;->A03(Lcom/facebook/ads/redexgen/X/aw;)Ljava/util/Collection;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/au;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ay;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 10512
    const/16 v2, 0x8f

    const/4 v1, 0x7

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3m;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10513
    :cond_0
    return-void
.end method

.method public final A6q(Lcom/facebook/ads/redexgen/X/b9;Landroid/graphics/Rect;)V
    .locals 2

    .line 10514
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 10515
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/av;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/av;->A05(Lcom/facebook/ads/redexgen/X/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 10516
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 10517
    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 10518
    :cond_0
    return-void
.end method

.method public final A81(Lcom/facebook/ads/redexgen/X/b9;)Lcom/facebook/ads/redexgen/X/az;
    .locals 2

    .line 10519
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/av;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/av;->A01(Lcom/facebook/ads/redexgen/X/av;)Lcom/facebook/ads/redexgen/X/az;

    move-result-object v0

    return-object v0
.end method

.method public final A83(Landroid/graphics/Rect;)V
    .locals 2

    .line 10520
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 10521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 10522
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 10523
    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 10524
    :cond_0
    return-void
.end method

.method public final A84(Lcom/facebook/ads/redexgen/X/b9;)F
    .locals 5

    .line 10525
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/b9;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/av;

    .line 10526
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/av;
    if-eqz v1, :cond_1

    .line 10527
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3m;->A00(Lcom/facebook/ads/redexgen/X/av;)Landroid/graphics/Rect;

    move-result-object v0

    .line 10528
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v4, v0

    .line 10529
    .local v2, "totalPossibleArea":I
    const/4 v3, 0x0

    .line 10530
    .local v3, "totalVisibleArea":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/av;->A05(Lcom/facebook/ads/redexgen/X/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 10531
    .local p0, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v1, v0

    add-int/2addr v3, v1

    .line 10532
    .end local p0    # "visibleRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 10533
    :cond_0
    int-to-float v1, v3

    int-to-float v0, v4

    div-float/2addr v1, v0

    return v1

    .line 10534
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "totalPossibleArea":I
    .end local v3    # "totalVisibleArea":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final AFB(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/b6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10535
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3m;->A01:Lcom/facebook/ads/redexgen/X/b6;

    .line 10536
    return-void
.end method
