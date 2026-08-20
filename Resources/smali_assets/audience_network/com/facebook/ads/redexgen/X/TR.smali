.class public final Lcom/facebook/ads/redexgen/X/TR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/L3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowLineProcessor"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/L0;

.field public final A01:Lcom/facebook/ads/redexgen/X/L1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/L1;II)V
    .locals 1

    .line 54659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54660
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TR;->A01:Lcom/facebook/ads/redexgen/X/L1;

    .line 54661
    new-instance v0, Lcom/facebook/ads/redexgen/X/L0;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/L0;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    .line 54662
    return-void
.end method


# virtual methods
.method public final ADc(Ljava/lang/String;)V
    .locals 2

    .line 54663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/L0;->A04(Ljava/lang/String;)V

    .line 54664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L0;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L3;->A09(Lcom/facebook/ads/redexgen/X/L0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54665
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TR;->A01:Lcom/facebook/ads/redexgen/X/L1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L0;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/L1;->ADc(Ljava/lang/String;)V

    .line 54666
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 54667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L0;->A03()V

    .line 54668
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L0;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L3;->A09(Lcom/facebook/ads/redexgen/X/L0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54670
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TR;->A01:Lcom/facebook/ads/redexgen/X/L1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L0;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/L1;->ADc(Ljava/lang/String;)V

    .line 54671
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/L0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L0;->A03()V

    goto :goto_0

    .line 54672
    :cond_1
    return-void
.end method
