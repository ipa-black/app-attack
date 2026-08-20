.class public final Lcom/facebook/ads/redexgen/X/Eg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaLoadData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJ)V
    .locals 0
    .param p3    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32036
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Eg;->A00:I

    .line 32037
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Eg;->A02:I

    .line 32038
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Eg;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 32039
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Eg;->A01:I

    .line 32040
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Eg;->A06:Ljava/lang/Object;

    .line 32041
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Eg;->A04:J

    .line 32042
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/Eg;->A03:J

    .line 32043
    return-void
.end method
