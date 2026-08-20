.class public final Lcom/facebook/ads/redexgen/X/Yu;
.super Lcom/facebook/ads/redexgen/X/2r;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegateApi16Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69553
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2r;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/2s;)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 69554
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/2p;-><init>(Lcom/facebook/ads/redexgen/X/Yu;Lcom/facebook/ads/redexgen/X/2s;)V

    return-object v0
.end method

.method public final A01(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3f;
    .locals 2

    .line 69555
    invoke-virtual {p1, p2}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 69556
    .local v0, "provider":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 69557
    new-instance v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3f;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 69558
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A02(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 69559
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
