.class public final Lcom/facebook/ads/redexgen/X/3C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0a;->A0F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2y;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/0a;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0a;Lcom/facebook/ads/redexgen/X/2y;)V
    .locals 0

    .line 8192
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3C;->A01:Lcom/facebook/ads/redexgen/X/0a;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:Lcom/facebook/ads/redexgen/X/2y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 8193
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3V;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/3V;

    move-result-object v1

    .line 8194
    .local v0, "compatInsets":Lcom/facebook/ads/redexgen/X/3V;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3C;->A00:Lcom/facebook/ads/redexgen/X/2y;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2y;->AAC(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3V;)Lcom/facebook/ads/redexgen/X/3V;

    move-result-object v0

    .line 8195
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3V;->A01(Lcom/facebook/ads/redexgen/X/3V;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
