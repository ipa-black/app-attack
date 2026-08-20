.class public final Lcom/facebook/ads/redexgen/X/9N;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/9Z;

.field public A03:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9K;)V
    .locals 0

    .line 20382
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9N;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9N;)I
    .locals 0

    .line 20383
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9N;)I
    .locals 0

    .line 20384
    iget p0, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/9N;)Z
    .locals 0

    .line 20385
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/9N;->A03:Z

    return p0
.end method


# virtual methods
.method public final A03(I)V
    .locals 1

    .line 20386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    .line 20387
    return-void
.end method

.method public final A04(I)V
    .locals 3

    .line 20388
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    .line 20389
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 20390
    return-void

    .line 20391
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 20392
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9N;->A03:Z

    .line 20393
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:I

    .line 20394
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/9Z;)V
    .locals 1

    .line 20395
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9N;->A02:Lcom/facebook/ads/redexgen/X/9Z;

    .line 20396
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    .line 20397
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A03:Z

    .line 20398
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/9Z;)Z
    .locals 1

    .line 20399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A02:Lcom/facebook/ads/redexgen/X/9Z;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A03:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
