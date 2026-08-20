.class public final Lcom/facebook/ads/redexgen/X/2q;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2r;->A00(Lcom/facebook/ads/redexgen/X/2s;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2r;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2s;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2r;Lcom/facebook/ads/redexgen/X/2s;)V
    .locals 0

    .line 6670
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2q;->A00:Lcom/facebook/ads/redexgen/X/2r;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:Lcom/facebook/ads/redexgen/X/2s;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 6671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:Lcom/facebook/ads/redexgen/X/2s;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2s;->A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:Lcom/facebook/ads/redexgen/X/2s;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2s;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6673
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 6674
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:Lcom/facebook/ads/redexgen/X/2s;

    .line 6675
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3d;->A01(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/facebook/ads/redexgen/X/3d;

    move-result-object v0

    .line 6676
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/2s;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3d;)V

    .line 6677
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:Lcom/facebook/ads/redexgen/X/2s;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2s;->A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6679
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 6680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:Lcom/facebook/ads/redexgen/X/2s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2s;->A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 6681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:Lcom/facebook/ads/redexgen/X/2s;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2s;->A02(Landroid/view/View;I)V

    .line 6682
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2q;->A01:Lcom/facebook/ads/redexgen/X/2s;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2s;->A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6684
    return-void
.end method
