.class public final Lcom/facebook/ads/redexgen/X/Tb;
.super Lcom/facebook/ads/redexgen/X/Jg;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8A;)V
    .locals 2
    .param p3    # Lcom/facebook/ads/redexgen/X/8A;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54761
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jf;->A03:Lcom/facebook/ads/redexgen/X/Jf;

    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/Jg;-><init>(Lcom/facebook/ads/redexgen/X/Jf;Lcom/facebook/ads/redexgen/X/8A;Ljava/lang/String;)V

    .line 54762
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:I

    .line 54763
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Ljava/lang/String;

    .line 54764
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Lcom/facebook/ads/redexgen/X/8A;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54765
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Jg;->A00()Lcom/facebook/ads/redexgen/X/8A;

    move-result-object v0

    return-object v0
.end method

.method public final A03()I
    .locals 1

    .line 54766
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A00:I

    return v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 54767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tb;->A01:Ljava/lang/String;

    return-object v0
.end method
