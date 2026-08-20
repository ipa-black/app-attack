.class public final Lcom/facebook/ads/redexgen/X/SV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nd;->A0Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 0

    .line 52332
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAa()V
    .locals 2

    .line 52333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A09(Lcom/facebook/ads/redexgen/X/Nd;)Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00(Lcom/facebook/ads/redexgen/X/Nd;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ob;->ACv(I)V

    .line 52334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A09(Lcom/facebook/ads/redexgen/X/Nd;)Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ob;->AD1()V

    .line 52335
    return-void
.end method

.method public final ACC(F)V
    .locals 2

    .line 52336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    .line 52337
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00(Lcom/facebook/ads/redexgen/X/Nd;)I

    move-result v0

    int-to-float v1, v0

    sub-float/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A0A(Lcom/facebook/ads/redexgen/X/Nd;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    .line 52338
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A01(Lcom/facebook/ads/redexgen/X/Nd;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 52339
    .local v0, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A09(Lcom/facebook/ads/redexgen/X/Nd;)Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Ob;->AFk(F)V

    .line 52340
    return-void
.end method
