.class public Lcom/facebook/ads/redexgen/X/2s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Yu;,
        Lcom/facebook/ads/redexgen/X/2r;
    }
.end annotation


# static fields
.field public static final A01:Landroid/view/View$AccessibilityDelegate;

.field public static final A02:Lcom/facebook/ads/redexgen/X/2r;


# instance fields
.field public final A00:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 6689
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 6690
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Yu;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2s;->A02:Lcom/facebook/ads/redexgen/X/2r;

    .line 6691
    :goto_0
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 6692
    return-void

    .line 6693
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2r;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2r;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2s;->A02:Lcom/facebook/ads/redexgen/X/2r;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .line 6694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6695
    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A02:Lcom/facebook/ads/redexgen/X/2r;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/2r;->A00(Lcom/facebook/ads/redexgen/X/2s;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Landroid/view/View$AccessibilityDelegate;

    .line 6696
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 6697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public final A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3f;
    .locals 2

    .line 6698
    sget-object v1, Lcom/facebook/ads/redexgen/X/2s;->A02:Lcom/facebook/ads/redexgen/X/2r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2r;->A01(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    return-object v0
.end method

.method public final A02(Landroid/view/View;I)V
    .locals 1

    .line 6699
    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6700
    return-void
.end method

.method public final A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6701
    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6702
    return-void
.end method

.method public final A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6703
    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6704
    return-void
.end method

.method public final A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 6705
    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 6706
    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 6707
    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6708
    return-void
.end method

.method public A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 2

    .line 6709
    sget-object v1, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 6710
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3d;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 6711
    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6712
    return-void
.end method

.method public A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 6713
    sget-object v1, Lcom/facebook/ads/redexgen/X/2s;->A02:Lcom/facebook/ads/redexgen/X/2r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2r;->A02(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
