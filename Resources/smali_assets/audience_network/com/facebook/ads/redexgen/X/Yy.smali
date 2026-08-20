.class public final Lcom/facebook/ads/redexgen/X/Yy;
.super Lcom/facebook/ads/redexgen/X/2j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Yx;->A00()Lcom/facebook/ads/redexgen/X/2j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2j<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yx;)V
    .locals 0

    .line 69598
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2j;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 69599
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/2m;->A00:I

    return v0
.end method

.method public final A05(Ljava/lang/Object;)I
    .locals 1

    .line 69600
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A08(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A06(Ljava/lang/Object;)I
    .locals 1

    .line 69601
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A07(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A07(II)Ljava/lang/Object;
    .locals 2

    .line 69602
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/2m;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A08(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 69603
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2m;->A0C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0A()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69604
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    return-object v0
.end method

.method public final A0D()V
    .locals 1

    .line 69605
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->clear()V

    .line 69606
    return-void
.end method

.method public final A0E(I)V
    .locals 1

    .line 69607
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2m;->A0A(I)Ljava/lang/Object;

    .line 69608
    return-void
.end method

.method public final A0F(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 69609
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Yy;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yy;->A00:Lcom/facebook/ads/redexgen/X/Yx;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69610
    return-void
.end method
