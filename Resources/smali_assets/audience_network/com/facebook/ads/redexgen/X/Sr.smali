.class public final Lcom/facebook/ads/redexgen/X/Sr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Mm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Mm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Mm;)V
    .locals 0

    .line 53209
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAM(Z)V
    .locals 2

    .line 53210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mm;->A09(Lcom/facebook/ads/redexgen/X/Mm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mm;->A02(Lcom/facebook/ads/redexgen/X/Mm;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mm;->A02(Lcom/facebook/ads/redexgen/X/Mm;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 53212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mm;->A02(Lcom/facebook/ads/redexgen/X/Mm;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 53213
    :cond_0
    return-void

    .line 53214
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public final AB2(Z)V
    .locals 2

    .line 53215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mm;->A09(Lcom/facebook/ads/redexgen/X/Mm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mm;->A03(Lcom/facebook/ads/redexgen/X/Mm;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mm;->A03(Lcom/facebook/ads/redexgen/X/Mm;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 53217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mm;->A03(Lcom/facebook/ads/redexgen/X/Mm;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 53218
    :cond_0
    return-void

    .line 53219
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method
