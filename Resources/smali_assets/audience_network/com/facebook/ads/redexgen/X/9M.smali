.class public final Lcom/facebook/ads/redexgen/X/9M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/9M;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/9l;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 0

    .line 20364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20365
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    .line 20366
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/9M;)I
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/9M;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eq v1, v0, :cond_3

    .line 20368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    :cond_0
    return v3

    .line 20369
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 20370
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 20371
    return v2

    .line 20372
    :cond_4
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    sub-int/2addr v1, v0

    .line 20373
    .local v0, "comparePeriodIndex":I
    if-eqz v1, :cond_5

    .line 20374
    return v1

    .line 20375
    :cond_5
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9M;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/9M;->A01:J

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Hs;->A07(JJ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final A01(IJLjava/lang/Object;)V
    .locals 0

    .line 20376
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    .line 20377
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/9M;->A01:J

    .line 20378
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    .line 20379
    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20380
    check-cast p1, Lcom/facebook/ads/redexgen/X/9M;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9M;->A00(Lcom/facebook/ads/redexgen/X/9M;)I

    move-result v0

    return v0
.end method
