.class public final Lcom/facebook/ads/redexgen/X/Rs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rq;->A07(ZI)Lcom/facebook/ads/redexgen/X/Nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Rq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rq;I)V
    .locals 0

    .line 51446
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACv(I)V
    .locals 1

    .line 51447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Rq;->A00(Lcom/facebook/ads/redexgen/X/Rq;I)I

    .line 51448
    return-void
.end method

.method public final ACz(Ljava/lang/String;)V
    .locals 2

    .line 51449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rq;->A01(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A2o(Ljava/lang/String;)V

    .line 51450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rq;->A03(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rq;->A06(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/MC;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 51451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rq;->A0J(Lcom/facebook/ads/redexgen/X/Rq;)V

    .line 51452
    return-void
.end method

.method public final AD1()V
    .locals 3

    .line 51453
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:I

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Rq;->A0M(Lcom/facebook/ads/redexgen/X/Rq;ZI)V

    .line 51454
    return-void
.end method

.method public final AD8(Lcom/facebook/ads/redexgen/X/6y;)V
    .locals 1

    .line 51455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Rq;->A0L(Lcom/facebook/ads/redexgen/X/Rq;Lcom/facebook/ads/redexgen/X/6y;)V

    .line 51456
    return-void
.end method

.method public final AFk(F)V
    .locals 2

    .line 51457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rq;->A05(Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setProgress(F)V

    .line 51458
    return-void
.end method

.method public final AFl()V
    .locals 1

    .line 51459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Rq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rq;->A0K(Lcom/facebook/ads/redexgen/X/Rq;)V

    .line 51460
    return-void
.end method
