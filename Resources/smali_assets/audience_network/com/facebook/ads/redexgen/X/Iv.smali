.class public final Lcom/facebook/ads/redexgen/X/Iv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tr;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Tr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tr;)V
    .locals 0

    .line 39356
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Iv;->A00:Lcom/facebook/ads/redexgen/X/Tr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 39357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A00:Lcom/facebook/ads/redexgen/X/Tr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tr;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tp;->A0a:Lcom/facebook/ads/redexgen/X/a7;

    if-eqz v0, :cond_0

    .line 39358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A00:Lcom/facebook/ads/redexgen/X/Tr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tr;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Tp;->A0a:Lcom/facebook/ads/redexgen/X/a7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iv;->A00:Lcom/facebook/ads/redexgen/X/Tr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tr;->A02(Lcom/facebook/ads/redexgen/X/Tr;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->A0P(Ljava/util/Map;)V

    .line 39359
    :cond_0
    return-void
.end method
