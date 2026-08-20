.class public final Lcom/facebook/ads/redexgen/X/R4;
.super Lcom/facebook/ads/redexgen/X/8V;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/75;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/8V<",
        "Lcom/facebook/ads/redexgen/X/6y;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/75;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/75;)V
    .locals 0

    .line 50039
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 3

    .line 50040
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PP;->A00()I

    move-result v2

    .line 50041
    .local v0, "currentPositionMS":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/75;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/75;->A00:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/75;

    .line 50042
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/75;->A09(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/75;

    .line 50043
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/75;->A09(Lcom/facebook/ads/redexgen/X/75;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/75;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/75;->A00:I

    if-le v1, v0, :cond_0

    .line 50044
    return-void

    .line 50045
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/75;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PT;->A0e(I)V

    .line 50046
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/6y;",
            ">;"
        }
    .end annotation

    .line 50047
    const-class v0, Lcom/facebook/ads/redexgen/X/6y;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 50048
    check-cast p1, Lcom/facebook/ads/redexgen/X/6y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R4;->A00(Lcom/facebook/ads/redexgen/X/6y;)V

    return-void
.end method
