.class public final Lcom/facebook/ads/redexgen/X/V4;
.super Lcom/facebook/ads/redexgen/X/FQ;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/FQ;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/V4;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    .line 58227
    invoke-direct/range {p0 .. p10}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 58228
    iput p11, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    .line 58229
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/V4;)I
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/V4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58230
    iget v1, p1, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    if-ge v1, v0, :cond_0

    .line 58231
    const/4 v0, -0x1

    return v0

    .line 58232
    :cond_0
    if-le v1, v0, :cond_1

    .line 58233
    const/4 v0, 0x1

    return v0

    .line 58234
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58235
    check-cast p1, Lcom/facebook/ads/redexgen/X/V4;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/V4;->A00(Lcom/facebook/ads/redexgen/X/V4;)I

    move-result v0

    return v0
.end method
