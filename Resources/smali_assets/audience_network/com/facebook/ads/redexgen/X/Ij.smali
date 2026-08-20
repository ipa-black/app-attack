.class public final Lcom/facebook/ads/redexgen/X/Ij;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ik;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Ih;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ih;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ii;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Ih;)V
    .locals 0

    .line 39184
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:Lcom/facebook/ads/redexgen/X/Ii;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 39185
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:Lcom/facebook/ads/redexgen/X/Ii;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 39186
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 39187
    return-void
.end method
