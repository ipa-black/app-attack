.class public final Lcom/facebook/ads/redexgen/X/6j;
.super Lcom/facebook/ads/redexgen/X/PO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jq;)V
    .locals 0

    .line 16026
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6j;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .locals 2

    .line 16027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6j;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A03(Lcom/facebook/ads/redexgen/X/Jq;)Lcom/facebook/ads/redexgen/X/PX;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/PX;->A04:Lcom/facebook/ads/redexgen/X/PX;

    if-eq v1, v0, :cond_0

    .line 16028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6j;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A01(Lcom/facebook/ads/redexgen/X/Jq;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 16029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6j;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A01(Lcom/facebook/ads/redexgen/X/Jq;)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16030
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 16031
    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6j;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method
