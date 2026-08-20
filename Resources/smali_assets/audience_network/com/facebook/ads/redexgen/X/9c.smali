.class public final Lcom/facebook/ads/redexgen/X/9c;
.super Lcom/facebook/ads/redexgen/X/PO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9D;)V
    .locals 0

    .line 20886
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 3

    .line 20887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Lcom/facebook/ads/redexgen/X/9D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A07(Lcom/facebook/ads/redexgen/X/9D;)V

    .line 20888
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Lcom/facebook/ads/redexgen/X/9D;

    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 20889
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 20890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9c;->A00:Lcom/facebook/ads/redexgen/X/9D;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9D;->A07:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0N()Lcom/facebook/ads/redexgen/X/O3;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O3;->ACu(I)V

    .line 20891
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 20892
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9c;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method
