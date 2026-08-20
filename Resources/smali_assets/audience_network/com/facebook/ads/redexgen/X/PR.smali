.class public abstract Lcom/facebook/ads/redexgen/X/PR;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PL;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/RA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 48644
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48645
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 48646
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48647
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48648
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PR;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48649
    return-void
.end method


# virtual methods
.method public A07()V
    .locals 0

    .line 48650
    return-void
.end method

.method public A08()V
    .locals 0

    .line 48651
    return-void
.end method

.method public final A93(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 0

    .line 48652
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PR;->A00:Lcom/facebook/ads/redexgen/X/RA;

    .line 48653
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->A07()V

    .line 48654
    return-void
.end method

.method public final AFf(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 1

    .line 48655
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PR;->A08()V

    .line 48656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PR;->A00:Lcom/facebook/ads/redexgen/X/RA;

    .line 48657
    return-void
.end method

.method public getVideoView()Lcom/facebook/ads/redexgen/X/RA;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 48658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PR;->A00:Lcom/facebook/ads/redexgen/X/RA;

    return-object v0
.end method
