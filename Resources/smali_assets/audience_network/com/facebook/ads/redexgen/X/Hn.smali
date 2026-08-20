.class public final Lcom/facebook/ads/redexgen/X/Hn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Hm;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/Hm;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/Hm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public final A04:I

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Hm;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[Lcom/facebook/ads/redexgen/X/Hm;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 37354
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5DRquCQGg5fv0P6nja7IsOodPXBGhUeG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CLJKgVN4XJask5diLy7MGSBxba0Pch5a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wHftqcE0jDwIdOqBDBC3mNx0B5SBQznZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ol9v552kFRhJ1T6A32CtEuz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "A1CuUzQu9jwyUqSqJ17msfwDUTn6GREa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TbNgrGyLzvQfDvkF0WCoqwQu2K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lR0XC8VxWttqZJTwOmQs4gh4fjIE6f"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2mBuumTUpjmiSXNoBcdi8fBRoWPOanRf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hn;->A07:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hk;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hn;->A08:Ljava/util/Comparator;

    .line 37355
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hl;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hn;->A09:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 37356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37357
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hn;->A04:I

    .line 37358
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Hm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A06:[Lcom/facebook/ads/redexgen/X/Hm;

    .line 37359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    .line 37360
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A00:I

    .line 37361
    return-void
.end method

.method private A00()V
    .locals 3

    .line 37362
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A00:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 37363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hn;->A08:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37364
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Hn;->A00:I

    .line 37365
    :cond_0
    return-void
.end method

.method private A01()V
    .locals 2

    .line 37366
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A00:I

    if-eqz v0, :cond_0

    .line 37367
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hn;->A09:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37368
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A00:I

    .line 37369
    :cond_0
    return-void
.end method


# virtual methods
.method public final A02(F)F
    .locals 5

    .line 37370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hn;->A01()V

    .line 37371
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A03:I

    int-to-float v4, v0

    mul-float/2addr v4, p1

    .line 37372
    .local v0, "desiredWeight":F
    const/4 v3, 0x0

    .line 37373
    .local v1, "accumulatedWeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 37374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hm;

    .line 37375
    .local v3, "currentSample":Lcom/facebook/ads/redexgen/X/Hm;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Hm;->A02:I

    add-int/2addr v3, v0

    .line 37376
    int-to-float v0, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 37377
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Hm;->A00:F

    return v0

    .line 37378
    .end local v3    # "currentSample":Lcom/facebook/ads/redexgen/X/Hm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37379
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_1
    return v0

    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hn;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hn;->A07:[Ljava/lang/String;

    const-string v1, "XkLaJBoD11zWycQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Hm;->A00:F

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A03(IF)V
    .locals 7

    .line 37380
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hn;->A00()V

    .line 37381
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A02:I

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hn;->A06:[Lcom/facebook/ads/redexgen/X/Hm;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A02:I

    aget-object v2, v1, v0

    .line 37382
    .local v0, "newSample":Lcom/facebook/ads/redexgen/X/Hm;
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hn;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A01:I

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Hm;->A01:I

    .line 37383
    iput p1, v2, Lcom/facebook/ads/redexgen/X/Hm;->A02:I

    .line 37384
    iput p2, v2, Lcom/facebook/ads/redexgen/X/Hm;->A00:F

    .line 37385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A03:I

    .line 37387
    :cond_0
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hn;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A04:I

    if-le v1, v0, :cond_4

    .line 37388
    sub-int/2addr v1, v0

    .line 37389
    .local v1, "excessWeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Hm;

    .line 37390
    .local v2, "oldestSample":Lcom/facebook/ads/redexgen/X/Hm;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Hm;->A02:I

    if-gt v0, v1, :cond_2

    .line 37391
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hn;->A03:I

    iget v4, v3, Lcom/facebook/ads/redexgen/X/Hm;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hn;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hn;->A07:[Ljava/lang/String;

    const-string v1, "uvvU8EqEwFGMOcNu2z1EziqDegtCkn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Hn;->A03:I

    .line 37392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37393
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hn;->A02:I

    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    .line 37394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hn;->A06:[Lcom/facebook/ads/redexgen/X/Hm;

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A02:I

    aput-object v3, v1, v2

    goto :goto_1

    .line 37395
    :cond_2
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Hm;->A02:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Hm;->A02:I

    .line 37396
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A03:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A03:I

    goto :goto_1

    .line 37397
    :cond_3
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hm;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Hm;-><init>(Lcom/facebook/ads/redexgen/X/Hk;)V

    goto :goto_0

    .line 37398
    :cond_4
    return-void
.end method
