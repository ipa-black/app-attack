.class public final Lcom/facebook/ads/redexgen/X/91;
.super Lcom/facebook/ads/redexgen/X/PO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8x;)V
    .locals 0

    .line 19897
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 3

    .line 19898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8x;->A02(Lcom/facebook/ads/redexgen/X/8x;)Lcom/facebook/ads/redexgen/X/Rd;

    move-result-object v0

    .line 19899
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0N()Lcom/facebook/ads/redexgen/X/O3;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/8x;

    .line 19900
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8x;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/O3;->ACu(I)V

    .line 19901
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 19902
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/91;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method
