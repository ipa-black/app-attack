.class public final Lcom/facebook/ads/redexgen/X/Em;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/V9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocationNode"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Em;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/GO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public final A03:J

.field public final A04:J


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 32267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32268
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Em;->A04:J

    .line 32269
    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    .line 32270
    return-void
.end method


# virtual methods
.method public final A00(J)I
    .locals 2

    .line 32271
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A04:J

    sub-long/2addr p1, v0

    long-to-int v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GO;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Em;
    .locals 2

    .line 32272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    .line 32273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/Em;

    .line 32274
    .local v1, "temp":Lcom/facebook/ads/redexgen/X/Em;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/Em;

    .line 32275
    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/GO;Lcom/facebook/ads/redexgen/X/Em;)V
    .locals 1

    .line 32276
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    .line 32277
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/Em;

    .line 32278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A02:Z

    .line 32279
    return-void
.end method
