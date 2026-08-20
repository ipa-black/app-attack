.class public final Lcom/facebook/ads/redexgen/X/3X;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/EG;,
        Lcom/facebook/ads/redexgen/X/Ym;,
        Lcom/facebook/ads/redexgen/X/3W;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/3W;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 10247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 10248
    new-instance v0, Lcom/facebook/ads/redexgen/X/EG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EG;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3X;->A00:Lcom/facebook/ads/redexgen/X/3W;

    .line 10249
    :goto_0
    return-void

    .line 10250
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 10251
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ym;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ym;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3X;->A00:Lcom/facebook/ads/redexgen/X/3W;

    goto :goto_0

    .line 10252
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/3W;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3W;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3X;->A00:Lcom/facebook/ads/redexgen/X/3W;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 10253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10254
    return-void
.end method

.method public static A00(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .line 10255
    sget-object v0, Lcom/facebook/ads/redexgen/X/3X;->A00:Lcom/facebook/ads/redexgen/X/3W;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/3W;->A00(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static A01(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    .line 10256
    sget-object v0, Lcom/facebook/ads/redexgen/X/3X;->A00:Lcom/facebook/ads/redexgen/X/3W;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/3W;->A01(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 10257
    return-void
.end method
