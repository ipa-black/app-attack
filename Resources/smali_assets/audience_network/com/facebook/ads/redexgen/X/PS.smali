.class public final Lcom/facebook/ads/redexgen/X/PS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PI;


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/View;)V
    .locals 0

    .line 48659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48660
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PS;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 48661
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PS;->A00:Landroid/view/View;

    .line 48662
    return-void
.end method


# virtual methods
.method public final A82()D
    .locals 3

    .line 48663
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PS;->A00:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PS;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/QA;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v0

    .line 48664
    .local v0, "result":Lcom/facebook/ads/redexgen/X/QB;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QB;->A00()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
