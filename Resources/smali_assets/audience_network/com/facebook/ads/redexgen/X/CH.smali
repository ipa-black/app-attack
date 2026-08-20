.class public final Lcom/facebook/ads/redexgen/X/CH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track$Transformation;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public final A08:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0A:[Lcom/facebook/ads/redexgen/X/CI;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJJJLcom/facebook/ads/internal/exoplayer2/thirdparty/Format;I[Lcom/facebook/ads/redexgen/X/CI;I[J[J)V
    .locals 0
    .param p11    # [Lcom/facebook/ads/redexgen/X/CI;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25723
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CH;->A00:I

    .line 25724
    iput p2, p0, Lcom/facebook/ads/redexgen/X/CH;->A03:I

    .line 25725
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/CH;->A06:J

    .line 25726
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/CH;->A05:J

    .line 25727
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/CH;->A04:J

    .line 25728
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/CH;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 25729
    iput p10, p0, Lcom/facebook/ads/redexgen/X/CH;->A02:I

    .line 25730
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/CH;->A0A:[Lcom/facebook/ads/redexgen/X/CI;

    .line 25731
    iput p12, p0, Lcom/facebook/ads/redexgen/X/CH;->A01:I

    .line 25732
    iput-object p13, p0, Lcom/facebook/ads/redexgen/X/CH;->A08:[J

    .line 25733
    iput-object p14, p0, Lcom/facebook/ads/redexgen/X/CH;->A09:[J

    .line 25734
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/CI;
    .locals 1

    .line 25735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CH;->A0A:[Lcom/facebook/ads/redexgen/X/CI;

    if-nez v0, :cond_0

    .line 25736
    const/4 v0, 0x0

    .line 25737
    :goto_0
    return-object v0

    .line 25738
    :cond_0
    aget-object v0, v0, p1

    goto :goto_0
.end method
