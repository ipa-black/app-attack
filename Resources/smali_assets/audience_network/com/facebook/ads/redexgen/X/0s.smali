.class public final Lcom/facebook/ads/redexgen/X/0s;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/0n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2402
    sget-object v0, Lcom/facebook/ads/redexgen/X/0s;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-eqz v0, :cond_0

    .line 2403
    return-object v0

    .line 2404
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/0r;->A00:[I

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    .line 2405
    const/4 v0, 0x0

    return-object v0

    .line 2406
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/F6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/F6;-><init>()V

    return-object v0

    .line 2407
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/F9;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/F9;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    return-object v0

    .line 2408
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/a7;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    return-object v0

    .line 2409
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/a9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/a9;-><init>()V

    return-object v0

    .line 2410
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>()V

    return-object v0
.end method
