.class public final Lcom/facebook/ads/redexgen/X/XM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8G;->A00()Lcom/facebook/ads/redexgen/X/Jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEI(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 66662
    instance-of v0, p2, Lcom/facebook/ads/redexgen/X/7L;

    if-eqz v0, :cond_1

    .line 66663
    check-cast p2, Lcom/facebook/ads/redexgen/X/7L;

    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/7L;->A5d()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    .line 66664
    .local v0, "adContext":Lcom/facebook/ads/redexgen/X/Xc;
    if-eqz v0, :cond_0

    .line 66665
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Xc;->A0I(Ljava/lang/Throwable;)V

    .line 66666
    .end local v0    # "adContext":Lcom/facebook/ads/redexgen/X/Xc;
    .end local v1
    :cond_0
    :goto_0
    return-void

    .line 66667
    :cond_1
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66668
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66669
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Xc;

    if-eqz v0, :cond_0

    .line 66670
    check-cast v1, Lcom/facebook/ads/redexgen/X/Xc;

    .line 66671
    .local v1, "adContext":Lcom/facebook/ads/redexgen/X/Xc;
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/Xc;->A0I(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
