.class public final Lcom/facebook/ads/redexgen/X/J7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityRecord"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 39540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39541
    iput p1, p0, Lcom/facebook/ads/redexgen/X/J7;->A02:I

    .line 39542
    iput p2, p0, Lcom/facebook/ads/redexgen/X/J7;->A00:I

    .line 39543
    iput p3, p0, Lcom/facebook/ads/redexgen/X/J7;->A01:I

    .line 39544
    return-void
.end method

.method public synthetic constructor <init>(IIILcom/facebook/ads/redexgen/X/J5;)V
    .locals 0

    .line 39545
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/J7;-><init>(III)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/J7;)I
    .locals 0

    .line 39546
    iget p0, p0, Lcom/facebook/ads/redexgen/X/J7;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/J7;)I
    .locals 0

    .line 39547
    iget p0, p0, Lcom/facebook/ads/redexgen/X/J7;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/J7;)I
    .locals 0

    .line 39548
    iget p0, p0, Lcom/facebook/ads/redexgen/X/J7;->A01:I

    return p0
.end method
