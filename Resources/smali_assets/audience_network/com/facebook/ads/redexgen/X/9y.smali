.class public final Lcom/facebook/ads/redexgen/X/9y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/9u;

.field public final A06:Lcom/facebook/ads/redexgen/X/ER;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/9u;ILcom/facebook/ads/redexgen/X/ER;JJJ)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21188
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/9y;->A03:J

    .line 21189
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9y;->A05:Lcom/facebook/ads/redexgen/X/9u;

    .line 21190
    iput p4, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    .line 21191
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/9y;->A06:Lcom/facebook/ads/redexgen/X/ER;

    .line 21192
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/9y;->A02:J

    .line 21193
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/9y;->A01:J

    .line 21194
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/9y;->A04:J

    .line 21195
    return-void
.end method
