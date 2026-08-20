.class public final Lcom/facebook/ads/redexgen/X/TC;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lr;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lr;)V
    .locals 0

    .line 54297
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TC;->A00:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 54298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TC;->A00:Lcom/facebook/ads/redexgen/X/Lr;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/5F;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->finish(I)V

    .line 54299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TC;->A00:Lcom/facebook/ads/redexgen/X/Lr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Lr;->A00:Lcom/facebook/ads/redexgen/X/5F;

    .line 54300
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v2

    .line 54301
    const/high16 v1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->overridePendingTransition(II)V

    .line 54302
    return-void
.end method
